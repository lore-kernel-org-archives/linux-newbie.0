From: Ray Olszewski <ray@comarre.com>
Subject: Re: RH7.3 keyborad lock-up
Date: Sat, 10 Aug 2002 20:40:01 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020810203328.0208ecf0@celine>
References: <02081111253600.01574@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02081111253600.01574@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

At 11:25 AM 8/11/02 +0800, Peter wrote:
>[...]
>I made that switch with RH7.1 some time ago with no problems.
>7.1 runs on XFree86-4.0.3-5 and and 7.3 om XFree-4.2.0-8.

This move by Red Hat may be optimistic. Even Debian unstable (Sid) still 
runs XFree86 4.1.0-17.

>It is there
>/etc/X11/XF86Config-4 but I can not find anything specific as to what X
>server I am running. Must be my ignorance.

You want the "Driver" entry in the "Device" block. Here is mine as an example:

         Section "Device"
                         Identifier      "ATI OEM Card"
                         Driver          "ati"
         EndSection

>If you think that the problem might be in these XF86Config files and I have
>no problem with RH7.1, how about installing the kernel of RH7.3, libraries
>etc and then replacing the 7.3 XF86Config files with the ones of RH7.1.

Risky. Likely to encounter library incompatibilities.

>BTW I posted the problem as well to the redhat-install list and somebody
>sugested
>to turn off the apmd system (advanced power management) by unmarking
>the "apmd" entry in ntsysv.
>What do you think about that? Would that have something to do with tuxracer
>or chromium?


Well outside my real expertise, but it seems farfetched, given that the 
system is running and only the keyboard (and perhaps portions of the 
display) has failed.



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
