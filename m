From: Ray Olszewski <ray@comarre.com>
Subject: Re: What - Linux Video Capture Interface, V1.0???
Date: Sat, 01 Nov 2003 13:30:03 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031101132257.01f1a828@celine>
References: <20031101211111.GA1117@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031101211111.GA1117@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

At 04:11 PM 11/1/2003 -0500, Hal MacArgle wrote:
>Greetings: Am messing with the Gatos Groups avview and km. Have
>avview working OK, but got into trouble with the capture routine km
>and would like to uninstall it..
>
>I found the modules it created and rm'd them but dmesg now reports
>"Linux Video Capture Interface, V1.0" several times and I can't find
>what file is doing this.. It's not in the kernel because I can boot
>from both the HD or floppy and get the same dmesg report.. It _has_
>to be somewhere on the HD - but where??? I'm booting command line
>only so X11 shouldn't have anything to do with it, IMHO. :^)... Of
>course I've grep'd so many times I'm blue in the face.. If the
>routine is in a binary file - am I stuck??
>
>Any suggstions?? Anyone run into this before??

Is it possible that what you are seeing in dmesg is actually

         "Linux video capture interface: v1.00"

(note the differences in capitalization - this is from my dmesg file on a 
vidcap host I have)?

If so, it is a sort of section header for the v4l modules. On my system, it 
opens the section that reports installation of the bttv driver. For help, 
you need to quote the 2 lines that precede it, and the group that follows 
it, in dmesg. Since I use a Hauppauge vidcap card, not the ATI vidcap stuff 
that GATOS supports (kind of), I don't know what you might see in this 
section of dmesg. But the details should help.

Also, I forget how Slackware loads modules. (You may recall that I use 
Debian.) If your floppy and HD boots both mount the same root filesystem, 
and both use the same kernel, then the init process will try to load the 
same modules either way.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
