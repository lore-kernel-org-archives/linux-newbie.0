From: James Miller <jamtat@mailsnare.net>
Subject: Re: longstanding Linux irritants: suggested solutions?
Date: Mon, 12 Apr 2004 22:28:32 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0404122152500.688@debian-emach>
References: <Pine.LNX.4.58.0404121355350.673@debian-emach> <407B2158.6070702@jpl.nasa.gov>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <407B2158.6070702@jpl.nasa.gov>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 12 Apr 2004, Bryan Whitehead wrote:

> > to properly center the display.  I kind of expect Xvidtune to write the
> > values I tune the display to to XF86Config-4, but it doesn't do that.
> > I've tried it both as user and as root.  Judging from the man page for
> > Xvidtune, which says:
> >
> > Show      Print the currently selected settings to stdout in XF86Config
> >           "Modeline" format.  The primary selection is similarly set.
> >
>
> First, run xvidtune from a terminal and DO NOT close the terminal.
>
> After you get xvidtune to the exact psoition you want press the "show"
> button.
>
> In the terminal a "Modeline" will be printed. On mine I get this:
> "1600x1200"   229.50   1600 1664 1856 2160   1200 1201 1204 1250 +hsync
> +vsync
>
> In your XF86Config-4 file goto your Monitor section and add
> ModeLine <the crap xvidtune spit out>
>
> So for me I'd add this to Section "Monitor":
> ModeLine "1600x1200"   229.50   1600 1664 1856 2160   1200 1201 1204
> 1250 +hsync +vsync
>
> Now restart X... Simple eh?

Looks like it, yes.  I started xvidtune in an xterm (I couldn't really see
how starting it in a terminal - which I understand to mean a virtual
terminal or console - would work, since X needs to be running to do the
positioning), and when it ran, output from it was displayed in the xterm.
Sure enough, data like you mentioned appeared when I hit the "show"
button.  I copied it to a file, and have added it to XF86Config as you
suggested.  I'm hoping this is going to do the job.  Thanks for the tip.

On Mon, 12 Apr 2004, Ray Olszewski wrote:

> I can only give you partial answers here, James. I hope they are enough to
> be of some help.
<snip>
>
> "stdout" is short for "standard output" and is, by default, the terminal
> display from which a program is run. It's what you redirect with the >
> character. There is also "stderr", or "standard error" ... also the running
> terminal by default, but separately redirectable with the 2> characters. So
> what you read just means that xvidtune (not Xvidtune; case counts) will
> print the values to the screen, or to whatever file you redirect screen
> output to.

Thanks for your input, Ray.  So, stdout means within an xterm from which
an application is started, according to Bryan's directions and my
implementation of them.  I had been starting xvidtune (it *does* appear
capitalized - Xvidtune - in the menu entry Debian created for it) from the
menu, as opposed to from an xterm.  I guess in that case, stdout just gets
written to /dev/null, since there's no place to print to?

> As to adding the Modeline entries manually ... that's how I would read it
> too. I just want to caution you that hand-editing /etc/X11/XF86Config-4
> conflicts with the "Debian way", which relies on configuring through dpkg
> (in this case, probably dpkg-reconfigure). It means tyou run the risk of
> losing your changes as the result of an apt-get upgrade (or, more likely,
> dist-upgrade). I know of no sensible workaround for this problem, except
> the  most basic one: keep a copy of your changes somewhere and be ready to
> restore them if you need to.

Ok.  Hope I can remember that I saved it should I ever need to
reconfigure.

> I'm not using 2.6.x kernels yet, so I can't really help you if this is
> anything very intricate or subtle ... and some 2.6.x changes are both of
> these.
>
> You'll note that X is trying to open two distinct mouse entries, for
> "Configured Mouse" and "Generic Mouse". I have seen this before, and it
> seems to be some sort of long-standing error in the dpkg-reconfigure
> script. On my machines, if it gives me a problem (currently it doesn't - my
> X setups ignore this one and use Confifured Mouse with no problem)  I fix
> it by editing support for the wrong one (in your case, Generic Mouse) out
> of XF86Config-4 by hand. Just go to the section called "ServerLayout" and
> delete, or comment out, the line for "Generic Mouse".

I'm afraid this may turn out to be intricate and/or subtle.  Commenting
out Generic Mouse in the ServerLayout section of XF86Config-4 did *not*
make the mouse cursor work (i.e., same "paralyzed" cursor I described
earlier) when I booted the 2.6.4 kernel after editing.  Double-checked the
entry after having booted into 2.6.4 console mode and the changes I had
made were there.

> But your problem is probably with the "Configured Mouse" entry. It may be
> using the wrong device (I don't have a /dev/gpmdata device here so cannot
> check what it is). You may be able to fix the problem by editing
> XF86Config-4 so this Device entry points to /dev/psaux (assuming you have
> that device).

I installed gpm (gives mouse cursor/action in console mode) since I've
used virtual terminals alot on other machines.  On this one, I don't use
them much, so maybe I should just uninstall gpm?  I did work on this 2.6.x
cursor problem a couple of months ago to try and untangle things, and as I
recall, the mouse cursor was not working with the 2.6.x kernel even before
I installed gpm.  But my memory of that troubleshooting episode is fairly
faded now.  If it seems like it could help, I'd be willing to uninstall
gpm.  I made the entry point at /dev/gpmdata because of erratic cursor
problems after I installed gpm, btw (more hand-editing, as you can see).

On Mon, 12 Apr 2004, Bryan Whitehead wrote:

> You are not loading in the USB input modules. Read the kernel docs on
> what ones you need. I don't use debian so I can't help anymore...

Ugh.  Another irritant I had shoved so far onto the back burner I forgot
it was there.  I think USB is not functioning on this machine, for
whatever reason.  As you might guess, I have no urgent needs for USB, so I
hadn't even thought of confronting that one yet.  But this is not a USB
mouse and, at the moment, USB is not so crucial on this machine.  So, why
would USB need to be working for me to use my ps2 mouse?  Maybe Ray's
suggestion was meant to ignore the USB problem as I've tried to do, and
just make the computer ignore the problem entry that tries to invoke USB
as well.  But that seems not to have worked either.  Any other
suggestions?  Must I really tackle the USB problem before I can get my ps2
mouse working under the 2.6.4 kernel?

On Mon, 12 Apr 2004, Ray Olszewski wrote:

> >resolve how to remove them when I loaded new ones).  So, would I specify
> >the kernel version number I want to remove, even though I did not specify
> >it to be installed by kernel version number?  Or must I simply manually
> >delete things?
>
> I don't do this either. But as I read the Debian docs, installing (or
> upgrading) kernel-image-2.4-686 is just a trick, in that this is a dummy
> package with nothing in it but a dependency on the latest real 2.4.x image
> compiled for a "686". So it forces installation of another package with the
> actual kernel (currently kernel-image-2.4.25-1-686, if my package
> repository here is up to date).
>
> So you should be able to apt-get remove kernel-image-2.4.19-686 (for
> example), to get rid of the old kernels without losing the current one.
> Personally, I'd also make sure any entries for them are removed from
> /etc/lilo.conf (or the config file for whatever bootloader you use), then
> rerun lilo, after you remove any kernel images ... I don't recall how the
> package configurator handles old kernel images when updating lilo.

Ok, I'll try that.  Thanks for the advice.  Maybe I'm being too hyper
about kernel upgrades, but when I read about some kernel security
vulnerability, my inclination is to upgrade to a newer kernel.  Is this a
sound, or perhaps inadvisable, approach?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
