From: James Miller <jamtat@mailandnews.com>
Subject: Re: CD-ROM Hell
Date: Mon, 30 Sep 2002 23:20:11 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0209302316340.3705-100000@localhost.localdomain>
References: <1033443333.7225.50.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1033443333.7225.50.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bryan Simmons <bsimmo1@gl.umbc.edu>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On 30 Sep 2002, Bryan Simmons wrote:

> I have two terrible CD-ROMs and a lot of shady CDs.  Sometimes I'll put
> one in the drive and Linux will fail to read it properly.  Sometimes
> this means I just can't read the disk.  Other times it means that the
> damn drive light stays on and the disk stays mounted and "busy" until I
> reboot the frickin PC.
> 
> Does anyone know how to remedy such a situation without a reboot?
> 
Maybe by killing the process? Like, using top or ps axu to find a process 
ID and then doing "kill <pid>" from the command line (as superuser, most 
likely)? Don't know fer sure of that works since I'm pretty much a newbie 
myself, but I'd start off trying something like that. 

James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
