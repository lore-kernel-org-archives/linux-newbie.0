From: James Miller <jamtat@mailsnare.net>
Subject: kernel 2.6.4 report, further assistance requests
Date: Tue, 13 Apr 2004 18:51:42 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0404131814170.4215@debian-emach>
References: <Pine.LNX.4.58.0404121355350.673@debian-emach> <407B2158.6070702@jpl.nasa.gov>
 <Pine.LNX.4.58.0404122152500.688@debian-emach> <407B7EE3.4000206@comcast.net>
 <Pine.LNX.4.58.0404130954380.1012@debian-emach> <Pine.LNX.4.58.0404131215470.743@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0404131215470.743@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'll make this post a sort of follow-up and report of the 2.6.4 kernel
I've been asking help with over the last day or so.  I'll also ask for
some further help/suggestions.

As you may be aware, I finally got my mouse cursor to respond to physical
mouse movement by loading a couple of modules and by discovering the
device file the kernel expected it to be at.  I am happy with the way the
mouse works, and it is an improvement over the way it's been working in
2.4.x: I have a tiny trackballish mouse, and the way the 2.6.x kernel
exagerrates motion is actually a benefit on this mouse.  I read on the web
about how some had to tweak some settings because the motion was too
exaggerated for them, but for my mouse it works better than it ever has
(there may be a way to accomplish this same sort of thing under 2.4.x
kernels, but I was never savvy enough to find out about it or do it: heck,
I didn't even know I'd like it until I stumbled onto it by trying to use
the 2.6.x kernel).  And, btw, though the console mode mouse function (gpm)
was not working earlier, it has now begun working - I know not how.
Overall, I'd say there is a noticeable increase in system speed.
Programs seem to open more quickly, shifting between desktops is quicker
and the like.  I had my doubts about claims of system speeed increases
with 2.6.x, but now that I see this kernel in action, I'd cast my lot in
with those who claim noticeable performance increases.

Though I'd like to keep using this kernel, there are a couple of things
that stand in the way: one somewhat minor, but the other a real
show-stopper.  The show-stopper is vmware: for some reason, I can't get
its modules to compile under this kernel.  I've done these vmware
recompiles several times recently for the 2.4.x kernels I've been
upgrading to, so I know I have all the ingredients in place (e.g.,
compiler, header files etc).  I tried a very recent patch for vmware, but
the process continues to abort during make.  If I have to reboot into the
2.4.25 kernel just to run vmware, I'll have to abandon my 2.6.4 efforts
for now: it just won't be worth the added hassle.  The other, less serious
problem (though one that really bugs me), is loss of console beep under
the 2.6.4 kernel.  echo -e "\a" from the command line gives an extra blank
line, as though the system is doing something, but I hear no sound.  I ran
into this problem on another 2.6.x system I was using and resolved it by
upping the volume on the PC speaker using alsamixer.  Seems kind of
backward to me that a sound system like alsa should govern the system
speaker, but if I could resolve things that easily on this system, I'd do
it.  alsamixer gives me error messages when I try to run it on this
machine ("alsamixer:  function snd_ctl_open failed for default: No such
device") and troubleshooting the whole sound system looks like a big
headache I just can't get involved in right now.  And besides, I really
don't care if I get any other sounds than the system speaker out of this
machine - at least for the time being.  Using alsa to get sound from the
system speaker looks in this case a bit like trying to kill a gnat with a
sledgehammer.

Suggestions appreciated, as always.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
