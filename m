From: Adam Luchjenbroers <adam@luchjenbroers.com> (by way of Adam
	Luchjenbroers <adam@luchjenbroers.com> by way of Adam Luchjenbroers
	<adam@luchjenbroers.com>)
Subject: Lock-ups with 2.4.19 kernel
Date: Tue, 27 Aug 2002 20:14:21 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208272014.21373.adam@luchjenbroers.com>
Reply-To: adam@luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have been getting unusual lockups recently, my system is

Hardware
Athlon 900MHz
Soltek SL-75DRV5 Motherboard
512MB Corsair DDR (DDR333)
nVidia GeForce DDR 256
Creative Vibra 128 PCI
3Com 905B-TX Ethernet
40GB SeaGate ST340810A
Sony CD-RW CRX175A1

There are three devices unidentified by HardDrake

Software
Linux Mandrake 8.1
Kernel 2.4.19
nVidia Drivers 1.0-2960
KDE 3.0.2

I have had four crashes over the past 3-4 weeks. 1 playing Quake3 a while
 ago, 1 3 days ago playing Kohan (Loki version, demo) and two today.

The first one today was while my machine was unattended, I went to access it
via FTP and couldn't, also tried pinging it, and got no response.

The second one was in the middle of a game of Kohan.

I have done a cat <logfile> | grep "Aug 24" &> <file> to my syslog and kernel
logs. The files are available on request.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
