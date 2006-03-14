From: chuck gelm <chuck@gelm.net>
Subject: Re: Ntfs compability
Date: Tue, 14 Mar 2006 12:31:26 -0500
Message-ID: <4416FDEE.9000107@gelm.net>
References: <1142332639.44169cdfe9602@webmail2.hut.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1142332639.44169cdfe9602@webmail2.hut.fi>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: ttpiirai@cc.hut.fi
Cc: linux-newbie@vger.kernel.org

Tommi Tapani Piirainen wrote:

>Hi,
>
>I have slackware 10.1. I rewrote my ntfs partition with cfdisk and now I am
>unable to boot the partition (with windows xp). Can the problem be that i wrote
>the table with cfdisk or could it be some thing else. In additional there is two
>different ntfs partition is cfdisk both named same way. I used the first one
>can't remember the number (or was it 86, don't remember).
>
>The reason for doing this was to include slackware to same disk. First I deleted
>ntfs partition and made it smaller. Motivation for doing this was mbr chrash due
>use of "System Mechanic 6" or at least I think so. I intalled lilo to mbr and it
>fixed the mbr problem. Booting problems can also have some thing to do with
>System Mechanic 6 altering my dll-files or some thing else.
>
>The ntfs partition is first partition in the disk and I use lilo-bootloader. Can
>I fix the partition with ntfstools to be bootable?
>  
>
Hi, Tommi Tapani Piirainen:

 I bought a laptop with Windows XP and I repartitioned the hard drive
with fdisk but I did not create any NTFS partitions.  I used the
recovery CDROM and restored the o/s to /dev/hda1.  Then I installed
Slackware 10.0.0 to the remaining hard drive portion.

/dev/hda1   NTFS   Windows XP home
/dev/hda2   swap
/dev/hda3   /            Slackware

"I rewrote my ntfs partition with cfdisk and now I am

unable to boot the partition (with windows xp)."

 Yes, I would expect so. I expect that you will need to reinstall Windows.

I have no knowledge of "System Mechanic 6".  :-|

HTH, Chuck



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
