From: cr <cr@orcon.net.nz>
Subject: Re: How to mount CD-ROM?
Date: Thu, 28 Nov 2002 01:01:51 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021128071039.614F410924D@smtp.orcon.net.nz>
References: <20021125.215101.134684296.0.lawson_whitney@juno.com>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021125.215101.134684296.0.lawson_whitney@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: lawson_whitney@juno.com
Cc: ray@comarre.com, linux-newbie@vger.kernel.org

There seem to be four copies of this message in my inbox.  Odd.

On Saturday 23 November 2002 14:18, lawson_whitney@juno.com wrote:
> On Mon, 18 Nov 2002, cr wrote:

> > Doing /sbin/modprobe sr_mod brings a string of 'unresolved symbol'
> > messages and  "insmod sr_mod failed", and  lsmod indicates no change.
> >
> > Trying to run X-CD-Roast gives an error message 'Failed to scan SCSI-bus'
> > *but* lsmod indicates it's loaded a couple of modules:
> >
> > Module                  Size  Used by
> > sg                     27488   0  (autoclean) (unused)
> > scsi_mod               92208   1  (autoclean) [sg]
> > esssolo1               25376   0  (autoclean)
> > ..
> > ..
>
> Hmmm, has root never run /sbin/depmod for this kernel to set up the
> modules.dep file?  Try having it do so and see if modprobe works better.

Apparently, root never has done that (root being me, with a plentiful supply 
of ignorance :)     I'm surprised it wasn't covered in the RedHat 
installation procedure.   

So root (me) ran it, and then tried 

modprobe scsi_mod
mount /mnt/cdrom

and it worked!

> > Then (but not before), /sbin/insmod ide-scsi works, after which
> > X-CD-Roast works.
> >
> > However, trying to mount /mnt/cdrom still brings up a 'wrong fs type'
> > message.
>
> Well, what is in the /etc/fstab line that mentions /mnt/cdrom?
>

Just for the record - 

/dev/cdrom              /mnt/cdrom              iso9660 noauto,owner,kudzu,ro 
0 0

However, now X-CD-roast has stopped working.   Even if I go and do a 
/sbin/insmod ide-scsi,  which worked previously, it now still tells me 
"Failed to scan the SCSI-bus"

Am I asking too much to want to read CD-ROM's *and* use X-CD-Roast on the 
same drive?   (Not simultaneously!)

I'll check the CD-writing HOWTO as X-CD-Roast's error message suggests and 
see if it gives any enlightenment.   I suspect I need to carefully figure out 
just what I've got loaded.

Regards

Chris

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
