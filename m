From: chuck gelm <nc8q@gelm.net>
Subject: Re: ppp0 (urgent)
Date: Fri, 19 Jul 2002 10:35:26 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D3823AE.10B50713@gelm.net>
References: <20020719102636.12295.qmail@web2.mailbox.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Korosi Akos <korosiakos@mailbox.hu>
Cc: Newbie <linux-newbie@vger.kernel.org>

Hi, Akos:

 I am a newbie too, but since I didn't see a response
from the gurus yet, I'll post some comments.

Korosi Akos wrote:
> 
> Hi!
> 
> Ray wrote:
> > I don't use kppp and never have ... but assuming it is a fairly
<snip>
> The output of kppp in /var/log/messages was this :
> 
> Jul 19 10:05:41 localhost kernel: hsf_break_ctl: modem does not
> presently support sending/receiving BREAK
> Jul 19 10:06:11 localhost modprobe: modprobe: Can't locate module ppp0
> Jul 19 10:06:11 localhost modprobe: modprobe: Can't locate module ppp0
pppd.o is a modules ppp0 may not be a module.
Are you doing:
modprobe pppd
?

> Jul 19 10:06:11 localhost pppd[12233]: pppd 2.4.1 started by root, uid 0
> Jul 19 10:06:11 localhost modprobe: modprobe: Can't locate module ppp0
> Jul 19 10:06:11 localhost pppd[12233]: Using interface ppp0
> Jul 19 10:06:11 localhost pppd[12233]: Connect: ppp0 <--> /dev/ttyHSF0
> Jul 19 10:06:11 localhost /etc/hotplug/net.agent: assuming ppp0 is
> already up
> Jul 19 10:06:41 localhost pppd[12233]: Terminating on signal 15.
> Jul 19 10:06:47 localhost pppd[12233]: Connection terminated.
> Jul 19 10:06:47 localhost pppd[12233]: Receive serial link is not 8-bit
> clean:
> Jul 19 10:06:47 localhost pppd[12233]: Problem: all had bit 7 set to 0
 This looks like your modem is set for 7 [even|odd|no] parity.
You probably need to set 8 bits, no parity, 1 stop bit; "8N1".

HTH, Chuck

> Jul 19 10:06:47 localhost pppd[12233]: Exit.
> Jul 19 10:06:47 localhost /etc/hotplug/net.agent: NET unregister event
> not supported
> 
> on 10:06:47 I pulled out the phone cable to cut off the connection, so
> those
> messages are because of that.
> 
> If this is not enough (and I think it is not), please tell me what other
> information should I
> tell to you.
> 
> I wonder why is that when I made a dial up connection on the other
> macine (with Ethernet card)
> there wasn't any problems?
> I tought that was because of the Ethernet card, so that is why I thought
> that I need one
> in this machine too, but if not, than could there be any relation
> between ppp0 and Ethernet?
> 
> Now I started to look through pppd and chat, but I don't really know
> what I need for a
> dial up connection.
> When a connection is made with chat and it logged in, and pppd got back
> to work, do I need
> anything else, or from that I can use Internet with a browser??
> 
> I will keep on trying with kppp and chat and I will send you all
> informations that I
> get from log messages.
> 
> Thank you for your help (for now),
> Akos
> 
> --------------------------------------------------
> http://www.mailbox.hu - Mert levelezni kell...
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
