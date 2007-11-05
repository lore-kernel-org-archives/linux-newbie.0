From: "Rajeh kuri" <rajeshkuri@gmail.com>
Subject: Fwd: Omitting heap section from Core dump file
Date: Mon, 5 Nov 2007 18:34:47 +0530
Message-ID: <c26b6f110711050504m26132de9n82f5a46d1b0aedf2@mail.gmail.com>
References: <c26b6f110711020529q6530d3e9t3d14d3ffa1de2340@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=s751k8nQyGSIVPcU87LLDs1Hs4KT5lmhBKHb5NXiWyg=;
        b=hEl1XlwVhlSFx+zznRmTX139yPROoqv255RoiYLafpgoK2TVVr60+heHgOi7taoj//gBr0Kry9KdPVZSngqJfGTmDKxF8fumkOj2LsTpV84x2mCuBIxOFJqAlOYMdmWzmz1cdFZMoATOpTRdNinOuYnX18Mnnl7K+T6qnSZWpuI=
In-Reply-To: <c26b6f110711020529q6530d3e9t3d14d3ffa1de2340@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

---------- Forwarded message ----------
From: Rajeh kuri <rajeshkuri@gmail.com>
Date: Nov 2, 2007 5:59 PM
Subject: Omitting heap section from Core dump file
To: linux-newbie@vger.kernel.org


Hi All,

I have modified the file "Linux-src/fs/binfmt_elf.c" having function
'maydump ()' to omit/discard all anonymous segments while taking core
dump of a process. Below is my changes in the function 'maydump ()':

    if ((vma->vm_file == NULL) && (vma->vm_flags & 0x0100073))
    {
        if (vma->vm_start > 0x7fff00000000) /* will dump stack segment */
            return 1;
        printk(KERN_ERR "\nVMA Not Dumped: VMA Start 0x%lx SIZE %u",
vma->vm_start, (vma->vm_end - vma->vm_start));
        return 0;
    }

I'm testing the above changes in x86_64 architecture having 8 CPU's.

The above changes will work fine for core files which will be
generated when the test program receives SIGSEGV while executing the
instructions from its own code segment. (The instruction executed is
not part of any library)

And when the program receives SIGSEGV, during execution of library
routine then the generated core file will not properly list the stack
frames, when i issue 'bt' command on the core file. And also the
symbols are missing from the out put of 'bt' command.

Does the library call set up a separate stack area for their execution?
Any thoughts or suggestions are highly appreciated.

--Regards,
rajesh
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
