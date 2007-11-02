From: "Rajeh kuri" <rajeshkuri@gmail.com>
Subject: Omitting heap section from Core dump file
Date: Fri, 2 Nov 2007 17:59:43 +0530
Message-ID: <c26b6f110711020529q6530d3e9t3d14d3ffa1de2340@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=E3LL5Qzy9hQZo+xqAGkHswE5TrubUQRiib6HH5G6nAw=;
        b=XCR8hQQcZ4t+BYXlYuSesRWE7QyjssrhlVV2ITtRp/baz8BtRasN49k+bzgg/zVx582RTE9pWZ2Qalwyi4YF3akScGPHEerwXTn7USA3u9jbGIfWthOxdOHkAtJe7vd6rWUZCTLFzs7s0NvHerWiapcDPUBqg/6kpDK1EK6SlXE=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
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
