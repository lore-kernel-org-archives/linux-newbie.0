From: James Miller <jamtat@mailsnare.net>
Subject: Re: longstanding Linux irritants: suggested solutions?
Date: Tue, 13 Apr 2004 10:03:12 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0404130954380.1012@debian-emach>
References: <Pine.LNX.4.58.0404121355350.673@debian-emach> <407B2158.6070702@jpl.nasa.gov>
 <Pine.LNX.4.58.0404122152500.688@debian-emach> <407B7EE3.4000206@comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <407B7EE3.4000206@comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Beolach <beolach@comcast.net>
Cc: James Miller <jamtat@mailsnare.net>, linux-newbie@vger.kernel.org

On Mon, 12 Apr 2004, Beolach wrote:

> > I installed gpm (gives mouse cursor/action in console mode) since I've
> > used virtual terminals alot on other machines.  On this one, I don't use
> > them much, so maybe I should just uninstall gpm?  I did work on this 2.6.x
> > cursor problem a couple of months ago to try and untangle things, and as I
> > recall, the mouse cursor was not working with the 2.6.x kernel even before
> > I installed gpm.  But my memory of that troubleshooting episode is fairly
> > faded now.  If it seems like it could help, I'd be willing to uninstall
> > gpm.  I made the entry point at /dev/gpmdata because of erratic cursor
> > problems after I installed gpm, btw (more hand-editing, as you can see).
> >
>
> Well, based on the gpm man page, you should only need to use repeater
> mode (-R options, creates /dev/gpmdata) in order to overcome a
> single-open limitation on the mouse device, which AFAIK you should only
> need to worry about if you have some types of unusual bus mouse.  If you
> are using standard ps/2, you shouldn't need to run gpm in repeater mode.
>
> Here's what I would do to troubleshoot this:
>
> 1. Check & confirm gpm is working in the console, and find out which
> device it opened (/dev/psaux, /dev/misc/psaux, /dev/input/mics, etc).
> Edit XF86Config-4 & change '/dev/gpmdata' to the same device gpm opened,
> run gpm -k (to kill gpm) and try to start X.
>
> 2. If after step 1 the mouse worked, I would close X, restart gpm
> WITHOUT the -R option, and then restart X.  Hopefully this would work.
>
> 3a. If after step 1 the mouse worked, but after 2 didn't work, then most
> likely you are having problems between X & gpm.  Two possibilities here:
> either always run gpm -k to stop gpm before starting X (possibly by
> editing your xinit script), or
>
> 3b. Editing XF86Config-4 back to '/dev/gpmdata', running gpm -k & then
> restarting gpm with '-R raw' to start repeater mode again.  If you still
> have problems with gpm in repeater mode, you might want to see if the
> gpm man page gives you any helpful info.

Thanks for your input, Conway.  I found it a bit confusing, but here is
some feedback to it.  gpm.conf indicates gpm is reading from /dev/psaux.
I have booted the 2.6.4 kernel and tried changing /dev/gpmdata in
/etc/X11/XF86Config-4 to /dev/psaux.  When I do this, startx fails with
the 2.6.4 kernel.  It's a fatal server error, "cannot open device
/dev/psaux no such device, Configured Mouse: cannot open input device,
Preinit failed for input device Configured Mouse, no core pointer" (those
seem the most pertinent parts of the output to stdout :) ).  Steps 2-3b do
not apply, so far as I can understand, given the total failure of step 1.
Again, the problem here is loss of mouse functionality when trying to use
the 2.6.x kernels.  Everything works fine using the 2.4.25 kernel.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
