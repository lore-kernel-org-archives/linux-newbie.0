From: Michal Nazarewicz <mina86@tlen.pl>
Subject: remap_pfn_range() and mapping RAM
Date: Sun, 10 May 2009 18:46:16 +0200
Message-ID: <87ab5koqhz.fsf@erwin.mina86.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha1; protocol="application/pgp-signature"
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:from:to:cc:subject
         :x-url:x-pgp-fp:x-pgp:date:message-id:user-agent:mime-version
         :content-type;
        bh=j2q2wdOmbGHRIJT6HWzjfFFhk35iQMIb9FJqNv843SI=;
        b=agoYV2dOXEXZz2l5s1nIlrNl0KdSRfWSAEchB8qRsg2wrVCGDud8kKb7JjVSzBlir1
         y6a0tFAaeb/Yf1aGR2te9fAkLsSHNE+U5xqcJEqHN0pvqAKbil9q2hM5pXAwL8uZpIJT
         UJoc77mMV/j78/SsHIOjN0Sz61qaCUDYpgOwA=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org
Cc: Suresh Siddha <suresh.b.siddha@intel.com>

--=-=-=
Content-Transfer-Encoding: quoted-printable

Hello everyone,

While developing a method for mapping RAM memory into user space
I stumbled across Suresh Siddha's commit that "broke" my code:

  commit be03d9e8022030c16abf534e33e185bfc3d40eef
  x86, pat: fix warn_on_once() while mapping 0-1MB range with /dev/mem

I believe there were important reasons for the changes but how do I map
user RAM memory into user space?  Up to this point I've used something
along the lines of (error checking removed):

#v+
static int file_mmap(struct file *file, struct vm_area_struct *vma)
{
	const size_t start  =3D /* physical address of memory allocated
	                         using alloc_bootmem_low_pages() */;

	return remap_pfn_range(vma, vma->vm_start,
	                       (start >> PAGE_SHIFT) + vma->vm_pgoff
	                       vma->vm_end - vma->vm_start,
	                       vma->vm_page_prot);
}
#v-

Reverting the be03... commit makes it work again but I guess it's not
a good way to solve this problem.

Could anyone point me to proper function which may be used like
remap_pfn_range() but work on RAM addresses?  It is important, that the
function will work in similar fashion, ie. create raw PFN mappings
without associated struct page.

=2D-=20
Best regards,                                         _     _
 .o. | Liege of Serenly Enlightened Majesty of      o' \,=3D./ `o
 ..o | Computer Science,  Michal "mina86" Nazarewicz   (o o)
 ooo +--<mina86*tlen.pl>--<jid:mina86*jabber.org>--ooO--(_)--Ooo--

--=-=-=
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.11 (GNU/Linux)

iEYEARECAAYFAkoHBOgACgkQUyzLALfG3x7ROACgstx1QAzPLW/V1abFkTZ0WwY6
S9UAn3ACKQ1170mphNT2k7H6vl1MVgbV
=J5PN
-----END PGP SIGNATURE-----
--=-=-=--
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
