From: James Miller <jamtat@mailsnare.net>
Subject: modprobe snd-cs4236 question
Date: Tue, 19 Oct 2004 18:12:22 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410191758500.1287@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm evaluating a new Debian-derivative distro called Ubuntu and have a few
questions related to getting it working right on my hardware.  I'll start
with a simple modprobe question and later pose some more complex questions
about LVM/webmin and console resolution.  So, the question about modprobe
and a sound module.

For whatever reason, Ubuntu seems not to have detected and set up the
sound hardware on this system.  It's an onboard Crystal Semiconductor 4236
chipset, and a bit of research on the web revealed that there are, in
fact, Linux modules for that chipset.  So, I went into Ubuntu and from a
console issued "sudo modprobe snd-cs4236": no error messages ensued.
Attempting to play CD's subsequently succeeded, so the right module(s)
were loaded.  Running "lsmod" revealed that several sound modules got
loaded along with snd-cs4236: I didn't see them there on previous lsmods.
So, now my question is how to get this modprobing automated.  I know it
will vary somewhat by distro, and Ubunut may not do everything the
canonical Debian way.  But it does have an /etc/modules file with module
entries very similar to those I see on my other Debian system, so it seems
this is one way to do it.  But isn't this file for loading discreet
modules?  In standard Debian, can one insert a modprobe line in there, or
are only module names allowed?  Suggestions for automating this modprobing
at boot time?  Or should I perhaps plan on entering the names of each
module that modprobe loads in that file?  I looked a bit through the
Ubunut administrative tools (uses Gnome interface) but nothing jumped out
at me for accomplishing this.  I also installed webmin, so I looked there
but also found nothing relevant on a cursory examination.  Input
appreciated.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
