From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: HOW to FAT partition the device?
Date: Thu, 11 Aug 2005 20:09:34 +0530
Message-ID: <C349E772C72290419567CFD84C26E0170A00B8@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Dear all,
I have silly doubt regarding creating FAT partition on my SD Card.

Can I do it with fdisk? I tried it in the man-pages to find how to do
it?
I found nothing related to FAT.
When I tried to create it with 'n' option, by default it is creating the
ext2 fs & NOT FAT fs.

I think we can not use command like mkdosfs & mkfs to create a partition
of type FAT. 
Instead they are used to create an fs on the existing partition. 
Please correct if I am wrong somewhere?

Can someone give me the instruction to create FAT partion on my disk?

Regards,
Mukund Jampala


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
