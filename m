From: Marco Bonelli <marco@mebeim.net>
Subject: Confusion about x86 page table PUD entries and pud_xxx helpers
Date: Wed, 22 Jun 2022 21:57:12 +0200 (CEST)
Message-ID: <1760151420.52156.1655927832787@privateemail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mebeim.net; s=default;
        t=1655927832; bh=uROhaB+cltSmJEYrWaHUXsVvWEG1KDJHlexaOPpE4po=;
        h=Date:From:To:Subject:From;
        b=ZR/KLdmLIeYU/iWhmrO4c6bfrzAt1JJ5LX0j+PWqH7g8K1sfXNI9nAPDc3fG59Hpr
         Vygg/0wH9jt9Nx+axWXg1eUGMtyJlqTGTB8fe17066DVJpzyTJ4qQvW+7bH9cLYuFK
         SUQ+rVVRWtW2KZQTNyf0WmeKyQTtJDlrI3h/C2ap2ViZM7ABowokM7W3771NXWukbf
         hO+DcTRd1MzN2n1gnkGziLh6fWA03LyUgrfLlkU+RCNwGRNGbmKWsWzZ9yPA7A4MiO
         RzCuzKY3D73gQWw3f2R+Zhd4tf+BpEJ3Im3RcNd4eVzP9LsUOqKNrAg1ZIPFv28/pI
         FiJuNLR1M43Aw==
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

I'm working on a standard x86-64 system with the kernel v5.10 configured with
THP enabled (also CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=y) and using 4-level
paging. My system supports both 2M and 1G huge pages.

I know that pmd_present() and pte_present() check for
_PAGE_PRESENT|_PAGE_PROTNONE (pmd_present() also checks for _PAGE_PSE), because
pages (4K or 2M) without permissions are marked as not present in the page table
while still having _PAGE_PROTNONE set. However pud_present() seems to not care
about this and only checks _PAGE_PRESENT.

This seemed weird to me, so I wrote a small program that maps an anonymous page
through mmap with MAP_HUGETLB|MAP_HUGETLB_1GB, writes to the entire mapping,
then mprotects it to 0 (no permissions) and pauses at each step to allow for
inspection.

I have a kernel module [1] which walks the page table given a PID and virtual
address. Using it to dump the pud_val() of the pud_t I see the following:

	*page is mapped RW*
	*page is written to*
	*insert module to check page table*
	
	pud_val(pud) = 80000006400008e7 (PRESENT USER ACCESSED PSE DIRTY SOFT_DIRTY NX)

	*page is mprotect'd to 0*
	*insert module to check page table*

	pud_val(pud) = 000ffff9bffff9e0 (ACCESSED PSE PAT DIRTY PROTNONE SOFT_DIRTY)

Right off the bat, that 000ffff9bffff9e0 seems like a weird value to me: there
are a lot of bits set, amd it seems like 000064 has been inverted into ffff9b
(kind of, the LSB does not match).

As I suspected, after the page is mprotect'd to 0 from userspace,
pud_present(pud) returns false. However /proc/[pid]/pagemap still reports the
page as present (bit 63 set), and the reported page frame number matches the one
extracted from the page table by my module (which is 0x640000, before the
mprotect changes the pud to that weird value). If in my module I re-define
pud_present(pud) to check for _PAGE_PRESENT|_PAGE_PROTNONE, now I get a true
result.

Furthermore (still after mmap + write + mprotect 0), pud_huge() returns true (I
suppose pud_huge() should identify a MAP_HUGETLB 1G page so it makes sense), but
pud_large() returns false.

So my questions are:

1. What's the deal with the weird PUD value after mprotect 0?
2. Why doesn't pud_present() work the same way as pte_present() or pmd_present()
   do?
3. What's the correct way to check if a pud_t is present or not, including when
   it is PROTNONE (i.e. corresponds to a 1G huge page with no protections)?
4. What's the correct way to check if a pud_t is a leaf i.e. it corresponds to a
   huge 1G page (transparent or not)?
5. Why does pud_large() return false? Isn't it supposed to be more "generic"
   than pud_huge() returning true for 1G transparent huge pages too?

I must be missing or misunderstanding something. Is anyone able to clarify the
above? Thanks.

[1] https://github.com/mebeim/linux-kernel-experiments/blob/2019ec856befc9a070d8422921e96aa09de9bff6/modules/page_table_walk.c

--
Marco Bonelli
