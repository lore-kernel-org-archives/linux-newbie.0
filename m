From: whitnl73@juno.com
Subject: Re: How to mount CD-ROM?
Date: Fri, 22 Nov 2002 20:18:19 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021125.213454.134684296.0.whitnl73@juno.com>
References: <20021118092133.AFBB17FC17@smtp.orcon.net.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021118092133.AFBB17FC17@smtp.orcon.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: cr@orcon.net.nz
Cc: ray@comarre.com, linux-newbie@vger.kernel.org

On Mon, 18 Nov 2002, cr wrote:

> Sorry for the long delay.   Real Life (TM) interfered with my investigations,
> and also a point you mentioned brought up a possible complication which I'll
> mention at the end...
>
> Doing /sbin/modprobe sr_mod brings a string of 'unresolved symbol' messages
> and  "insmod sr_mod failed", and  lsmod indicates no change.
>
> Trying to run X-CD-Roast gives an error message 'Failed to scan SCSI-bus'
> *but* lsmod indicates it's loaded a couple of modules:
>
> Module                  Size  Used by
> sg                     27488   0  (autoclean) (unused)
> scsi_mod               92208   1  (autoclean) [sg]
> esssolo1               25376   0  (autoclean)
> ..
> ..
Hmmm, has root never run /sbin/depmod for this kernel to set up the
modules.dep file?  Try having it do so and see if modprobe works better.

>
> Then (but not before), /sbin/insmod ide-scsi works, after which X-CD-Roast
> works.
>
> However, trying to mount /mnt/cdrom still brings up a 'wrong fs type'
> message.
>
Well, what is in the /etc/fstab line that mentions /mnt/cdrom?

>
> Chris
> -

--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
