From: James Miller <jamtat@mailsnare.net>
Subject: Re: device or resource busy error message - what to do?
Date: Wed, 11 Feb 2004 14:26:31 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0402111417120.13970@debian-emach>
References: <5.1.0.14.1.20040211105425.01fccef8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040211105425.01fccef8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 11 Feb 2004, Ray Olszewski wrote:

> At 12:28 PM 2/11/2004 -0600, James Miller wrote:
> >I've recently written a floppy disk image to a floppy using the command
<snip> >
> >System: Debian Sid with newest 2.4 kernel and probably devfs.
>
> Well, as is often the case, figuring out what *might* be wrong is something
> of a guessing game. Just to be clear: the very last thing you did before
> encountering the problem was run a command close to this one:
>
>          cat nameoffile1440.img >dev/fd0

Well, it wasn't really the very last thing I did, no.  I reconsidered
after reading your post and realized the very last thing I did before
losing floppy access was bring vmware out of suspend mode.  Everything
clicked into place after I recalled that: vmware often grabs the floppy
and requires you to disconnect it in the vmware UI before the host OS can
use it.  So, that's what the problem was.  False alarm, profuse apologies
and the usual disclaimers about denseness.  Anyway, it looked similar
enough to other problems I've had in the past in accessing disks under
Linux (that didn't involve systems with vmware installed on them) that I
thought I might finally have a situation to carefully analyze so as to
determine the nature of the problem and figure out how to handle it when
it crops up.  Looks like I'll have to save that analysis for some future
occassion.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
