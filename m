From: James Miller <jamtat@mailandnews.com>
Subject: RE: Debian install issue
Date: Wed, 9 Oct 2002 12:49:39 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0210091223130.6549-100000@localhost.localdomain>
References: <5.1.0.14.1.20021009094032.025bd780@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021009094032.025bd780@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

On 9 Oct 2002, Ray Olszewski wrote:

> You say (with respect to the Debian install):
> 
> >But
> >each time I would try to startx (by typing "startx" at the command line),
> >the server would abort with errors. There were no modes available,
> >apparently, under the 640x480 resolution (I tried other resolutions and
> >color depths, but 640x480 is the only one that would actually work).
> 
> In what you write here, what do you mean by "actually work" (since you say 
> this choice aborts with errors)?
> 

Yeah, I noted that unclarity too - but only *after* I had sent the 
message! By "actually worked" I meant that I could complete the XF86Setup 
routine and be greeted in the end with the falsely encouraging 
"congratulations! you now have a working xserver" screen . At other 
resolutions, I could not complete the XF86Setup: it would hang, showing a greatly 
magnified transition screen, and never get to the "congratulations" part. 
When this would happen, I could not even run XF86Setup again and get the 
graphical frontend for the set up. Fortunately, I saved a working copy 
(one that worked for displaying the graphical frontend of XF86Setup, I 
mean) of XF86Config and would just go in and copy that to XF86Config, 
replacing the problem file the setup had just created. So, by "actually 
worked" I meant that it would at least display the XF86Setup graphical 
frontend in VGA (SVGA?) mode.

> What xserver have you chosen? Is it the right one for your video card (vga 
> is a pretty generic xserver, and if you can run XF86Setup, then your card 
> works with it ... but svga is far from generic for better color-size 
> setting). URL www.xfree86.org has a "cardlist" somewhere on its site that 
> tells you what xserver to use with various cards. And 640x480 is only a 
> resolution; what color depths are you trying?
> 

I tried SVGA and VGA_16. The install routine detected my graphics card as 
a Cirrus GD 5430, and said it would support SVGA. I tried all color 
depths - 8 through 32 - that were offered. All "worked" in getting as far 
as the "congratulations" screen (under 640x480, I should mention), but all 
failed with errors on "startx" from the CLI.

> You say this card-monitor combo worked with RH 6.2 -- you do mean it worked 
> as an X display, right? If so, what were the details -- what xserver, what 
> XF86Config settings?
> 

Exactly. I had (have - I still have that drive hooked up but it's not 
bootable til I move Lilo into the superblock) a working X display under RH 
6.2. And I'll sure take a look there to see what xserver it's using. Great 
advice. And, hey, why not just copy XF86Config file straight from there to 
the Debian install? Not the most debonnaire solution, but hey, if it 
works, the boys down at the docks'll never know it wasn't by sheer force 
of native brilliance that I resolved this one!

> As to Slackware (and btw, what does "survpc-friendly" mean?) ... what is 
> the "it" that says "no screens available"? Setting TERM=vt100 has nothing 
> to do with X installation; it just identifies the default terminal type of 
> console displays.
> 

Sorry I can't really say what "surv-pc friendly" means. I'm probably just 
repeating something I read somewhere on some survpc site. Maybe it means 
better compliance with older hardware standards? The "it" is the message 
that shows onscreen after the failed startx attempt.

> One -- if you had some setup that ran X successfully (e.g., RH 6.2), stay 
> with that install, at least long enough to preserve its XF86Config file, so 
> you have a sample of a working config (also make note of the version of 
> XFree85 it installs ... RH 6.2 is quite old, so it might be a dated X). Use 
> that info to configure X on whichever distro you prefer.
> 

Duly noted. Thanks.

> Two -- pick one distro, install it, configure X, and if it fails, save the 
> error output (by redirecting both STDIN and STRERR to a file). Use this, 
> combined with XF86Config, to post a requrst for help that includes the kind 
> of detail we need to do real troubleshooting.
> 

Never done that before (i.e., redirecting output), but I'll keep it on 
file, give it a try and maybe send the info, if I can't resolve this through 
standard slash-and-burn techniques.

Thanks, Ray.

James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
