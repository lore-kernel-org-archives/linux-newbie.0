From: James Miller <jamtat@mailsnare.net>
Subject: couple of unrelated tech questions: XF86Config-4 and port 80 on
 firewall
Date: Mon, 5 Apr 2004 09:53:43 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0404050931560.1064@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello.  I've got a couple of unrelated questions on which I'd like to ask
for enlightenment on.  Neither involves and system-threatening problem,
but both are currently mystifying me and knowing answers to these
questions could help me out in the future.  I will be grateful therefore
for some input from the list on them.

1) I recently added a new video card - Radeon 7000 - to my Debian Sid
machine.  As you may (or may not) recall, I was recently having some
problems with video corruption that could be recitifed only, apparently,
by a reboot.  I traced the problem to the "shared video memory" the
onboard video output was using, and decided adding a separate card with
its own memory might solve the problem - seems to have, thus far.  But my
question has to do with why, when I ran dpkg-reconfigure xserver-xfree86
and entered values for the new card, no new XF86Config-4 was created?  At
least I did not find one in /etc/X11.  startx kept failing until I figured
out the problem was that the system was trying to use the XF86Config-4
file created for the onboard video.  I tried several times and did select,
at the end of the process, to write the new file.  Was it maybe being
saved to somewhere other than /etc/X11?  I finally had to edit
XF86Config-4 manually to get an X display from the new card.

2)I have a logging firewall (Freesco, running on an older computer) and I
look through the logs from time to time.  What I mostly see there is fw-in
deny TCP entries that tried port 80.  Of course I know simple things like
that port 80 is for http traffic.  But what confuses me is why port 80 on
my router/firewall gets these requests so frequently?  These show up about
about, say 140 times in the log each day (of course they usually come in
bunches of 3 or 6, separated by a few seconds interval, so the total is
actually lower if figured according to the IP address from which they
originate).  This firewall/router is on a university ethernet network,
btw, and the university has, of course, a website.  I assume there are
students who run web servers on their connections as well.  So, input on
why I get so many requests to port 80 on the router/firewall would be
appreciated.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
