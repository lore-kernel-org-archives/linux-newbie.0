From: Ray Olszewski <ray@comarre.com>
Subject: Re: Not able to install Redhat 8.0 - Network Card is 3c515
Date: Sun, 05 Jan 2003 08:41:28 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030105083542.021181d0@celine>
References: <000301c2b4d0$948dbf70$0901a8c0@HAHMPC9>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000301c2b4d0$948dbf70$0901a8c0@HAHMPC9>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

You don't really tell us enough to get a good answer. Assuming you are 
using floppies to install, and you get the error messages when you are 
prompted by the installer to switch disks to a drivers disk (or a set of 
them), then the obvious possibilities are:

1. The disk is bad. Try making another disk, and be sure to use a floppy 
that has no bad sectors.

2. The floppy drive is bad (either the one in this machine or the one in 
the machine you are making the disks on). Try a different drive.

3. The procedure is bad. Since you don't say how you are making the disk 
(not even what OS the system making the disk runs), I can't really offer 
anything specific here, just a suggestion that you review your procedure 
against the instructions.

4. The install is bad. That is, you are changing disks at the wrong time, 
or not putting the disk in far enough, or something of that sort. Again, 
review your procedure.

All of this assumes that you are installing from floppies. If you are not 
... well, that itself indicaes how vague your description is.

If you post a followup, be sure to include a description of what you are 
doing when the errors occur, including the installer prompts that precede them.

At 09:39 AM 1/5/03 -0600, Ronald Hahm wrote:

>I am trying to install RedHat 8.0 on a Pentium 100 Mhz machine.  So far
>I am not having too good of luck.  Here are the specs of the machine.
>
>Zeos Pantera
>Pentium 100
>BusLogic SCSI Card
>NEC SCSI CDROM
>2.5 Maxtor IDE drive
>32 MB RAM
>3c515 Ethernet Card (2)
>
>I am having problems with the installation when it needs a driver disk.
>If I try to do a network installation it needs a driver disk for the
>3c515 ethernet card.
>
>These are the errors messages that I get during the installation.
>
>"Failed to mount driver disk."
>"The floppy disk you inserted is not a valid driver disk for this
>release of Red Hat Linux."
>
>Can someone get me feedback or a workaround as to how I can get Red Hat
>8.0 installed on this machine?




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
