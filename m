From: James Miller <jamtat@mailsnare.net>
Subject: Re: Debian Sid startup problems
Date: Fri, 11 Jun 2004 21:21:22 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406112102240.2201@debian-emach>
References: <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611183923.01fc9dc0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040611183923.01fc9dc0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 11 Jun 2004, Ray Olszewski wrote:

> For the most part, I'm going to wait to think more about this until you
> report the result of the telnet test. Also, since your problem does seem to
> be specific to X, you should round up the usual suspects here ...
>
>          what kernel? Debian stock or compiled by you?

2.6.5 Sid stock.  Not compiled by me - rather apt-get install(ed).

>          what video hardware (card and monitor)?

ATI Radeon 7000 32MB PCI card.  Mag 17" "MAG-765" LCD flat screen
HorizSync 63.98 VertRefresh 60.02 Modeline "1280x1024."

>          what X server (I saw a passing reference to radeon in the log
> output, but please confirm this)?
>          am I correct in thinking (from the radeon reference) that you are
> using a framebuffer in the kernel?

ATI server, I think (it says "driver 'ati'" in XF86Config-4).  I'm not
real clear on what framebuffers are, so I'm reluctant to say.  I think so,
but to say for sure I might need more information on determining how to
find out.  XFree86 4.2.1.1, it looks like.

>
> Check the timestamp on /etc/X11/XF86Config-4 to make sure it hasn't been
> changed more recently than you think it should have been.

Last modified April 13th - around the time I bought and installed this ATI
Radeon video card.

> Debian normally is set up to log X's STDERR output to /var/log/XFree86.log
> Check there, rather than in /var/log/mesages, for the details of whatever
> problems X is finding.

> In connection with the usb* installs, did you do an apt-get update/upgrade
> (or dist-upgrade) of the system? If yes, is it possible that doing so
> changed some of your X settings (by a new xserver-xfree86 package rewriting
> /etc/X11/XF86Config-4, which would cause you to lose any changes you made
> by hand ... that is, outside the debconf method)

I apt-get update frequently.  But I've never apt-get upgraded this machine
since my initial install of Debian Sid

> As to usb modules ... since we only care about them if they are running,
> use "lsmod" to check that.

usb_storage            68288  0
uhci_hcd               33040  0
usbcore               106556  4 usb_storage,uhci_hcd

looks relevant. Maybe scsi_mod 121260  3 usb_storage,sd_mod,ide_scsi too?
On another note, I see

vesafb                  5356  1
cfbcopyarea             3872  1 vesafb
cfbimgblt               3072  1 vesafb
cfbfillrect             3776  1 vesafb

Is this the framebuffer stuff you were asking about?


Thanks, James

>
> >On Fri, 11 Jun 2004, Ray Olszewski wrote:
> [deleted]
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
