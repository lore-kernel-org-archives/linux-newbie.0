From: Korosi Akos <korosi@eunet.yu>
Subject: Re: browser errors
Date: Wed, 7 Aug 2002 10:25:33 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208071025.33017.korosi@eunet.yu>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bryan Whitehead <driver@jpl.nasa.gov>, linux-newbie@vger.kernel.org

Hi Bryan!

Bryan Whitehead wrote:

> You might want to run memtest to make sure you don't have a memory
> problem..... (just to rule out a mem/hardware problem)

Unfortunately I have no program named memtest...
I looked through the rpm packages, and I didn't find anything like memtest.
Do you know in what package is it?
Or where can I get it (you know, I can not browse the net now, so if the 
program is less than 1 MB you could send it to my address...)

> >>Please remember that I am
> >>only guessing here, but I noted your comment that "HDD light is working
> >>(lighting for some time)". This makes me wonder if the system is trying
> >> to use the swap partition and running into trouble (or perhaps just
> >> getting VERY slow -- how long do you wait for the system to recover
> >> before rebooting?). Browsers tend to be memory hogs, so you might see
> >> this behavior only when running one.
> >
> > I put on CPU/MEM usage applet, and tried again.
> > You might be right about X is not freezing, just being slow (I didn't
> > wait for so many time before restart, jus about 5 minutes).
> > The next happen.
> > I start a browser (now everithing is ok), than log in to ISP (now ok
> > too), than start to browse the net, and then CPU usage is going mad
> > (full). And everithing is slow (but not freezed now, I tried now just
> > with opera). Then I started 'top' command, and saw that opera is using
> > the most the cpu. And this went to 2-3 minutes, than I stopped the
> > connection, but can not close opera. (It is still working, and can not be
> > closed, now for more than 10 minutes, and CPU usage is full (looking at
> > applet), and now I had to kill it with -9 option).
> > What can I do now?
>
> Check you java settings, Java can do this in many different browsers.
> Kaffe (a java vm shipped with most distros) is a peice of junk, and
> might be the only java available in your machine.

In Netscape (4.79) I looked for java settings, and I saw that java is enabled, 
but I can not enable java plugin! And in Application section for every java 
realtid thing there is: Unknown: Prompt User.
So I think, I have no java!?!
Can this couse the problem?
In /usr/lib/netscape/plugins there are:
- ShockwaveFlash.class
- cpPack1.jar
- libflashplayer.so
- libnullplugin.so
- plugger.so
(I put here Flashplayer plugins...)

And in /usr/lib/java/classes there are font.properties* files, and a few .jar 
files: ifc11.jar, iiop10.jar, jae40.jar, java40.jar, jio40.jar, joptio40.jar, 
jsd10.jar, ldap40.jar resource.jar and scd10.jar and thats all.

What should I check, and how?
I also searched in rpm packages for kaffe, and for any java related thing,
but I didn't find kaffe, nor any java related thing except gcc-java.
Should I get jvm?

> Also, try using a different browser like plain netscape 4.xx or mozilla.

I tryed with Netscape 4.79
The next happened:
First I started Netscape, than I connect to ISP, than start to browse, 
(everything was OK!!!), than pppd died with exit status 16 (modem hangup).
I reconnected than to ISP. Continue browsing. Then Netscape dropped out 
(vanished its window), than I started Netscape again, and then I browsed the 
net with 3 Netscape window the net for 5 minutes with n.o p.r.o.b.l.e.m!!!
It was a great feeling :-)
But previously (for 2 weeks) Netscape coused the same error, as opera (like 
freezing), but now it was OK.
I didn't changed nothing on my computer...
I will keep trying and testing, and will post to the list the results.

