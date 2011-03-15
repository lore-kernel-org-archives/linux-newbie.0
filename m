From: Aneesh Bhasin <contact.aneesh@gmail.com>
Subject: smap output - unnamed entries and heap
Date: Tue, 15 Mar 2011 14:31:50 +0530
Message-ID: <AANLkTik3N5j74eWastminNZLevPqoSCEiVCrX1vP66_k@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=K+5V3hLIz63hnkCEf4lswCJpa0r2Op29ekM9M5C6bGE=;
        b=luBc/uSqYtzlWezMKwA4XFVvEjIm7eVxtH4xc/f24CafDjd+wq33ClypOi4GH7V/kg
         UvmAdzy8G4sBZHHEt82tWgjw485T2hFSYgvuEWJBhwxtgqMQ48Kcr7VKJsdt1YTJJ0MT
         WlyHghvLgwoXcRg99VX04SPN3EzJ3T8Yd+TW4=
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>

Hi All,

My apologies if this is not the right place for these type of
questions - I do not know of a better place to ask this.

I am trying to take out some memory figures from the /proc/<pid>/smaps
interface (linux v2.6.35). However, I could not find what do the
entries that have no name associated to them (no library path or
binary path with these entries) mean. So, I wrote a test C program
that allocates 100MB of memory (using malloc) and then writes to it in
chunks of 10MB. I could see that the 'Size' and 'RSS' of one of the
unnamed entries was increasing in accordance with the code, but there
were several other such unnamed sections too - is there a way to know
what and where do they come from.

Also, I could see that for some process the smap interface was showing
a '[heap]' entry but not for all - e.g. for my above test case, there
was no '[heap]' entry, although I assumed the malloc should have
reflected in the [heap]. Can someone please tell me (or point me in
the right direction) why is heap entry there only for some processes ?

Thanks in advance for any help..

Regards,
Aneesh Bhasin
