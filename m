From: Ray Olszewski <ray@comarre.com>
Subject: Re: CD-ROM Hell
Date: Mon, 30 Sep 2002 22:13:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020930220638.02c84c60@celine>
References: <1033443333.7225.50.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1033443333.7225.50.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Bryan Simmons <bsimmo1@gl.umbc.edu>, linux-newbie <linux-newbie@vger.kernel.org>

At 11:35 PM 9/30/02 -0400, Bryan Simmons wrote:
>I have two terrible CD-ROMs and a lot of shady CDs.  Sometimes I'll put
>one in the drive and Linux will fail to read it properly.  Sometimes
>this means I just can't read the disk.  Other times it means that the
>damn drive light stays on and the disk stays mounted and "busy" until I
>reboot the frickin PC.
>
>Does anyone know how to remedy such a situation without a reboot?

Not until you explain what you are doing a bit more clearly.

The mere act of putting a CD in a drive shouldn't cause Linux to try to 
read the CD. You normally have to execute a "mount" command for the device 
(or mount point, if it is in /etc/fstab). You should be able to kill the 
process running the mount command to halt attempts to access the CD. If 
that option isn't available to you, you'll need to tell us how you have the 
system set up to mount CDs.

BTW, I assume we are talking about iso9660 CDs here, not music CDs. If I'm 
mistaken in that assumption, please tell us what app you are using to rip 
the music CD (and you should probably tell us the basics of which Linux 
distro and version you are using). Here too, you should be able to get free 
by killing the process, whatever it might be.


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