> >>If that is not it ... what are the last few things the logs contain prior
> >>to a reboot out of this failure?
> >
> > I tried again, to generate log messages.
> > Now the next happened:
> > Start Opera, log to ISP, start browsing. For 1-2 minutes everything is
> > ok. Then got the CPU usage to max. I wait for a while (3 minutes), the
> > CPU usage is maximal, opera is not responding to mouse click, if I drag a
> > window over opera, the window is makink a trail over opera. If I change
> > to other workspace and back, opera is white (this happened in the
> > previous case too). The connection speed graph gets zigzag (little
> > zigzag, in one second 1.5 kb than 0, and again...)
> > Then I disconnected from ISP, and than X aborted!
> > The message of X (I start it from text mode, so I see messages after
> > abort):
> >
> > Fatal server error:
> > Caught signal 11. Server aborting
>
> This is why I ask you to check your memory settings and test the memory.
> Are you overclocking?

I don't no for any program to check...
I'm not overclocking, everything works with it's default speed.

> > --------------------------------------
> > Aug  4 17:38:30 localhost kernel: hsf_break_ctl: modem does not presently
> > support sending/receiving BREAK
> > Aug  4 17:39:04 localhost modprobe: modprobe: Can't locate module ppp0
> > Aug  4 17:39:04 localhost modprobe: modprobe: Can't locate module ppp0
>
> This means ppp is built into kernel (otherwise you'd not be able to even
> connect to your ISP at all)

O.K.

> > Aug  4 17:39:04 localhost pppd[11399]: pppd 2.4.1 started by root, uid 0
> > Aug  4 17:39:04 localhost pppd[11399]: Using interface ppp0
> > Aug  4 17:39:04 localhost pppd[11399]: Connect: ppp0 <--> /dev/ttyHSF0
> > Aug  4 17:39:04 localhost /etc/hotplug/net.agent: assuming ppp0 is
> > already up Aug  4 17:39:10 localhost pppd[11399]: Remote message: Login
> > Succeeded Aug  4 17:39:10 localhost modprobe: modprobe: Can't locate
> > module ppp-compress-21
> > Aug  4 17:39:10 localhost modprobe: modprobe: Can't locate module
> > ppp-compress-21
>
> This might be a problem, you might not have the ppp_deflate module, or
> it's not built into the kernel. If this is true you might end up
> dropping ppp packets... But then again, we might get more error's from
> the pppd if ppp_deflate was missing.

I see ppp_deflate in 'cat /proc/modules'.
It means that I have it, is it right?

> > Aug  4 17:39:11 localhost pppd[11399]: local  IP address XXX.XXX.X.XXX
> > Aug  4 17:39:11 localhost pppd[11399]: remote IP address XXX.XXX.XXX.XX
> > Aug  4 17:43:20 localhost pppd[11399]: Terminating on signal 15.
>
> This might be the most pppd will tell us about missing ppp_deflate.
> Might want to check into this... maybe the rpm didn't install fully?
>
> > Aug  4 17:43:26 localhost pppd[11399]: Connection terminated.
> > Aug  4 17:43:26 localhost pppd[11399]: Connect time 4.3 minutes.
> > Aug  4 17:43:26 localhost pppd[11399]: Sent 78191 bytes, received 363790
> > bytes.
> > Aug  4 17:43:26 localhost pppd[11399]: Exit.
> > Aug  4 17:43:26 localhost /etc/hotplug/net.agent: NET unregister event
> > not supported
>
> Are you using anything in a firewire or USB port?

Yes, I have an APC Back-Ups CS 500.
(And I'm trying to get it work with powerd, but it's not going now...)
(But it is an other problem...)

> > Aug  4 17:43:44 localhost gnome-name-server[1229]: input condition is:
> > 0x11, exiting
> > Aug  4 17:43:46 localhost su(pam_unix)[11187]: session closed for user
> > root Aug  4 17:44:50 localhost gconfd (korosi-1232): GConf server is not
> > in use, shutting down.
> > Aug  4 17:44:50 localhost gconfd (korosi-1232): Exiting
>
> Because X died gconfd exits as well as gnome-name-server.

O.K.
So this is not a problem...

I hope the above informations could help you,
thanks in advance,
Akos

p.s.: Thanks to Riley Williams too, for his response. I will do as he said 
next time!



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
