From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: What - Linux Video Capture Interface, V1.0???
Date: Sun, 2 Nov 2003 10:23:28 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031102152328.GA738@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 11-01, Ray Olszewski wrote:
> At 04:11 PM 11/1/2003 -0500, Hal MacArgle wrote:
> >Greetings: Am messing with the Gatos Groups avview and km. Have
> >avview working OK, but got into trouble with the capture routine km
> >and would like to uninstall it..
> >
> >I found the modules it created and rm'd them but dmesg now reports
> >"Linux Video Capture Interface, V1.0" several times and I can't find
> >what file is doing this.. It's not in the kernel because I can boot
> >from both the HD or floppy and get the same dmesg report.. It _has_
> >to be somewhere on the HD - but where??? I'm booting command line
> >only so X11 shouldn't have anything to do with it, IMHO. :^)... Of
> >course I've grep'd so many times I'm blue in the face.. If the
> >routine is in a binary file - am I stuck??
> >
> >Any suggstions?? Anyone run into this before??
> 
> Is it possible that what you are seeing in dmesg is actually
> 
>         "Linux video capture interface: v1.00"
> 
> (note the differences in capitalization - this is from my dmesg file on a 
> vidcap host I have)?

	True w/Slackware9.0 also.. I quoted it wrong. The "editor" in
me I guess. :^).. It, apparently, is a report from 'videodev.o'



> If so, it is a sort of section header for the v4l modules. On my system, it 
> opens the section that reports installation of the bttv driver. For help, 
> you need to quote the 2 lines that precede it, and the group that follows 
> it, in dmesg. Since I use a Hauppauge vidcap card, not the ATI vidcap stuff 
> that GATOS supports (kind of), I don't know what you might see in this 
> section of dmesg. But the details should help.
> 
> Also, I forget how Slackware loads modules. (You may recall that I use 
> Debian.) If your floppy and HD boots both mount the same root filesystem, 
> and both use the same kernel, then the init process will try to load the 
> same modules either way.

	Yes, we all know Debian is your choice. I have to mention,
however, that Slackware 8.1 up is not like what you used years ago,
almost unrecognizable to "old" Slack users..

	You prodded my grey cells so I discovered that Slack uses
many "ways" of loading modules.. I, finally, found all of them so I'm
back to the top again.. /etc/rc.d/rc.modules has a bazillion drivers
that a user uncomments to use, plus, and I just noticed this; some
if's I didn't see before.. /lib/modules/2.4.20/ has a modules.dep
file plus others I had to access to find the entries I needed to
remove..When I compiled the km capture program it wrote to the above
and I didn't see any mention of this in the Makefile.. I'll never
really learn methinks.. The file 'modules.pcimap' really surprised
me.. Ugh... This stuff is really getting complicated. What ever
happened to the KISS movement?? <grin>

	I wonder if you were confused with the "tuner" and
"composite" labels, like me... It took a time for me to understand
because I had always thought that composite meant the "F" RF cable,
not the RCA separate video/sound cables..

	Thanks - appreciate!!.

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
