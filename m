From: "Korosi Akos" <korosiakos@mailbox.hu>
Subject: ppp0 (urgent)
Date: Thu, 18 Jul 2002 10:03:51 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020718080351.21798.qmail@web2.mailbox.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Newbie <linux-newbie@vger.kernel.org>

Hi all!

I need an urgent help!
I try to configure a dial up internet on my other machine.
The problem is that I do not have an Ethernet card in it,
and so I don't no how could I generate a ppp interface (like ppp0)
for the connection, or how could I set up a connection without it.

So far I do these things:
I set up the connection with kppp (I think it is the fastest and
easyest way). Then I tried to connect. The "CONNECTION" is done,
but the authentication could not be done because ppp0 is not
there.
I read pppd manual, but I didn't find anything related to this problem.
I tried to generate a ppp0 interface with ifconfig but I couldn't do
it without an ethernet card:

# ifconfig ppp0 192.168.0.111 netmask 255.255.255.0
SIOCSIFADDR: No such device
ppp0: unknown interface: No such device
SIOCSIFNETMASK: No such device
ppp0: unknown interface: No such device

my ifconfig is like this:

#ifconfig -a
lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:214 errors:0 dropped:0 overruns:0 frame:0
          TX packets:214 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:14272 (13.9 Kb)  TX bytes:14272 (13.9 Kb)

I use Red Hat 7.3 (2.4.18-3 kernel i686),
and a winmodem (which I could use with the help of this List).
Tell me what other informations should I tell you.

Do I need an Ethernet card if I need just a one machine dial up
Internet connection?
Or are there any other ways?
And if there is some way, what should I do?

Please help (urgently)!

Thanks in advance,
Akos


--------------------------------------------------
http://www.mailbox.hu - Mert levelezni kell...

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
