From: Korosi Akos <korosi@eunet.yu>
Subject: Re: browser errors
Date: Sun, 4 Aug 2002 18:17:57 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208041817.57248.korosi@eunet.yu>
References: <5.1.0.14.1.20020803131452.02184790@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020803131452.02184790@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Hi Ray and Peter!

>  From your report, it is difficult to know what is really happening. I
> would **guess**, though, that fonts are not your real problem.

After I linked them statically, and the problem continued to appear, I thought 
about this too...

> What are the basics of your hardware? Especially, how much RAM does your
> system have, and how big is your swap partition? 

I have an Athlon XP 1700+ processor, with 256 MB DDR RAM, and 
500 MB swap partition.
Abit KR7A motherboard. Maxtor 40 GB HDD.
Pioneer DVDrom.
Should I write anything else? If yes, what?

And here to Peter:
> Most likely this is a problem of RH7.3 with some video cards. I had the
> same and had to reinstall RH7.1 to get on working.

I have an ATI Radeon 7500. I bought it becouse I heard the problems
with Nvidia, and I heard ATI is a good choise for Linux.
Could the problem couse an ATI card?

> Please remember that I am
> only guessing here, but I noted your comment that "HDD light is working
> (lighting for some time)". This makes me wonder if the system is trying to
> use the swap partition and running into trouble (or perhaps just getting
> VERY slow -- how long do you wait for the system to recover before
> rebooting?). Browsers tend to be memory hogs, so you might see this
> behavior only when running one.

I put on CPU/MEM usage applet, and tried again.
You might be right about X is not freezing, just being slow (I didn't wait for
so many time before restart, jus about 5 minutes).
The next happen.
I start a browser (now everithing is ok), than log in to ISP (now ok too), 
than start to browse the net, and then CPU usage is going mad (full).
And everithing is slow (but not freezed now, I tried now just with opera).
Then I started 'top' command, and saw that opera is using the most the cpu.
And this went to 2-3 minutes, than I stopped the connection, but can not close
opera. (It is still working, and can not be closed, now for more than 10 
minutes, and CPU usage is full (looking at applet), and now I had to kill it 
with -9 option).
What can I do now?

> If that is not it ... what are the last few things the logs contain prior
> to a reboot out of this failure?

I tried again, to generate log messages.
Now the next happened:
Start Opera, log to ISP, start browsing. For 1-2 minutes everything is ok.
Then got the CPU usage to max. I wait for a while (3 minutes), the CPU usage 
is maximal, opera is not responding to mouse click, if I drag a window over 
opera, the window is makink a trail over opera. If I change to other 
workspace and back, opera is white (this happened in the previous case too).
The connection speed graph gets zigzag (little zigzag, in one second 1.5 kb 
than 0, and again...)
Then I disconnected from ISP, and than X aborted!
The message of X (I start it from text mode, so I see messages after abort):

Fatal server error:
Caught signal 11. Server aborting

(then the text that if I want to send a bug report I have to include all
 XFree log messages...)

I could send the full XFree log, but is is around 50 kB...

And here is the /var/log/messages with messages generated at the that time:
(I put X-es to ip addresses, because I don't know if it is a security problem 
if I tell you. Ray wrote previously that I should cut off passwords, and I 
don't know if I should do the same with ip-s...)
--------------------------------------
Aug  4 17:38:30 localhost kernel: hsf_break_ctl: modem does not presently 
support sending/receiving BREAK
Aug  4 17:39:04 localhost modprobe: modprobe: Can't locate module ppp0
Aug  4 17:39:04 localhost modprobe: modprobe: Can't locate module ppp0
Aug  4 17:39:04 localhost pppd[11399]: pppd 2.4.1 started by root, uid 0
Aug  4 17:39:04 localhost pppd[11399]: Using interface ppp0
Aug  4 17:39:04 localhost pppd[11399]: Connect: ppp0 <--> /dev/ttyHSF0
Aug  4 17:39:04 localhost /etc/hotplug/net.agent: assuming ppp0 is already up
Aug  4 17:39:10 localhost pppd[11399]: Remote message: Login Succeeded
Aug  4 17:39:10 localhost modprobe: modprobe: Can't locate module 
ppp-compress-21
Aug  4 17:39:10 localhost modprobe: modprobe: Can't locate module 
ppp-compress-21
Aug  4 17:39:11 localhost pppd[11399]: local  IP address XXX.XXX.X.XXX
Aug  4 17:39:11 localhost pppd[11399]: remote IP address XXX.XXX.XXX.XX
Aug  4 17:43:20 localhost pppd[11399]: Terminating on signal 15.
Aug  4 17:43:26 localhost pppd[11399]: Connection terminated.
Aug  4 17:43:26 localhost pppd[11399]: Connect time 4.3 minutes.
Aug  4 17:43:26 localhost pppd[11399]: Sent 78191 bytes, received 363790 
bytes.
Aug  4 17:43:26 localhost pppd[11399]: Exit.
Aug  4 17:43:26 localhost /etc/hotplug/net.agent: NET unregister event not 
supported
Aug  4 17:43:44 localhost gnome-name-server[1229]: input condition is: 0x11, 
exiting
Aug  4 17:43:46 localhost su(pam_unix)[11187]: session closed for user root
Aug  4 17:44:50 localhost gconfd (korosi-1232): GConf server is not in use, 
shutting down.
Aug  4 17:44:50 localhost gconfd (korosi-1232): Exiting
--------------------------------------------------
Thet's all, I hope this could help you, to figure out the problem.


Hope the best,
Akos



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
