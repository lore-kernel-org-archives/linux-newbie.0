From: Ray Olszewski <ray@comarre.com>
Subject: Re: Xmms Won't Open
Date: Sun, 10 Apr 2005 08:13:13 -0700
Message-ID: <5.1.0.14.1.20050410073708.00a04540@celine>
References: <200504100958.j3A9wrJG002856@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504100958.j3A9wrJG002856@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

At 05:58 PM 4/10/2005 +0800, Peter H. wrote:
>Hi,
>
>slackware 10.1 kernel 2.4.29
>
>After I upgraded to dropline 2.10.0 from 2.8.3, xmms  1.2.10 will not open.
>The error I get is:
>
>~:$ xmms
>unable to open port `/dev/ttyS1' (Permission denied)
>unable to open port `/dev/ttyS1' (Permission denied)
>*** glibc detected *** free(): invalid pointer: 0x4078bc79 ***
>Aborted
>
>As su I get only the last line of the error about glibc
>
>Dropline is the gnome version for slack.
>
>How to resolve?

Am I correct in assuming that the call to xmms is from an xterm (not a 
console)?

I can't think of why a non-customized xmms startup might want to open a 
serial port ... something to do with lirc, perhaps? or displaying 
information to a LCD panel connected to a serial port? I'm really groping 
here... but that problem is surely just permissions for the non-root user. 
Check permissions with "ls -l /dev/ttyS1" and, probably, add the userid 
involved to the device's group. For example, on a stock Debian system, this 
command reports:

         crw-rw----  1 root dialout 4, 65 Mar 14  2002 /dev/ttyS1

So adding the userid to dialout (in /etc/group) would eliminate this error.

The other one is, probably, a bigger deal, suggesting a libc6 
mismatch.Since  dropline is a Slackware-specific customization of Gnome, it 
(naturally) isn't in the Debian packaging system, so I don't know the 
details of its dependencies (and I suspect the list on the Dropline Home 
Page is incomplete)... but I wonder if your install of it caused an update 
to libc6 (aka glibc), or some other change to the symlinks that involve 
libc6. Check the timestamps on whatever /lib/libc.so.6 is a symlink to, and 
on the symlink itself to see, if this happened. If it did, you may need to 
update xmms (I show the current Debian-Sid version as 1.2.10-2, requiring 
libc6 (>= 2.3.2.ds1-4), but these extraversion numbers tend to be VERY 
distro-specific, so you need to see what Slackware is actually doing here) 
to use a newer libc6. Or, depending on the details, you may need to fix the 
symlink. Or ... well, it depends on what you find, I suppose.

The Changelog for Dropline does include this line, Dated April 07 --

         Updated to glib2-2.6.4-i686-1dl.tgz

-- which raises the possibility that this change in turn forced soe change 
to glibc (which is different from glib2, BTW, so don't get mixed up by the 
similarity of names).

(I ran into a similar problem recently involving a more specialized 
library. A Debian upgrade modified its symlinks, and because I had an old 
version of the library on the system, in addition to the current version, 
it made the symlink to the wrong version. Easy to fix once I tracked it 
down, but puzzling until I found the almost-duplicate library.)

Finally, take a look at the first "known issue" on this page:

         http://www.dropline.net/gnome/support.php

Since I don't know the details of how you installed the prior version of 
Dropline, I don't know if it affected your install of xmms. But you'll want 
to think about whether this is relevant to your circumstances.

If you post again on this, please include:

         complete output of "ldd /usr/bin/xmms"
         complete output of "ls -l /lib/libc6*"

(modified appropriately if I've guessed wrong about where Slackware puts xmms).


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
