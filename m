From: Ray Olszewski <ray@comarre.com>
Subject: Re: Gnome, KDE won't Open
Date: Fri, 13 Aug 2004 10:07:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040813093835.01fe0dc0@celine>
References: <20040813092101.9DC3E3ECE2@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040813092101.9DC3E3ECE2@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Peter -- I don't have your first message here to refer back to, so let me 
first summarize what I believe your problem report is, in case I am 
misinterpreting, or misremembering, something of consequence.

When your system used a PS/2 keyboard and PS/2 mouse, you were able to 
startx and xdm/gdm into gnome (or KDE) with no problem.

You switched to a USB keyboard and mouse, and now the system cannot startx, 
or xdm/gdm, into either Gnome or KDE. In both cases, the system 
spontaneously reboots during the load process. You can, however, startx 
into twm, and axdm and gdm themselves work properly.

With that summary, and the details you offer below, I have a few thoughts.

1. Are you using a powered USB hub or unpowered connections? (More 
generally, what do you mean by "I bought an USB adopter"?) If the second, 
might this be a power supply problem? Possibly Gnome uses a video mode that 
demands more of some voltage than your P/S can provide when it is also 
powering USB devices. Possibly starting its power management detects or 
triggers some marginal problem. I admit this is fishing, but over the 
years, most of my experiences witrh spontaneous reboots ended up being 
traced back to power supplies that delivered too little peak power.

2. You report the last message you see before the reboot, and it involves 
DisplayPowerManagement. But a spontaneous reboot may be caused by whatever 
the system tries to do *after* that, with the reboot occurring before the 
STDERR display is updated. Do you have a way to check what a normal, 
successful startx with Gnome would report after this "last" message?

3. While I understand the difficulties in posting error messages and logs 
from a ssytem with neither a floppy drive not a LAN connection, surely you 
understand the difficulties in trying to help without them. Temporarily 
adding a floppy or a NIC to a system is about 10 minutes' work, and around 
here either device costs less that $US10. So you might consider having 
something on hand for these sorts of troubleshooting situations.

4.Have I correctly identified your mobo as the following?
         http://www.baber.com/baber/411/ecs_p6stmt.htm

If so, I note that it has onboard video. Since this mobo has already failed 
in two other respects, have you considered the possibility that some of its 
higher-res SVGA modes also have failed? (Are you using twm at 640x480 but 
Gnome at 1024x768, for example? Or even more extreme, are you using 
different X servers for the two?)

5. I'm having trouble understanding this part of your report:

 >>When I open gnome-panel or kicker from
 >> within twm causes a crash when then trying to open an application from 
those
 >> panels.

What actual application(s) do you try? What sort of "crash" occurs? (The 
system hangs? It spontaneously reboots? Something else?) What happens if 
you try to open those same apps without using the Gnome or KDE interfaces 
(for example, if you launch them from an xterm)?

6. This is a real long shot ... but your system isn't exactly overloaded 
with RAM. (What is "KRAM", BTW? Or is that K=kilo, which I suppose (hope) 
is just a typo ... surely the system has 118 MB RAM, 435 MB swap, not 118 
and 435 KB.) Might this be a memory (or swap partition) problem? What does 
"free" report about memory and swap usage just before you try to start 
Gnome or KDE? Are you able to use swap successfully in other ways?

At 05:21 PM 8/13/2004 +0800, Peter wrote:

>On Thu, 12 Aug 2004, Peter wrote:
>
> >> Hi,
> >>
> >> RedHat 9.1, Kernel 2.2.20-20, 118 KRAM, 435 K swap
>
>should read Kernel 2.4.20-20
>
> >>
> >> On my motherboard the connection for the keyboard died for which reason I
> >> could no longer boot.
>
> >The reason for it dying may also be important here, possibly a mobo prob??
>
>Yes, it is a mobo problem.
>
> >>
> >> I bought an USB adopter, connected keyboard and mouse to it and I 
> could boot
> >> again with kb and mouse working properly.
>
> >So can u beg borrow (or steal <g>) a keyboard n mouse that connects to the
> >native ports. If you can do that post the  results
>
>I just have to connect to the old outlets and, see above no more booting.
>
> >>
> >> However, now I cannot start gnome nor kde from the concole. Both crash 
> just
> >> before the panels should open. I can start twm and from there open
> >> applications like abiword, gnumeric. When I open gnome-panel or kicker 
> from
> >> within twm causes a crash when then trying to open an application from 
> those
> >> panels.
>
> >I'm slightly surprised you can get X running at all <g> It should be
> >looking for a keyboard and mouse attached where they were before 8-() or
> >did you reconfigure it?
>
>Yes I reconfigured to have USB support for hid, kb and mouse and changed to
>the appropriate settings in XF86Config.
>
> >>
> >> Opening gnome or kde via gdm or xdm causes a reboot.
>
> >That's what I would expect <g>
>
> >
> >> Has this strange behavior anything to do with this USB connection of the
> >> kb/mouse and what would be needed then to correct it or is it just a
> >> coincidence meaning further trouble?
>
> >impossible to say with any degree of certainty. Would need your error
> >messages and configs plus a clear description of what has changed between
> >your prior configuration and the current configuration. How were keyboard
> >and mouse attached before? ps2 mouse or usb ditto for keyboard. Your
> >XF86Config and the error messages would help enormously. dmesg and XF86
> >logs would help too.
>
>Kb and mouse were attached to the standard outlet of the mobo P6STMT which
>seems to be of poor quality. It gave problems before with the SIS630ET
>chipset, then the printer(whatever) mobo stopped working necessitating me to
>buy a printer card and now the kb went puff. Before that last event happened
>the machine was made the house training computer for the kids and wifes for
>which reason there is no Internet connection and no floppy drive. 
>Therefore it
>is difficult to supply dmesg etc logs.
>
>dmesg shows no errors whatsoever, neither the bootlog nor messages. The
>XF86config.log differs on the last line:
>when trying to startx gnome-session and it crashes the last line of 
>XF86Config
>is: (II)SIS(0):SISDisplayPowerManagementSet(0)
>whereas when starting twm there is no such last line.
>
>lsmod shows that the modules for usbhid, usbmouse and usbkb are all properly
>loaded and as I said kb and mouse work faultlessly with this USB adapter.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
