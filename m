From: chuck gelm net <chuck@gelm.net>
Subject: Re: Moving Hard Drive
Date: Fri, 16 Jan 2004 18:44:04 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40087744.A1B0B8E4@gelm.net>
References: <20040116105630.D896B1C900@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Hi, Peter:

 You didn't mention that you had system files on /dev/hdc.
If it has been simply installed, you should be able to
copy all of your system files from your root system to
this new file system.  Then use fdisk to make it bootable.

Perhaps

mount /dev/hdc /mnt
cp -x / /mnt
umount /mnt

would work?

 I am assuming that you could then simply swap IDE connectors
on the mobo.

HTH, Chuck

Peter wrote:
> 
> Hi,
> 
> I got myself a new larger hard drive which is presently a secondary master
> hdc. On it I have RH9 and SW9.1 the latter doing the booting with lilo.
> 
> I want to make now this drive the master drive by which I assume it will
> become hda.
> 
> Is it correct then that before doing the switch I will have to change in
> /etc/fstab and lilo.conf all what is labeled hdc to hda? Boot initially from a
> floppy into SW run lilo and I should be set with the new drive as master.
> 
> Thanks & regards
> --
> Peter
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
