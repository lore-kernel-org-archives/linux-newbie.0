From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: kernel 2.6 for Xscale IXP42x platform
Date: Thu, 28 Jun 2007 10:54:02 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B053E3AB7@GDCMX01.igglobal.com>
References: <11322755.post@talk.nabble.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <11322755.post@talk.nabble.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Queenie <queenie245@gmail.com>, linux-newbie@vger.kernel.org


Hi,

|
|I would like to load kernel 2.6 on my customised Target board 
|having IXP422.
|I have u-boot 1.1.6 bootloader. 
|
|For this, I would like to know which kernel version can i 
|decide on? How can
|i determine which version of 2.6 to go in for? Also do i need 
|any patch?
|which ones ? and how to add a patch? can someone guide me through? 

These are the most trickiest quetions :-) You need support for your processor and board in the kernel (if not already existing), for which either patches might already be floating (quite likely) or you may have to create your own.

|
|I have an Image which was done earlier with a different kernel 
|used for the
|same board with redboot bootloader? Can i try using the same 
|or will it be
|checking somewhere for the redboot bootloader?

I think the same image should work - and it depends on how similar are Redboot and U-boot in passing the control to the kernel. Kernel will not rely on on the boot loader being Red Boot or U-Boot or any other. But yes, if you want to try the same image then U-BOOT should be able to pass information / control to the kernel in the same way as Redboot was doing. This includes passing of command line args, environment variables, loading of ramdisk, passing size & address of ramdisk etc.

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
