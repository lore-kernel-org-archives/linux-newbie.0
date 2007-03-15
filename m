From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: How does boot loader tell the kernel, the location of initrd?
Date: Thu, 15 Mar 2007 12:28:19 +0530
Message-ID: <b115cb5f0703142358j6a422262qe1ad1c6cfcfcdd22@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=pNPvlM0M02jP2TyESKjHLdWEVlovHfpqQIlYUUJwq2NyHUDEeXo9FVa+Y7lRG8aiIRlLEqzhxXHf3ddVdyly0s63JvNd9RURgVt/ytO2l5s8A7bLFyPt+j2pMT/trZIkjkTiS1aYlnoUJLT/06p/34bmoYtldWq5JzzNl8TARqY=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>

Hi,

I am experimenting with initrd and my initrd fails to mount. My
bootloader (U-BOOT) coorectly loads the initrd into RAM as I can see.

I am wondering how does the kernel get to know the address at which
the initrd is loaded by boot loader? How does the boot loader
communicate this to the kernel?

Any code references will be appreciated.

Thanks,

Rajat

PS: I am not using initramfs (emebedding root filesystem into kernel image).
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
