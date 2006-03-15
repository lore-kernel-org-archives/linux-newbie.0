From: cRaig <treehead@gmail.com>
Subject: Re: Ntfs compability
Date: Tue, 14 Mar 2006 21:10:33 -0500
Message-ID: <18846aef0603141810l5f3745d0o3805f9db367c26d4@mail.gmail.com>
References: <1142332639.44169cdfe9602@webmail2.hut.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1142332639.44169cdfe9602@webmail2.hut.fi>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ttpiirai@cc.hut.fi
Cc: linux-newbie@vger.kernel.org

> /dev/hda1   *           1        9605    77152131   86  NTFS volume set

;your problem may be the NTFS volume should be type 7 (HPFS/NTFS)
instead of 86 or 87, which i believe is for dynamic disks (partitions
spanning multiple disks).

;another issue may be that your /dev/hda1 is toggled as bootable, i
don't know for certain.  i thought that the bootable flag was just for
linux, so is it possible that you toggled it on when you installed
slackware, and linux has this as your /boot in /etc/fstab?  or did you
turn that flag on in cfdisk yourself?

;cRaig

On 3/14/06, Tommi Tapani Piirainen <tommi.piirainen@hut.fi> wrote:
> Hi,
>
> I have slackware 10.1. I rewrote my ntfs partition with cfdisk and now I am
> unable to boot the partition (with windows xp). Can the problem be that i wrote
> the table with cfdisk or could it be some thing else. In additional there is two
> different ntfs partition is cfdisk both named same way. I used the first one
> can't remember the number (or was it 86, don't remember).
>
> The reason for doing this was to include slackware to same disk. First I deleted
> ntfs partition and made it smaller. Motivation for doing this was mbr chrash due
> use of "System Mechanic 6" or at least I think so. I intalled lilo to mbr and it
> fixed the mbr problem. Booting problems can also have some thing to do with
> System Mechanic 6 altering my dll-files or some thing else.
>
> The ntfs partition is first partition in the disk and I use lilo-bootloader. Can
> I fix the partition with ntfstools to be bootable?
>
> --
> Tommi
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
