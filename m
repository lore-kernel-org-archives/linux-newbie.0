From: chuck gelm <chuck@gelm.net>
Subject: Re: Checking File System
Date: Sun, 05 Dec 2004 22:43:34 -0500
Message-ID: <41B3D566.40909@gelm.net>
References: <200412052124.31027.sotl155360@earthlink.net>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200412052124.31027.sotl155360@earthlink.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: SOTL <sotl155360@earthlink.net>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

SOTL wrote:
> Hi All
> 
> I have an old system that I am trying to boot that will not boot.
> 
> As originally setup there were two HD in the system.
> One with data and one with the operating system.
> 
> The HD with data has long since been removed and current location is unknown.
> 
> The system boots to Finding Modular dependencies: OK
> Checking file systems
> Couldn't find matching file system: Label=/mnt/Snoopie
> This was the name of the old second HD.
> 
> I have removed LABEL=/mnt/Snoopie from stab.
> I know there is at least one other place I need to remove this LABEL from.
> 
> Does anyone have any suggestions where that may be.
> 
> Thanks
> Frank

Please tell us what distribution was originally used.
Please tell us what boot manager is/was used.
Please tell me what 'stab' is (fstab?).
If 'fstab', send us 'fstab' as attachment or inline.
If you can boot from emergency/recovery/install floppy or CDROM,
  send us the output of 'fdisk -l /dev/TheDriveInQuestion'.

If you have an install distribution CDROM,
  why not reinstall without formatting?

HTH, Chuck




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
