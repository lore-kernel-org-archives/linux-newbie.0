From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Netscape6.2/Slack8.1 Problem??
Date: Thu, 1 May 2003 11:33:20 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030501113320.B165@lnx2.w8mch.ampr.org>
References: <20030430130258.A152@lnx2.w8mch.ampr.org> <5.1.0.14.1.20030430101045.01f89a18@celine>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20030430101045.01f89a18@celine>; from ray@comarre.com on Wed, Apr 30, 2003 at 10:22:33AM -0700
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 04-30, Ray Olszewski wrote:
> At 01:02 PM 4/30/2003 -0400, Hal MacArgle wrote:
> >Greetings: Netscape-6.2.3.i686-3 bundled with Slackware 8.1.0 -
> >machine has 300mHz Celeron and 128mB SDRAM - installed OK and looked
> >as expected except one glaring problem:
> >
> >Clicking on the normal box that usually accepts an entry - the
> >arrow changes to an "I" but no typing appears in the box..
> >
> >Tried the File drop down menu that has a selection to enter an URL -
> >same thing. It's almost like the keyboard is dead.. Of course the KB
> >works fine with everything else, even when I installed Netscape 4.77
> >on the same machine.. Back to 6.2.3 again - same KB problem..
> >
> >I'm stumped. Any suggestions or comments? TIA.
> 
> Only the obvious one. Netscape is traditionally a resources hog, and your 
> hardware is pretty minimal ... RAM especially ... for a workstation that 
> runs X in any of its modern, heavyweight configurations (the standard Gnome 
> or KDE desktops, that is). And I don't know what other, background 
> processes might also be running on the host.

		Greetings and thanks for your usual detailed help.. I
don't have either Gnome or KDE installed /or/ in fact no window
manager either.. I don't think there's anything in the bg either -
see later...



> So ... is it possible that what you are seeing is extreme slowness due to 
> swapping? (You don't mention a swap partition, but with only 128 MB of RAM 
> on an X workstation, I expect you have one.) Or, somewhat less likely, an 
> actual out-of-memory condition (if by some chance you do not have a swap 
> partition)?

		The 128 of RAM is wrong. I had forgotten I slipped an
addtional 64mB stick in that machine so I actually have 192mB SDRAM
available.. The swap partition is rather large at 770mB or so.. I may
learn something from all this I hope... :^).



> If you run "top" in an xterm/eterm while the problem is occurring, what 
> does it tell you about CPU utilization and memory use? Does "top" itself 
> continue to run (update its display) when Netscape is unresponsive?

		Running 'top', which I'm not really sharp with
reports: Mem: 190808K Total and 59492K used with Netscape running.
Swap remains at: 771112K total with 0 used.. And 'top' updates
normally IMHO.. Netscape seems to respond to everything that I've
tried; setting preferences, killing the personal tool bar, inputting
html files or jpeg pictures to view, etc, _except_ typing in an URL..



> More generally, is the unresponsiveness isolated to the running
> Netscape process? (Is that what you meant by "Of course the KB
> works fine with everything else ..."?) Can you, for example, get
> the X popup menu and start new processes? Can you ssh in? Do other
> running processes respond if you switch to them? Does the mouse
> pointer move, and will X use it to change focus?

		I meant that the KB works as expected on boot and
with Netscape 4.77 installed, plus all the normal KB stuff like;
less, ls, the jstar editor, on and on.. When I 'startx' I get xterm
ok and the KB works fine in the terminal.. I have never used ssh but
that machine has three users, including root, and all seem to work
normally.. The problem always follows Netscape 6.2.3.. BTW, when I
click on the location box getting the "I" the cursor doesnt appear.
I think I read somewhere that the I is called a dogbone, whatever.

		I don't know if the keyboard setting defaults in
XF86Config have anything to do with it but suspect not as the KB
works fine in Xterm..

Appreciate!! (Written on another machine - not the subject one.)

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
