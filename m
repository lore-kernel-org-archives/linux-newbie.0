From: Hal MacArgle <haltec@iceweb.net>
Subject: Re: Changing Hard Drives??
Date: Fri, 22 Nov 2002 15:53:14 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021122155314.A148@lnx2.w8mch.ampr.org>
References: <20021122104215.A171@lnx2.w8mch.ampr.org>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20021122104215.A171@lnx2.w8mch.ampr.org>; from haltec@iceweb.net on Fri, Nov 22, 2002 at 10:42:15AM -0500
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

SORRY!! Please disregard. I found it right in front of my nose.
'rdev'...........................................................

Duh...

On 11-22, Hal MacArgle wrote:
> Greetings: Several weeks ago I changed from two drives, /hda and
> /hdb, with the hdb drive setup to boot using LILO.. (All partitions
> on both drives Linux or Swap, no other o/s.) The /hda drive was
> needed elsewhere so I changed the entry in fstab so that the old hdb
> was now hda and it's been working fine booting from the HD..
> (At least it seems so.) :^)...
> 
> I thought I had better make a recover disk so I tried both dd and cat
> copying /vmlinuz to the floppy and neither one will boot, "kernel
> panic." It's looking for hdb according to the screen report and I'm
> wondering why does it boot OK from the HD but not the floppy..
> 
> Can someone suggest something or steer me to a man/s/, whatever, to
> help?? I've never had an occasion to do this before...
> 
> TIA and cheers,
> 
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
> 	       haltec@iceweb.net | w8mch@iceweb.net.
> 		    NON ILLEGITIMI CARBORUNDUM
> .
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
