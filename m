From: "Enrique Nieves" <spanfax@charter.net>
Subject: Re: Newbie installation problem
Date: Mon, 5 Aug 2002 01:32:32 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <002301c23c41$7f442b70$6401a8c0@ENRIQUE>
References: <5.1.0.14.1.20020802181721.02153750@celine> <5.1.0.14.1.20020804005505.02187b30@celine> <5.1.0.14.1.20020804101233.0211bb00@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hello Ray,

> Several things confuse me here.
>
> First, just a detail -- does it really say "Eth0" eather than "eth0"? If
> so, then RH is introducing unnecessary confusion into the process (since
> interface names are normally all lower case). If not, then you are not
> quoting exactly.

sorry, it says eth0


> Second, what *immediately* precedes the failure message? Are you *sure*
the
> system is still in the New Hardware phase?


actually, what immediately precedes the message is "bringing up loopback
interface       [OK]"


>
> Third, I had previously thought that this message was coming from a RH
> install. Now it sounds like part of the boot/init process of an installed
> RH 7.3. Could you clarify?

It is in the first boot/init after installation.

>
> Fourth, what happens next? If we are talking about an installed RH, does
it
> complete initialization, then give you the login: prompt (or the X
> equivalent, depending on your setup)? If it does, may we see at this point
> the output of:
>
>          ifconfig -a
>          netstat -nr
>          lsmod
>          lspci


This is the output I get for:
ifconfig -a
netstat -nr
lsmod
I will send lspci output next.

[root@localhost  root] # ifconfig -a
eth0    Link encap:Ethernet    HWaddr    00:40:F4:70:3E:F3

           BROADCAST MULTICAST MTU:1500 Metric:1
me:0
            TX packets:0  errors:0  dropped:0  overruns:0  car
rier:0
            collisions:0  txqueuelen:100
            RX bytes:0 (0.0 b)    TX bytes:0    (0:0 b)
            Interrupt:10  Base address:0x3000

lo        Link encap: Local Loopback
           inet addr:127.0.0.1    Mask:255.0.0.0
           UP LOOPBACK RUNNING MTU:16436    Metric:1
            RX     packets:8    errors:0  dropped:0   overruns:0    fra
            TX     packets:8    errors:0  dropped:0   overruns:0    car
0
            collisions:0    txqueuelen:0
            RX bytes:560    (560.0 b)        TX bytes:560    (560.0 b)

[root@localhost  root] # netstat -nr
Kernel IP routing table
Destination    Gateway    Genmask    Flags MSS    Window    irtt Iface
127.0.0.0       0.0.0.0      255.0.0.0   U      40        0               0
lo

[root@localhost  root] # lsmod
Module            Size            Used    by            Not    tainted
es1371            29728         0        (autoclean)
ac97_codec    11872          0        (autoclean)        [es1371]
gameport            3392         0        (autoclean)        [es1371]



> Last, how do you *want* this system to get its IP address?
>
>          Do you plan to assign a static address by hand? If so, you
> (probably) specify this by editing the file /etc/network/interfaces .
>
>          Use a DHCP server?


Yes, I plan to use DHCP


If so, then where on the LAN are you running
> one? The Linksys? The XP system?


The Linksys

Do you see network traffic (in the form of
> appropriate blinking lights on the NIC and the hub) just before you get
the
> failure message you quote above (if you don't, then the system isn't
> managing to connect to the LAN to look for a DHCP server).


No, I'm not seeing network traffic



>
>          Those are the only real alternatives (technically there are some
> others, but no one uses them in small home setups).


Thanks again for your time and patience.

Enrique





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
