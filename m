From: Ray Olszewski <ray@comarre.com>
Subject: Re: getting a valid display under Debian
Date: Tue, 11 Nov 2003 12:52:08 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031111121913.01fa3d58@celine>
References: <Pine.LNX.4.58.0311111308410.3176@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0311111308410.3176@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm needing to read between the lines a bit here, so please allow for some 
guessing on my part.

Yes, the practice in Debian-Sid is to use the /etc/X11/XF86Config-4 for 
current (4.x.x) versions of X.

To configure X in Debian-Sid, you have several options.

1. Edit /etc/X11/XF86Config-4 by hand (of course). You may find this 
tricky, if your prior experience is only with X11R6 3.x.x, because 4.x.x is 
*very* different.

2. Use dpkg to do it. As I recall, the appropriate command is 
"dpkg-reconfigure xserver-xfree86".

3. The command-line program "xf86config" is still available (I'm nor sure 
what .deb has it, but surely it is one included in the X task install). I 
haven't used it in years, though (I use method 2 above for video-card or 
montor changes and 1 for fine tuning), so I can't tell you how tricky, or 
just different, it might be actually to use.

I assume you are having this problem both with and without the "fluxbox" 
edit you mention making. I also assume you've redirected X's STDERR output 
to a file and looked there for anything of interest. If not, try these 
things if you can ... by way of an ssh or telnet session into the problem 
host, if necessary, for the second of them.

(The safer way to switch WMs in Debian, BTW, is to use the Debian X popup 
menu to do it. Assuming you've installed fluxbox through apt-get, or 
another "official" method, it shoul be available to switch to via the 
WindowManagers menu line. These changes do persist.)

As to your actual symptoms, it is (again, of course) meaningless to say 
that the failure persists "no matter what I do" except insofar as it 
applies to the things you actually think of to do, something I and others 
can only guess about. So, if you need more help than the prior comments 
offer, please be more specific about the symptoms and what you try. For 
example:

1. Is the power light on the monitor green or orange when the screen is blank?

2. Do you try CTRL-ALT-F1 to get back to a vt? If so, what happens?

3. If just doing #2 doesn't show a vt display, does power-cycling the 
monitor *after* you do #2 have any effect?

4. If "no" to #3, do you at this point have an "invisible" vt? Can you, for 
example, reboot the system (assuming you are or can become root) with the 
command-line "reboot" command? (Or substitute some other test ... I can't 
offhand think of another command-line app that has an effect that shows up 
someplace other than the display, but surely there are ones that beep the 
speaker or make the CD-drive whirr or something.)

Just as a guess ... your X configuration **may** be trying to set the 
monitor to a frequency that it does not support. Half-smart monitors detect 
this and turn themselves off to avoid damage; I've hit this in the past, 
with "vintage" 14" monitors (that I, thankfully, no longer use except on 
cl-only hosts like my router).   If this is the source of the problem, you 
can usually fix it by choosing more conservative settings via 
dpkg-reconfigure or xf86config. And make sure you have ONLY 640x480 (and 
probably ONLY 8-bit color) selected.

Also, if you post again on this, please mention what settings the Slackware 
version uses for the monitor variables ... hfreq, vfreq, and whatever the 
others are. And which xserver you are using in both cases (Slackware and 
Debian).

Last thought ... the X 4.x.x did, I believe, drop support for some older 
hardware. You might be getting snagged by that (with respect to the video 
card). I don't *think* this applies to S3Virge, but I'd have to check at 
xfree86.org to be certain, and you can check there as easily as I can.

At 01:42 PM 11/11/2003 -0600, James Miller wrote:
>I'm fiddling with a test Debian install on an older machine (486 DX4 100,
>64 MB RAM, S3Virge/VX 4MB PCI video card).  I installed the base Debian
>system via network, then switched sources.list to Sid.  I used tasksel to
>install the Xwindows system: I believe this is 4.2.something.  So far, no
>luck in getting a GUI display (runs fine in command line mode).  I should
>mention that, on this same machine, I have gotten Xwindows working fine on
>another partition that uses a Slackware distro with XFree 3.3, I think.
>The monitor is an older Epson EVGA - 14" (does only 640x480, I believe).
>I want to use fluxbox as a desktop, btw.
>
>I thought getting a working display might be as simple as copying over the
>XF86Config file from my Slackware partition.  Thus far, that hasn't
>worked.  I've also tried running the command "xf86config" and entering in
>all the same values I've used for the other, working, X display.  That
>also has not worked.  By "not worked," here is what I mean: after doing
>the configuration and generating the XF86Config file with it (or copying
>it over, as the case may be), I issue "startx" from the command line.
>When I do so, I get a blank screen - almost as if the monitor is turned
>off, though there is obviously some low level of phosphor excitement.
>The display becomes totally useless at this point: I can't get to any
>virtual terminals, for example.  I can't kill X with ctrl-alt-backspace.
>I only get this blank screen display, no matter what I do.  When I get
>exasperated, I hit ctrl-alt-del, hear the system bell, and the computer
>reboots (so it is accepting keyboard input, apparently).  So, I'm a bit
>confused about what to do to get a working GUI display.
>
>One point of confusion is the two XF86Config files I find in /etc/X11: one
>is named just XF86Config, while the other is XF86Config-4.  I'm guessing
>the system is using the latter.  Any clarification on this, anyone?
>Also, I was hoping there is something like XF86Setup (like under the older
>Slack I have on this system) for Debian, but I've been unable to find
>such.  apt-get install xf86setup returns a message saying it's been
>superseded by xbase-clients.  Looking over info I've found on the web
>about xbase-clients however, doesn't reveal anything that sounds like the
>XF86Setup program (this is a GUI program for generating the XF86Config
>file that runs in VGA mode, as I understand it).  Is there such a program
>that runs under Debian?
>
>Feedback on this problem, anyone?  Further details needed, Ray?
>
>Thanks, James
>
>PS I should also mention that I edited
>/etc/X11/Xsession.d/99xfree86-common_start and inserted "fluxbox" there,
>since I understood that is where the desktop is specified.  Usual
>disclaimers about my ignorance in these matters are appended here as a
>formality.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
