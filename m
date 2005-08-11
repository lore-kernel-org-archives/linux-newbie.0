From: chuck gelm <chuck@gelm.net>
Subject: Re: HOW to FAT partition the device?
Date: Thu, 11 Aug 2005 18:14:44 -0400
Message-ID: <42FBCDD4.60700@gelm.net>
References: <C349E772C72290419567CFD84C26E0170A00B8@mail.esn.co.in>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C349E772C72290419567CFD84C26E0170A00B8@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

Mukund JB. wrote:
> Dear all,
> I have silly doubt regarding creating FAT partition on my SD Card.
> 
> Can I do it with fdisk? I tried it in the man-pages to find how to do
> it?
> I found nothing related to FAT.
> When I tried to create it with 'n' option, by default it is creating the
> ext2 fs & NOT FAT fs.
> 
> I think we can not use command like mkdosfs & mkfs to create a partition
> of type FAT. 
> Instead they are used to create an fs on the existing partition. 
> Please correct if I am wrong somewhere?
> 
> Can someone give me the instruction to create FAT partion on my disk?
> 
> Regards,
> Mukund Jampala

Dear Mukund JB.:

Short answer 'man fdisk' and/or 'man cfdisk'.

  I see that 'cfdisk' is preferred over fdisk and especially over 'sfdisk'.
The command 't' is referenced in 'man cfdisk'.
The command 't' is referenced in 'fdisk /dev/tfa0' by pressing 'm' as
  mentioned in the prompt.  'l' lists the ID file types.

  My CF media for my cameras; HP C200 and Vivitar DSC350:

'fdisk' reports them as ID type 6 'FAT16' and, when mounted,
'mount /dev/sda1 /mnt/hd'
'df -T /dev/sda1' displays them as type 'vfat'

  After saving the data on your SD media, you might try to partition them
as FAT16 using 'cfdisk' or 'fdisk' with one partition of ID type 6 (FAT16).
Let the camera format them and then...

mount /dev/tfa0p1 /mnt/mount-point or
mount -t vfat /devtfa0p1 /mnt/mount-point

  HTH, Chuck



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
