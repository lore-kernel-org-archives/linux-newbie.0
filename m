From: Beolach <beolach@comcast.net>
Subject: Re: longstanding Linux irritants: suggested solutions?
Date: Mon, 12 Apr 2004 23:47:15 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <407B7EE3.4000206@comcast.net>
References: <Pine.LNX.4.58.0404121355350.673@debian-emach> <407B2158.6070702@jpl.nasa.gov> <Pine.LNX.4.58.0404122152500.688@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0404122152500.688@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

James Miller wrote:

<snip>

> On Mon, 12 Apr 2004, Ray Olszewski wrote:
>
>
>>I can only give you partial answers here, James. I hope they are enough to
>>be of some help.
>
> <snip>
>
>>"stdout" is short for "standard output" and is, by default, the terminal
>>display from which a program is run. It's what you redirect with the >
>>character. There is also "stderr", or "standard error" ... also the
running
>>terminal by default, but separately redirectable with the 2>
characters. So
>>what you read just means that xvidtune (not Xvidtune; case counts) will
>>print the values to the screen, or to whatever file you redirect screen
>>output to.
>
>
> Thanks for your input, Ray.  So, stdout means within an xterm from which
> an application is started, according to Bryan's directions and my
> implementation of them.  I had been starting xvidtune (it *does* appear
> capitalized - Xvidtune - in the menu entry Debian created for it) from the
> menu, as opposed to from an xterm.  I guess in that case, stdout just gets
> written to /dev/null, since there's no place to print to?
>
>

Actually, when you run a program from a menu or from a run-dialog in a X
window manager, stdout would be on the console that X had been started
from.  For example, if you are on tty1 and start X, and then run
xvidtune from your menu, the stdout from xvidtune would be sent back to
tty1.  You normally can switch back to tty1 with ctrl-alt-F1.  But
generally it is easier just to use an xterm if you need to see the
stdout from an X ap.

<snip>

>>But your problem is probably with the "Configured Mouse" entry. It may be
>>using the wrong device (I don't have a /dev/gpmdata device here so cannot
>>check what it is). You may be able to fix the problem by editing
>>XF86Config-4 so this Device entry points to /dev/psaux (assuming you have
>>that device).
>
>
> I installed gpm (gives mouse cursor/action in console mode) since I've
> used virtual terminals alot on other machines.  On this one, I don't use
> them much, so maybe I should just uninstall gpm?  I did work on this 2.6.x
> cursor problem a couple of months ago to try and untangle things, and as I
> recall, the mouse cursor was not working with the 2.6.x kernel even before
> I installed gpm.  But my memory of that troubleshooting episode is fairly
> faded now.  If it seems like it could help, I'd be willing to uninstall
> gpm.  I made the entry point at /dev/gpmdata because of erratic cursor
> problems after I installed gpm, btw (more hand-editing, as you can see).
>

Well, based on the gpm man page, you should only need to use repeater
mode (-R options, creates /dev/gpmdata) in order to overcome a
single-open limitation on the mouse device, which AFAIK you should only
need to worry about if you have some types of unusual bus mouse.  If you
are using standard ps/2, you shouldn't need to run gpm in repeater mode.

Here's what I would do to troubleshoot this:

1. Check & confirm gpm is working in the console, and find out which
device it opened (/dev/psaux, /dev/misc/psaux, /dev/input/mics, etc).
Edit XF86Config-4 & change '/dev/gpmdata' to the same device gpm opened,
run gpm -k (to kill gpm) and try to start X.

2. If after step 1 the mouse worked, I would close X, restart gpm
WITHOUT the -R option, and then restart X.  Hopefully this would work.

3a. If after step 1 the mouse worked, but after 2 didn't work, then most
likely you are having problems between X & gpm.  Two possibilities here:
either always run gpm -k to stop gpm before starting X (possibly by
editing your xinit script), or

3b. Editing XF86Config-4 back to '/dev/gpmdata', running gpm -k & then
restarting gpm with '-R raw' to start repeater mode again.  If you still
have problems with gpm in repeater mode, you might want to see if the
gpm man page gives you any helpful info.

<snip>

HTH,
Conway S. Smith
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.3 (GNU/Linux)

iD8DBQFAe37hGL3AU+cCPDERAkJRAJ4pp9282EJc+GNywMZgEhb10iN9tQCg0Y0S
K8IbQynVnr43rIQVrFyAzeQ=
=efa+
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
