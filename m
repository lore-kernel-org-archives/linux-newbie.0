From: Ray Olszewski <ray@comarre.com>
Subject: Re: ?Copying 'difficult' CD-ROM discs
Date: Sat, 17 Aug 2002 10:57:40 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020817104733.020ef510@celine>
References: <200208100843.50199.natarajan_k@hotpop.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D5E8669.41B0CB38@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Chuck Gelm <nc8q@gelm.net>, Linux Newbie <linux-newbie@vger.kernel.org>

At 01:22 PM 8/17/02 -0400, Chuck Gelm wrote:
>Howdy, Y'all:
>
>  I have a commercial CD-ROM disc that resists being copied.
>(using Eazy-CD-Creator v4.02 & Windows98se & CD-ROM R/W drive)
>
>  It is used very frequently and I'd like to create a backup
>and store the original in a safe place.
>
>  I have a linux 'file server' system with a CD-ROM read-only drive.
>
>Can I create an '.iso' image of the original CD-ROM disc
>using linux utilities/applications that can be 'burned'
>with my Windows CD-ROM-writer software?
>If 'yes', how or where to go for more information? ;-)

Resistance is futile? Prepare to be assimilated?

Ok, seriously. Without knowing what makes this particular CD "difficult" in 
a Windows setting, it is difficult to say for sure.

Can you mount the CD under Linux? (This will check if it is a standard iso CD.)

With the CD in the drive but NOT mounted, does this command work:

         dd if=/dev/cdrom of=./cdrom_image.iso

(you may need to replace /dev/cdrom with something else, if your system 
does not use that symlink)?

If you can create an iso image with the suggested command, then you can 
burn it onto a CD using Linux tools like cdrecord. Though I've used Windows 
CD burning software (I think the "Eazy-CD-Creator" package you refer to) at 
client sites, I'm not sufficiently familiar with it to know what sorts of 
source files it can burn from.


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
