From: Ray Olszewski <ray@comarre.com>
Subject: Re: ppp0 (urgent)
Date: Fri, 19 Jul 2002 08:29:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020719080706.02183110@celine>
References: <20020719102636.12295.qmail@web2.mailbox.hu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020719102636.12295.qmail@web2.mailbox.hu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Korosi Akos <korosiakos@mailbox.hu>, Newbie <linux-newbie@vger.kernel.org>

First things first. The problem is here:

         Jul 19 10:06:11 localhost pppd[12233]: Connect: ppp0 <--> /dev/ttyHSF0
         Jul 19 10:06:11 localhost /etc/hotplug/net.agent: assuming ppp0 is
         already up
         Jul 19 10:06:41 localhost pppd[12233]: Terminating on signal 15.

pppd makes the ppp0 interface (first line), but after 30 seconds (last 
line) it has been unable to complete handshaking with the other end, so 
terminates. Why can't it handshake? There is no info in the logs to tell 
us. I don't know how kppp invokes pppd, but you want to have it invoked 
with more reporting (in the pppd man page, look up the settings for "debug" 
and "kdebug") so you can see what problem pppd is encountering. BTW, I 
don't know what the program "/etc/hotplug/net.agent" does or why a package 
that provides USB support is getting invoked as part of pppd startup.

Second, as someone else already observed, ppp0 is not a module. Since pppd 
is able to start a a ppp0 interface, I'd guess that your kernel has ppp 
support built in. But if not, you need (I think) the ppp.o module, not 
ppp0.o, in whatever file causes the modprobe invocation (probably 
/etc/modules.conf or /etc/conf.modules, whichever way your Linux distro 
specifies module aliases).

Third, since you keep bringing Ethernet cards up, I guess you don't believe 
my responses on that score, so I won't discuss Ethernet any more.

Fourth, you ask:

         Now I started to look through pppd and chat, but I don't really know
         what I need for a
         dial up connection.
         When a connection is made with chat and it logged in, and pppd got 
back
         to work, do I need
         anything else, or from that I can use Internet with a browser??

If chat returns control to pppd, and then if pppd is able to configure the 
interface, then you should have a working Internet connectios. But that 
second "if" is where your problems have been. Once you think you have pppd 
running the connection successfully, you can check to see if it is set up 
right with

         ifconfig -a  (to see if the ppp0 interface is present and configured)
         netstat -nr  (to see if the routing table has an entry for the 
Interne conection)

If those two commands give good results, then your Internet connection is 
working and you should be able to access the usuall assortment of Internet 
services.

Fifth, you said in an earlier message that this modem works properly with 
another Linux machine. If your standard for "works" was "sets up a ppp 
connection successfully", then you might want to send us the equivalent 
logfile outout from that host (or examine it yourself) to see what is 
different between it and the present host.

Finally, am I correct in assuming that you have successfully set up a ppp 
link to this ISP before? If so, you might provide us with the details of 
how you did it (what authentication, mainly, but ideally everything EXCEPT 
your password). If not ... have you considered the possibility of a problem 
at the ISP end (the"bit 7 set to 0" log entry concerns me a bit; that 
sounds like a shell connection, not ppp)?

At 12:26 PM 7/19/02 +0200, Korosi Akos wrote:
>Hi!
>
>Ray wrote:
> > I don't use kppp and never have ... but assuming it is a fairly
>standard pppd implementation, it should create the ppp0 interface once
>it succeeds in dialing to and handshaking with the ISP. To say more, I
>(and no doubt others) will need to see the logfile output of kppp and
>any processes it calls (edited ONLY to replace any *passwords* with
>something obvious like XXXXXXX, please).
>
>So it look like there is an error with handshaking..
>I will try to change some options in kppp.
>
>The output of kppp in /var/log/messages was this :
>
>Jul 19 10:05:41 localhost kernel: hsf_break_ctl: modem does not
>presently support sending/receiving BREAK
>Jul 19 10:06:11 localhost modprobe: modprobe: Can't locate module ppp0
>Jul 19 10:06:11 localhost modprobe: modprobe: Can't locate module ppp0
>Jul 19 10:06:11 localhost pppd[12233]: pppd 2.4.1 started by root, uid 0
>Jul 19 10:06:11 localhost modprobe: modprobe: Can't locate module ppp0
>Jul 19 10:06:11 localhost pppd[12233]: Using interface ppp0
>Jul 19 10:06:11 localhost pppd[12233]: Connect: ppp0 <--> /dev/ttyHSF0
>Jul 19 10:06:11 localhost /etc/hotplug/net.agent: assuming ppp0 is
>already up
>Jul 19 10:06:41 localhost pppd[12233]: Terminating on signal 15.
>Jul 19 10:06:47 localhost pppd[12233]: Connection terminated.
>Jul 19 10:06:47 localhost pppd[12233]: Receive serial link is not 8-bit
>clean:
>Jul 19 10:06:47 localhost pppd[12233]: Problem: all had bit 7 set to 0
>Jul 19 10:06:47 localhost pppd[12233]: Exit.
>Jul 19 10:06:47 localhost /etc/hotplug/net.agent: NET unregister event
>not supported
>
>on 10:06:47 I pulled out the phone cable to cut off the connection, so
>those
>messages are because of that.
>
>If this is not enough (and I think it is not), please tell me what other
>information should I
>tell to you.
>
>I wonder why is that when I made a dial up connection on the other
>macine (with Ethernet card)
>there wasn't any problems?
>I tought that was because of the Ethernet card, so that is why I thought
>that I need one
>in this machine too, but if not, than could there be any relation
>between ppp0 and Ethernet?
>
>Now I started to look through pppd and chat, but I don't really know
>what I need for a
>dial up connection.
>When a connection is made with chat and it logged in, and pppd got back
>to work, do I need
>anything else, or from that I can use Internet with a browser??
>
>I will keep on trying with kppp and chat and I will send you all
>informations that I
>get from log messages.




--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
