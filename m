From: Ray Olszewski <ray@comarre.com>
Subject: Re: X won't start, no errors in XFree86.0.log
Date: Sun, 12 Jan 2003 13:13:26 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030112125949.02281330@celine>
References: <5.1.0.14.1.20030112114020.02281c10@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <015401c2ba7b$a3c16720$6400a8c0@00arc>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Since my initial interpretation of your problem was wrong, I don't really 
have anything to suggest in particular ... only the general suggestion that 
you (or we) examine the startx output to STDERR for more information. If 
you want help at that level, please send us a followup with the redirected 
STDERR output. Also tell us what version of XFree86 you use, and what 
monitor. Oh yes, and what version of Linux (what distro, what kernel) ... 
just in case that matters.

I don't use nVidea stuff myself, so I don't know whether "the standard nv 
driver" means the binary-only one that nVidea provides or the Open Source 
one someone else now ships. Either, I'm told, can be the source of problems 
... the one from nVidea doesn't get satisfactorily updated, and the Open 
Source one suffers from a lack of cooperation from nVidea.

The symptoms leave me suspecting that the video card is getting switched to 
a mode that the monitor cannot support (not hard to do, unfortunately - I 
often do it with X and with MS Windows) and that X cannot switch out of 
when exiting. But without the details, that can be no more than a vague 
guess. For real help, someone else on the list, someone who has actually 
used nVidea hardware and drivers, should jump in.

At 03:46 PM 1/12/03 -0500, Jonathan Kallay wrote:
>Ray,
>   Thanks for the response.  Here are the answers to your questions, in no
>particular order.
>   I changed the vsync and hsync values according to the specs I looked up on
>www.monitorworld.com, which are also consistent with the monitor type: a
>mid-to-low-end 15" monitor.
>
>  CTRL-ALT-F* does not work.  There are no X processes running- so X did, in
>fact, fail to start.  I tried turning off the monitor, disconnecting it from
>the video card, powering it on, turning it off, reconnecting it, and
>powering it on again.  The monitor will "click" after a few seconds, as if
>it is going into suspend mode, but the power light won't change to orange.
>
>I can switch to a different virtual terminal, blindly login and type
>commands, and they will work (e.g. shutdown -r now will reboot the machine)
>.  So it looks like the display is being knocked out without coming back up
>once X terminates.  I am using an NVidia TNT2 video card with the standard
>nv driver.

[old stuff deleted]



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
