From: "rgomez@bancomer.com" <rgomez@bancomer.com>
Subject: FW: Re: two eth devices ...
Date: Mon, 26 Jan 2004 18:48:18 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4011C87400000C22@mail-bcm02.alestra.net.mx>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="========/4011C87400000C22/mail-bcm02.alestra.net.mx"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--========/4011C87400000C22/mail-bcm02.alestra.net.mx
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



--========/4011C87400000C22/mail-bcm02.alestra.net.mx
Content-Type: message/rfc822
Content-Disposition: inline

Received: from [148.244.43.6] by mail-bcm02.alestra.net.mx with HTTP; Mon, 26 Jan 2004 18:46:25 -0600
Date: Mon, 26 Jan 2004 18:46:25 -0600
Message-ID: <4011C87400000C1A@mail-bcm02.alestra.net.mx>
In-Reply-To: <5.1.0.14.1.20040126112512.01f943f0@celine>
From: "rgomez@bancomer.com" <rgomez@bancomer.com>
Subject: Re: two eth devices ...
To: "Ray Olszewski" <ray@comarre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have 2 interfaces, but i don't know what to do with

# if config -a
eth0      Link encap:Ethernet  HWaddr 00:C0:4F:97:2D:8D  
          inet addr:150.100.106.24  Bcast:150.100.106.255  Mask:255.255.2=
55.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:301002 errors:3 dropped:0 overruns:0 frame:3
          TX packets:13656 errors:0 dropped:0 overruns:0 carrier:14
          collisions:791 txqueuelen:100 
          RX bytes:97659433 (93.1 Mb)  TX bytes:1976281 (1.8 Mb)
          Interrupt:11 Base address:0xec80 

eth1      Link encap:Ethernet  HWaddr 00:A0:24:0B:56:3C  
          inet addr:150.100.107.199  Bcast:150.100.107.255  Mask:255.255.=
255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:290096 errors:3 dropped:0 overruns:0 frame:3
          TX packets:1163 errors:0 dropped:0 overruns:0 carrier:0
          collisions:62 txqueuelen:100 
          RX bytes:94395209 (90.0 Mb)  TX bytes:112613 (109.9 Kb)
          Interrupt:10 Base address:0x230 

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:297 errors:0 dropped:0 overruns:0 frame:0
          TX packets:297 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:32918 (32.1 Kb)  TX bytes:32918 (32.1 Kb)

# ip link show
1: lo: <LOOPBACK,UP> mtu 16436 qdisc noqueue 
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: eth0: <BROADCAST,MULTICAST,UP> mtu 1500 qdisc pfifo_fast qlen 100
    link/ether 00:c0:4f:97:2d:8d brd ff:ff:ff:ff:ff:ff
3: eth1: <BROADCAST,MULTICAST,UP> mtu 1500 qdisc pfifo_fast qlen 100
    link/ether 00:a0:24:0b:56:3c brd ff:ff:ff:ff:ff:ff

# uname -a
Linux naboo 2.4.20-8 #1 Thu Mar 13 16:42:56 EST 2003 i586 i586 i386 GNU/L=
inux

::::::::::::::
/etc/sysconfig/networking/profiles/default/ifcfg-eth0
::::::::::::::
DEVICE=3Deth0
ONBOOT=3Dyes
BOOTPROTO=3Ddhcp
TYPE=3DEthernet
USERCTL=3Dno
PEERDNS=3Dno
::::::::::::::
/etc/sysconfig/networking/profiles/default/ifcfg-eth1
::::::::::::::
DEVICE=3Deth1
ONBOOT=3Dyes
BOOTPROTO=3Ddhcp
TYPE=3DEthernet
USERCTL=3Dno
PEERDNS=3Dno



$>-- Mensaje Original --
$>Date:	Mon, 26 Jan 2004 11:35:52 -0800
$>To:	linux-newbie@vger.kernel.org
$>From:	Ray Olszewski <ray@comarre.com>
$>Subject: Re: two eth devices ...
$>
$>
$>At 12:29 PM 1/26/2004 -0600, rgomez@bancomer.com wrote:
>Hi, I've been assigned a PC with two eth devices, What utility can I giv=
e
>them? or is better if i unplug one, my network is configured
>to assign an IP address via dhcp.
>
>As you can see I
$>m a Linux newbie in network thems...
>TKS

I cannot know for certain what is installed on your system. The usual 
command for checking eth* interfaces (not "devices") is

         ifconfig -a



Some newer, or stripped down, Linux systems may lac
$> this command. In that 
case, see if you have the command "ip" on your system. If you do, the com=
mand

         ip link show

should give you information about the interfaces.

I am assunming here that your Linux kernel has in it, or loads modul
$>s that 
provide, support for the actual NICs in your system. If not, you don't ha=
ve

the eth* interfaces, and you'll need to do something to create them. I 
cannot say what without knowing a few more things, namely ...

         what sorts of NICs
$>they are (you may have to open the case to find 
out, or the command "lspci" may tell you)
         what Linux distrubution and version you are using
         what Linux kernel ("uname -a") you are running, and whether it
is 
a stock or a custom-co
$>piled kernel.

You should be logged on as root to execute any of the commands I listed
above.

As to whether you should "unplug" one ... it depends on unreported detail=
s

of your setup. Again, approaches vary a lot from one Linux distro to 
anoth
$>r, but newer versions are tending to use /etc/network/interfaces as 
the config file for the eth* (and some other) network interfaces. You mig=
ht

see if you have such a file and, if you do, what it says about setup of

eth0 and eth1. Which of them (
$>r are both) is set up here to get an IP 
address via DHCP?

And am I correct in inferring that both eth* interfaces are connected to

the *same* network (the same LAN, probably)?If they are, you probably wan=
t

to ask the sysadmin if the network is
$>setup to allow the interfaces to be 
bridged, so they can work together to double your connection speed. If th=
ey

are not, advising you as to what you should do depends enough on what the=
y

are connected to that no advice can make sense without your
$>providing more 
information.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the 
$>AQ at http://www.linux-learn.org/faqs





--========/4011C87400000C22/mail-bcm02.alestra.net.mx--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
