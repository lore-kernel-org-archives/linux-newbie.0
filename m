From: Ray Olszewski <ray@comarre.com>
Subject: Re: ppp0 (urgent)
Date: Thu, 18 Jul 2002 08:39:45 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020718082521.02184410@celine>
References: <20020718080351.21798.qmail@web2.mailbox.hu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020718080351.21798.qmail@web2.mailbox.hu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Korosi Akos <korosiakos@mailbox.hu>, Newbie <linux-newbie@vger.kernel.org>

First, you do not need an Ethernet card in your computer to run a ppp 
connection over a modem.

Second, you do need a modem that Linux can work with. The vast majority of 
"winmodems" are not such modems, and your identifying yours only as a 
"winmodem" does not let us figure out if yours happens to be one of the 
rare exceptions. To find that out, go to this URL and look up your specific 
modem:

         http://www.idir.net/~gromitkc/winmodem.html

Third, you do not "generate" interfaces with ifconfig; you configure 
existing interfaces with it. It's not the normal way to configure pppX 
interfaces anyway (I don't even know offhand if it is possible to 
reconfigure a pppX interface with ifconfig); part of the handskaking done 
by pppd involves getting an IP address and other settings from the remote 
end, which pppd uses to configure (usually) ppp0 and update the system's 
routing table.

I am pretty out of date with actually running pppd -- I last used it a 
couple of years ago -- but you should just need to supply its companion 
"chat" program with the information from your ISP that dials and perhaps 
authenticates you, and/or set up pppd to use CHAP or PAP auehtntication. 
The details here depends on how your ISP handles ppp connections -- there 
are no general rules, so don't ask for help on this topics without telling 
us what your ISP says about how ti does PPP.

Then you can set up pppd either to connect when told to do so manually, to 
connect on demand (that is, when the system generates TCP/IP traffic), or 
to try to keep a connection running all the time. (One used to use diald 
for the latter two options, but I'm pretty sure that newer versions of pppd 
have autodial capabilities built in.) I'm sure the PPP HowTo still covers 
all those options ... but if not, or not to your satisfaction, do write 
here again with the details of what you want to accomplish, what you are 
trying, and what goes wrong ... once you have determined that you in fact 
have a modem that Linux can work with.

At 10:03 AM 7/18/02 +0200, Korosi Akos wrote:
>Hi all!
>
>I need an urgent help!
>I try to configure a dial up internet on my other machine.
>The problem is that I do not have an Ethernet card in it,
>and so I don't no how could I generate a ppp interface (like ppp0)
>for the connection, or how could I set up a connection without it.
>
>So far I do these things:
>I set up the connection with kppp (I think it is the fastest and
>easyest way). Then I tried to connect. The "CONNECTION" is done,
>but the authentication could not be done because ppp0 is not
>there.
>I read pppd manual, but I didn't find anything related to this problem.
>I tried to generate a ppp0 interface with ifconfig but I couldn't do
>it without an ethernet card:
>
># ifconfig ppp0 192.168.0.111 netmask 255.255.255.0
>SIOCSIFADDR: No such device
>ppp0: unknown interface: No such device
>SIOCSIFNETMASK: No such device
>ppp0: unknown interface: No such device
>
>my ifconfig is like this:
>
>#ifconfig -a
>lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           UP LOOPBACK RUNNING  MTU:16436  Metric:1
>           RX packets:214 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:214 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:0
>           RX bytes:14272 (13.9 Kb)  TX bytes:14272 (13.9 Kb)
>
>I use Red Hat 7.3 (2.4.18-3 kernel i686),
>and a winmodem (which I could use with the help of this List).
>Tell me what other informations should I tell you.
>
>Do I need an Ethernet card if I need just a one machine dial up
>Internet connection?
>Or are there any other ways?
>And if there is some way, what should I do?


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
