From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Slackware 8.1.01 Install????
Date: Wed, 11 Jun 2003 11:43:37 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030611114337.A180@lnx2.w8mch.ampr.org>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306052108.36121.pa3gcu@zeelandnet.nl> <20030607104727.A355@lnx2.w8mch.ampr.org> <200306081036.08989.pa3gcu@zeelandnet.nl> <3EE45A69.9E6662C5@gelm.net> <3EE614A6.1CBE57ED@actrix.co.nz> <3EE5AC60.201B082D@gelm.net> <20030610095434.A166@lnx2.w8mch.ampr.org> <3EE6DFD8.AB192E4@actrix.co.nz>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3EE6DFD8.AB192E4@actrix.co.nz>; from qwms-avib@dea.spamcon.org on Wed, Jun 11, 2003 at 07:52:56AM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 06-11, qwms-avib@dea.spamcon.org wrote:
> Hal MacArgle wrote:
> > 
> > booting from a DRDos702 floppy the BIOS sees the
> > BusLogic controller OK but doesn't, automatically, 
> > assign a drive letter to either CD.
> 
> A DOS bootdisk can be downloaded from www.bootdisk.com
> that handles the following CDrom drives:
> ---------------------------
> Adaptec UW (SCSI) CD or DVD
> Adaptec U2 (LVD) CD or DVD
> IDE/Atapi CD or DVD 
> ---------------------------
> It automatically assigns a drive letter (R:) to the CDrom.
> 
	AOK!, except they may not have a BusLogic version, but that's
very good to know for the future, and I'll make sure I use an ATAPI
drive next time..


> > The IDE HD on this machine does NOT have a Dos partition, 
> 
> No DOS partition is needed.  The system is booted from the
> DOS bootdisk, which launches the installation routine from
> the CDrom.

	In my case I had to fetch the _genuine_ BusLogic drivers on
the INet that assigned E: and F: to the two CD's, so I was able to
use the routine you sent Chuck loading scsi.s and initrd.img.. I'm
home free now and have installed 8.1.01, from a combination of made
up floppy and the ZIP drive, which I didn't really need.. 


> > so I'm shot down with Stevens' instructions as the two 
> > images wont fit on a floppy.
> 
> The two images do not go on the the floppy.  They are read
> (by loadlin.exe) directly from the CDrom.  

	Another mystery occurred here when the /slackware directory
on the CD became "slack000", when I looked at it, but setup found it
anyway??? I'm going bonkers but it's done bottom line...

	At least I'm learning much more than if it worked the first
time out..

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
