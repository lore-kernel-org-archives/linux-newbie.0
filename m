From: Ray Olszewski <ray@comarre.com>
Subject: Re: couple of unrelated tech questions: XF86Config-4 and port
  80 on firewall
Date: Mon, 05 Apr 2004 10:03:39 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040405094713.01f1b8a8@celine>
References: <Pine.LNX.4.58.0404050931560.1064@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0404050931560.1064@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:53 AM 4/5/2004 -0500, James Miller wrote:
>Hello.  I've got a couple of unrelated questions on which I'd like to ask
>for enlightenment on.  Neither involves and system-threatening problem,
>but both are currently mystifying me and knowing answers to these
>questions could help me out in the future.  I will be grateful therefore
>for some input from the list on them.
>
>1) I recently added a new video card - Radeon 7000 - to my Debian Sid
>machine.  As you may (or may not) recall, I was recently having some
>problems with video corruption that could be recitifed only, apparently,
>by a reboot.  I traced the problem to the "shared video memory" the
>onboard video output was using, and decided adding a separate card with
>its own memory might solve the problem - seems to have, thus far.  But my
>question has to do with why, when I ran dpkg-reconfigure xserver-xfree86
>and entered values for the new card, no new XF86Config-4 was created?  At
>least I did not find one in /etc/X11.  startx kept failing until I figured
>out the problem was that the system was trying to use the XF86Config-4
>file created for the onboard video.  I tried several times and did select,
>at the end of the process, to write the new file.  Was it maybe being
>saved to somewhere other than /etc/X11?  I finally had to edit
>XF86Config-4 manually to get an X display from the new card.

All I can really tell you, James, is that you are correct in thinking that 
dpkg-reconfigure should be rewriting /etc/X11/XF86Config-4. Even an apt-get 
upgrade that installs a new version of xserver-xfree86 will rewrite this 
file, as I recall.

So, I suppose, your next step is to look at local factors that could be 
causing the write to fail. For example, does the userid who is running 
dpkg-reconfigure have permission to write the file? (As I recall, 
dpkg-reconfigure does not have good error reporting, so a problem of this 
sort could occur without your being told about it by the app.)

Also remember that Sid is called Unstable for a reason. Things fail from 
time to time for no obvious reason, because packages are buggy or 
mismatched. For all the warnings, I've only once seen this sort of problem 
persist for more than a day or two (with a somewhat specialized, not widely 
used, package). So you probably also want to do an apt-get update/upgrade 
(or dist-upgrade) in a day or two and see if that changes anything.


>2)I have a logging firewall (Freesco, running on an older computer) and I
>look through the logs from time to time.  What I mostly see there is fw-in
>deny TCP entries that tried port 80.  Of course I know simple things like
>that port 80 is for http traffic.  But what confuses me is why port 80 on
>my router/firewall gets these requests so frequently?  These show up about
>about, say 140 times in the log each day (of course they usually come in
>bunches of 3 or 6, separated by a few seconds interval, so the total is
>actually lower if figured according to the IP address from which they
>originate).  This firewall/router is on a university ethernet network,
>btw, and the university has, of course, a website.  I assume there are
>students who run web servers on their connections as well.  So, input on
>why I get so many requests to port 80 on the router/firewall would be
>appreciated.

If you are really curious about this (not just casually curious), a start 
would be to reverse lookup some of the addresses, since the identities 
could be a clue. It might be a probe for an attack. It might be a typo, if 
your FQN is close to some genuine Website. it might be a spider. It might 
be a stale link to your IP address on some other Web server. It might even 
be a game or a P2P app (a lot of them now fall back to using port 80, as a 
way to defeat firewalls).

You don't say if your router has a "real" IP address or is NAT'd (on its 
external interface). I'm assuming the first. If it is NAT'd. then either 
there is some bigtime error at the router or the requests are coming from 
other hosts on the LAN (maybe students who are poking around to see who has 
set up a Website, or maybe something nastier).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
