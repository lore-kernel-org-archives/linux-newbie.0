From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: RH7.3 keyborad lock-up
Date: Sun, 11 Aug 2002 08:13:43 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208110754590.8397-100000@Consulate.UFP.CX>
References: <5.1.0.14.1.20020810203328.0208ecf0@celine>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020810203328.0208ecf0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Peter.

>> I made that switch with RH7.1 some time ago with no problems.
>> 7.1 runs on XFree86-4.0.3-5 and 7.3 on XFree-4.2.0-8.

> This move by Red Hat may be optimistic. Even Debian unstable (Sid)
> still runs XFree86 4.1.0-17.

That is certainly possible. What version does RH 7.2 use?

XFree86 is extremely difficult to downgrade. However, one option may
exist if you have a CD-writer, and that is to create a CDR set with the
7.3 image, but with the XFree86 RPM's from 7.2 rather than the ones
supplied with 7.3 and install from that.

>> It is there /etc/X11/XF86Config-4 but I can not find anything
>> specific as to what X server I am running. Must be my ignorance.

> You want the "Driver" entry in the "Device" block.
> Here is mine as an example:
>
>	Section "Device"
>		Identifier	"ATI OEM Card"
>		Driver		"ati"
>	EndSection

>> If you think that the problem might be in these XF86Config files
>> and I have no problem with RH7.1, how about installing the kernel
>> of RH7.3, libraries etc and then replacing the 7.3 XF86Config files
>> with the ones of RH7.1.

> Risky. Likely to encounter library incompatibilities.

Probably impossible.

>> BTW I posted the problem as well to the redhat-install list and
>> somebody sugested to turn off the apmd system (advanced power
>> management) by unmarking the "apmd" entry in ntsysv. What do you
>> think about that? Would that have something to do with tuxracer or
>> chromium?

> Well outside my real expertise, but it seems farfetched, given that
> the system is running and only the keyboard (and perhaps portions of
> the display) has failed.

I can't comment re tuxracer and chromium, but that could easily be a
problem with xscreensaver as it kicks into operation is precicely the
same circumstances as apmd does. However, it's easy to test for, as
apmd is, after all, a piece of software. If apmd is the problem, then
upgrading to the version of apmd supplied with 7.3 will cause the
problem to start occurring on your 7.1 based system.

If that causes the problem to occur, then you can cure it either by
downgrading to the 7.1 version again or, more simply, by disabling
apmd with the `chkconfig apmd off` command.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
