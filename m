From: Ray Olszewski <ray@comarre.com>
Subject: Re: Networking issue
Date: Thu, 02 Jan 2003 20:24:58 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030102200401.02126210@celine>
References: <5.1.0.14.1.20030102082846.021bb750@celine>
 <5.1.0.14.1.20030102082846.021bb750@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200301031245.09599.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Ok, mystery solved. At least for the pings. Your system is set for some 
reason not to reply to pings (is this a Mandrake default? does anyone here 
know?). This is the relevant part:

> >          5. The unedited output of
> > "cat  /proc/sys/net/ipv4/icmp_echo_ignore_all"
>
>1

Since ping uses icmp echo and the "1" means the kernel is set to ignore 
this packet type, you get no ping responses. If you want to change (dare I 
say "fix"?) this, do it with

         echo 0 > /proc/sys/net/ipv4/icmp_echo_ignore_all

(which you can add to an init file to do during the boot/init process).

As to the ssh problem ... whatever it is, it has a different cause, not 
this. I still don't know enough about what happens to help you here, but 
from the general stuff you provide, I'd say the problem is specific either 
to the sshd daemon on the Linux system or to the gtelnet client on whatever 
host you are using as a workstation (you forgot to mention what OS it 
runs). You write:

>I use gtelnet to connect from my workstation (it supports using ssh), it 
>tries
>to connect but then fails. Oddly enough, http and ftp servers seem to work
>fine (only just tested them)

I don't know getlnet ... from the "g", I'm guessing it is a Linux (GNU) 
app, but I don't even really know that. So let's try again, with a bit more 
detail.

1. What system is gtelnet running on?

2. When you say that "http and ftp servers seem to work", are you testing 
them *from* the same workstation on which ssh fails? If not, make sure the 
workstation has a proper interface setup and routing table (since I don't 
know its OS, I can't tell you how).

3. From the Mandrake system, can you ssh to localhost (or to 127.0.0.1)? If 
not, EXACTLY what error does the ssh client report? (If you don't have an 
ssh client installed, see what "telnet localhost 22" does. It should 
display the banner from the sshd daemon.)

4. When gtelnet "then fails", does it display any sort of error message? If 
you are interpreting no response as a failure, how long are you waiting?

5. In the ifconfig output you posted here, there are packet counts for RX 
and TX packets on each interface. After you try and fail to ssh from the 
wworkstation to the server, are the server's eth0 packet counts higher? If 
ssh'ing to localhost on the server also fails, the same question for its lo 
interface.

6. I'm assuming you are running sshd as a daemon and not through inetd. But 
let's check the basics here. So ...

         A. If you do a "ps ax | grep ssh", does sshd show up on the 
process list?
         B. If you do a "netstat -nl", does port 22 show up on the list? It 
will be a line something like this:
         tcp        0      0 0.0.0.0:22              0.0.0.0:*   LISTEN

7. After a failure, does sshd log anything? I'm not sure how Mandrake keeps 
its logs, but something like this should work (as root):

         grep sshd /var/log/*

8. Finally, do you have anything in your configuration that blocks ssh 
connects from this workstation? Are there any relevant entries in 
/etc/hosts.deny?

There are probably more things to check, but this set is a good start.

At 12:45 PM 1/3/03 +0930, Adam Luchjenbroers wrote:
>On Friday 03 Jan 2003 2:08 am, Ray Olszewski wrote:
> > Your report is way too sketchy to let anyone spot the problem. Post a
> > followup with this information:
> >
> >          1. Unedited output of "ifconfig -a"
>
>eth0      Link encap:Ethernet  HWaddr 00:09:5B:1A:45:6D
>           inet addr:192.168.0.90  Bcast:192.168.0.255  Mask:255.255.255.0
>           UP BROADCAST NOTRAILERS RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:527043 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:252053 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:100
>           RX bytes:763516605 (728.1 Mb)  TX bytes:16678999 (15.9 Mb)
>           Interrupt:5 Base address:0x1000
>
>lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           UP LOOPBACK RUNNING  MTU:16436  Metric:1
>           RX packets:12 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:12 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:0
>           RX bytes:1008 (1008.0 b)  TX bytes:1008 (1008.0 b)
>
> >          2. Unedited output of "netstat -nr'
>
>Kernel IP routing table
>Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
>192.168.0.0     0.0.0.0         255.255.255.0   U        40 0          0 eth0
>127.0.0.0       0.0.0.0         255.0.0.0       U        40 0          0 lo
>0.0.0.0         192.168.0.1     0.0.0.0         UG       40 0          0 eth0
>
> >          3. Unedited output of "iptables -nvL"
>
>Chain INPUT (policy ACCEPT 0 packets, 0 bytes)
>  pkts bytes target     prot opt in     out     source
>destination
>
>Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
>  pkts bytes target     prot opt in     out     source
>destination
>
>Chain OUTPUT (policy ACCEPT 0 packets, 0 bytes)
>  pkts bytes target     prot opt in     out     source
>destination
>
>
> >          4. An EXACT description of what the ping failures look like. (Does
> > ping fail silently, or does it fail with an error message? If there's a
> > message, what is it). Do this for (a) 127.0.0.1 pinged from the Mandrake
> > host and (b) its eth0 IP address pinged from some other host (and mention
> > what OS that host is running, since that affects the wording of ping error
> > messages).
>
>No error messages, replies just don't get received
>
> >          5. The unedited output of
> > "cat  /proc/sys/net/ipv4/icmp_echo_ignore_all"
>
>1
>
> >          6. An EXACT description of what the ssh failures look like.
> > Include info on how you run sshd (as a deamon by itself or through inetd),
> > any error messages sshd logs, and how long you wait before deciding that
> > sshd has failed (if you haven't been waiting for 5 minutes before giving
> > up, please do so, so we can rule out DNS-related logging errors).
>
>Default setup for Mandrake 9, how do I check?
>
>I use gtelnet to connect from my workstation (it supports using ssh), it 
>tries
>to connect but then fails. Oddly enough, http and ftp servers seem to work
>fine (only just tested them)
>
>I want SSH so I don't have to use this second monitor and keyboard to do
>everything (messy)
>
> > Do all of this WITHOUT installing Shorewall. Let's fix the problems one at
> > a time ... get your basic conectivity working, then get the system properly
> > firewalled. Oh, also mention what kernel version you are using ("uname -a")
> > and whether you compiled it yourself or it is a stock Mandrake kernel.
>
>Would be the stock Mandrake 9 kernel (2.4.19-16mdk)


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
