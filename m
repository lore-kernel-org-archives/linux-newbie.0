From: Ray Olszewski <ray@comarre.com>
Subject: Re: system hangs after reboot
Date: Mon, 16 Dec 2002 08:07:23 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021216080217.021330f0@celine>
References: <atk49l$jvm$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <atk49l$jvm$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Four questions about what you posted ...

1. In the "good init" sequence, what happens next? You're asking us to 
compare a bad init to nothing (as regards the part that is bad).

2. When you say the system "hangs" and "freezes", how carefully have you 
assessed that? How long have you waited before giving up? What happens if 
you CRTL-C when the system is "hung"?

3. What is eth0 and how does it connect to the Internet? If the problem is 
associated with a DHCP failure of some type, the details of the interface 
it is using may matter.

4. Is the problem only associated with a soft ("shutdown -r") reboot? If 
you do a power-down reboot, does the system boot and init properly?

At 09:53 AM 12/16/02 +0100, Arno Seitzinger wrote:
>Hi NG,
>
>for a couple of days, my Suse Linux 8.1 (2.4.19) on a HP Omnibook XE3 Laptop
>shows a strange behaviour: it hangs after a reboot (shutdown -r now od from
>KDE). First it starts as usual, but freezes after "switching to runlevel
>5", when initializing the random number generator and the network.
>I pasted the output of a good and a bad boot.msg below.
>
>My last actions, before I noticed it doesn't reboot anymore, were:
>- use the cellphone to access internet
>- create a new user because of OpenOffice store failure
>- clear tmp directory in single user mode (because of OpenOffice store
>failure - was this stupid?)
>- new (workstation) installation of OpenOffice
>
>Nayone around who can give me a clou where to look next?
>Arno
>
>***boot.msg when system hangs
>=============================
>[...]
>Master Resource Control: previous runlevel: N, switching to runlevel:
>5
>
>done<notice>killproc: kill(30,3)
>
>INIT: Entering runlevel: 5
>
><notice>/etc/init.d/rc5.d/S01isdn start
><notice>'/etc/init.d/rc5.d/S01isdn start' exits with status 0
><notice>/etc/init.d/rc5.d/S01random start
><notice>'/etc/init.d/rc5.d/S01random start' exits with status 0
><notice>/etc/init.d/rc5.d/S05network start
>
>***boot.msg normally
>====================
>[...]
>Master Resource Control: previous runlevel: N, switching to runlevel:
>5
>
>
>done<notice>killproc: kill(30,3)
>
>INIT: Entering runlevel: 5
>
>
><notice>/etc/init.d/rc5.d/S01isdn start
><notice>'/etc/init.d/rc5.d/S01isdn start' exits with status 0
><notice>/etc/init.d/rc5.d/S01random start
><notice>'/etc/init.d/rc5.d/S01random start' exits with status 0
><notice>/etc/init.d/rc5.d/S05network start
><notice>Initializing random number generator
>done
>
>Setting up network interfaces:
>
>     lo
>done
>
>     eth0      (DHCP) startproc: execve (/sbin/dhcpcd) [ /sbin/dhcpcd -H -D
>-N -Y -t 999999 -h esw44 eth0 ], [ CONSOLE=/dev/console TERM=linux
>SHELL=/bin/sh OLDPWD=/etc/sysconfig/network INIT_VERSION=sysvinit-2.82
>RUN_FROM_RC=yes REDIRECT=/dev/tty1 COLUMNS=106
>PATH=/sbin:/usr/sbin:/bin:/usr/bin:/etc/sysconfig/network/scripts vga=791
>RUNLEVEL=5 PWD=/etc/sysconfig/network PREVLEVEL=N LINES=34 HOME=/ SHLVL=4
>_=/sbin/startproc DAEMON=/sbin/dhcpcd ]
><notice>pidofproc: dhcpcd 347



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
