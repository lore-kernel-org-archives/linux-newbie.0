From: Ray Olszewski <ray@comarre.com>
Subject: Re: SCSI Emulation w/ DMA
Date: Mon, 19 Aug 2002 15:48:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020819153832.020ec500@celine>
References: <3D6169DC.1020700@tulane.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D6169DC.1020700@tulane.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: David Yeu <dyeu@tulane.edu>, linux-newbie@vger.kernel.org

Even though you have scsi emulation enabled, there is an ide driver hidden 
in the demimonde of your system that the scsi emulator communicates 
through. It is the ide driver, the part that actually talks to the 
hardware, that either has DMA on or off.

Almost surely, the message you are seeing means that DMA is off. To check 
it, run "hdparm /dev/hdc" and see that the resulting report says about DMA. 
If you want to turn it on, run (as root) "hdparm -d 1 /dev/hdc". If you 
always want it on, add that line to one of the system's  init scripts 
(probably whatever corresponds to rclocal on your system).

Now I am not at all sure about this next part ... but I doubt that the DMA 
setting is what is making your CD burns slow. How are you burning (what is 
the actual command-line string you send)? What speed is your drive? How 
long is it taking to burn (your "a little slow" could be someone else's 
"fast")? What are you burning (iso images? copies of music CDs? VCDs?)

At 04:57 PM 8/19/02 -0500, David Yeu wrote:
>Hi everyone,
>
>I have SCSI emulation on my CDR drive in order to burn and the like,
>but I was confused by the following entries in /var/log/messages...
>
>----------------------------------------------------------------------
>Aug  5 12:18:48 localhost kernel: SCSI subsystem driver Revision: 1.00
>Aug  5 12:18:19 localhost rc.sysinit: Setting clock  (localtime): Mon
>Aug  5 12:18:13 UTC 2002 succeeded
>Aug  5 12:18:49 localhost kernel: scsi0 : SCSI host adapter emulation
>for IDE ATAPI devices
>Aug  5 12:18:19 localhost rc.sysinit: Loading default keymap succeeded
>Aug  5 12:18:49 localhost kernel:   Vendor: LITE-ON   Model: LTR-24102B
>         Rev: 5S0J
>Aug  5 12:18:19 localhost rc.sysinit: Setting default font (lat0-sun16):
>   succeeded
>Aug  5 12:18:49 localhost kernel:   Type:   CD-ROM        ANSI SCSI
>revision: 02
>Aug  5 12:18:19 localhost rc.sysinit: Activating swap partitions:  succeeded
>Aug  5 12:18:49 localhost kernel: hdc: DMA disabled
>-----------------------------------------------------------------------
>
>The last line says that DMA is disabled, but it refers to hdc.  Since
>my /dev/cdrom is linked to /dev/scd0, and /dev/cdrecorder is linked
>to /dev/sg0, does that mean DMA is working anyhow?  How can I tell?
>
>(I was prompted into peeking around after burning seemed a little
>slow..)




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
