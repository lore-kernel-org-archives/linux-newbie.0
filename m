From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: ntp - how?
Date: Fri, 02 Aug 2002 16:28:09 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D4AEB59.DDC233EE@gelm.net>
References: <3D36DDA3.FA0F073C@gmx.net>
	 <02072506225706.04469@unix.pa3gcu>
	 <3D406BBB.E208E07B@gelm.net>
	 <02072606105100.00370@unix.pa3gcu>
	 <5.1.0.14.1.20020726164536.02296360@celine>
	 <5.1.0.14.1.20020728140342.0228b3c0@celine>
	 <3D4498AF.42DC0D8C@gelm.net>
	 <3D45AD28.7623B094@gelm.net> <5.1.0.14.1.20020802092710.021c8d50@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi, Ray:
Thanks.

Ooopps, I reported earlier that the kernel was 2.4.18.

It is kernel 2.2.19 from Slackware8.0 on a very old Compaq
80486dx33, 32 Megabytes of RAM, 40 Gigabyte hd,
internet access is via aDSL modem, eth1 & eth2 are 3c509s.
pppoe is Roaring Penguin v3.5 with firewall option #2,
Masquerade.

ntpdate 4.0.99k23 Sun Apr  8 15:36:31 PDT 2001 (1)

'ls -l /usr/sbin ntp*' -> all files are dated
April 8, 2001.  I am assuming that all ntp* files
are version 4.0.99k23.  :-|

Regards, Chuck

Ray Olszewski wrote:
> 
> At 06:07 AM 8/2/02 -0400, Chuck Gelm wrote:
> >Howdy, Y'all:
> >
> >  I stuck trying to run ntpd.  I don't see any updates
> >when I run 'ntpq -p'.  When I run 'ntpdate host',
> >all of the hosts I've tried return
> >"[date] : no server suitable for synchronization found"
> >What is wrong?
> 
> Well .. the obvious possibilities are
> 
>          1. your system cannot reach the hosts you try

I can 'ping' some of the ones listed in the #2 list found
in the Time-Precision-Howto.  I entered into my '/etc/ntp.conf'
the ones I could ping. ;-)

>          2. the hosts you try are not ntp servers

Duh. They are the ones I found by following the links on the
'Time-Precision-Howto'. :-|  Most have 'ntp', 'time', 'tick',...
in their host_name. :-|  I can provide my 'ntp.conf' if it
would help.
 
>          3. your system is behind a firewall that interferes with access
> to the ntp port

 The system is the 'firewall'.  Doh! Do I need to allow a port
 less than 1024?  I am running the default rule set of ipchains
 that RoaringPenguin sets, 'ipchains -L':

Chain input (policy ACCEPT):
target  prot opt     source   destination ports
DENY    udp  ----l-  anywhere anywhere    any ->   0:1023
DENY    tcp  ----l-  anywhere anywhere    any ->   0:1023
DENY    tcp  -y--l-  anywhere anywhere    any ->   any
DENY    icmp ----l-  anywhere anywhere    echo-request
Chain forward (policy DENY):
target  prot opt     source   destination  ports
MASQ    all  ------  anywhere anywhere     n/a
Chain output (policy ACCEPT):


> 
> Post the details of what you have been trying and we'll try to help you
> figure out the exact problem.
> 
> BTW, ntpdate is a different program from ntpd (on Debian systems, it is a
> completely separate install from ntpd), so you might want to be a bit more
> exact about what ntp package you are trying to run. Also what Linux distro.
> 
> --
> -------------------------------------------"Never tell me the odds!"--------
> Ray Olszewski                                   -- Han Solo
> Palo Alto, California, USA                        ray@comarre.com
> -------------------------------------------------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
