From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Fwd: Re: tuning iptables (was Who is running Red Hat 8.0 and
  Roaring Penguin?)
Date: Thu, 5 Dec 2002 16:35:58 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212052135.gB5LZwi04232@hartford-hwp.com>
References: <5.1.0.14.1.20021204163620.021046c0@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20021204163620.021046c0@celine> (message from Ray
	Olszewski on Wed, 04 Dec 2002 16:36:59 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

> Haines -- Your system is using that bogus "To:
> inux-newbie@hartford-hwp.com" address again.

That grieves me! I suspect it is happening only when I initiate a
message rather than just reply to it, as I am doing now (fingers
crossed). One reason I'm so anxious to get my iptables straightened
out is that I can then stop using this VERY sick system.

> >First, could you explain the symptom ("extraordinarily large turn
> >around times") in a bit more detail?

> >The only oddity is on the summary line, which reads
> >
> >         3 packets transmitted, 3 received, 0% loss, time 10308ms
> >         rtt min/avg/max/mdev = 58.705/59.820/60.683/0.874 ms
> >
> >My version of ping (from Debian Sid) displays a different summary
> >line, one that omits the odd "10308ms" entry above completely.

I just ran ping on my present machine and here also end up with a big
"time value," but since it is far greater than the sum of the pings,
I'll just ignore it. The turn around times above are about twice what
I get for my current machine. Normally when I ping, one goes out every
second. On the setup I'm having trouble with, it was at least ten
seconds between pings, but that's not the same as the turn around time
reported by ping.

> >Overall, these rulesets are a mess. Just to get things working at
> >the test level, I'd suggest you simply delete them and set policies
> >to ACCEPT.

I'm looking at packet-filtering-HOWTO and trying to make sense of
it. I guess: # iptables -X will flush all chains. I assume I can do
this while not on line, for else within thirty seconds a good portion
of the world's population will be messing with my innards ;-(

> >If you verify that everything works right with that setup,

Is flushing all chains a "setup"? That is, does it mean the table
still exists in the kernel, but there is no longer any filtering of
anything. By "working right," does that mean going on line with myself
exposed in this way, and once there, try a fetchmail to see if it
works? 
 
> >you can begin to investigate setting up a working firewall. To
> >comment on that part, I'd need to know a bit about the system in
> >question, specifically ..

I'm running a stand-alone workstation, with its sole NIC attached to a
DSL adapter. 

As for the services I actually run, perhaps the services defined for
my current machine will be indicative. Active internet connections
(only servers):

tcp        0      0 *:32768                 *:*  LISTEN     
tcp        0      0 *:wnn4_Kr               *:*  LISTEN     
tcp        0      0 hartford-hwp.com:32769  *:*  LISTEN     
tcp        0      0 *:printer               *:*  LISTEN     
tcp        0      0 *:sunrpc                *:*  LISTEN     
tcp        0      0 *:x11                   *:*  LISTEN      
tcp        0      0 hartford-hwp.com:smtp   *:*  LISTEN      
udp        0      0 *:32768                 *:*                               
udp        0      0 *:sunrpc                *:*                          


Active UNIX domain sockets (only servers)
State         I-Node Path
LISTENING     1694   /tmp/kd_sockV4
LISTENING     2563   /tmp/.fam_socket
LISTENING     11169  /tmp/esrv500-hartford-hwp.com
LISTENING     1972   /tmp/.X11-unix/X0
LISTENING     1567   /var/run/lprng
LISTENING     2002   /tmp/.ICE-unix/1356
LISTENING     2395   /tmp/orbit-test/orb-7656399631663719317
LISTENING     96151  /tmp/orbit-test/orb-958460670384163406
LISTENING     2421   /tmp/orbit-test/orb-17615314691073791210
LISTENING     2438   /tmp/orbit-test/orb-622387520756575608
LISTENING     2470   /tmp/orbit-test/orb-3986843592134891006
LISTENING     96197  /tmp/orbit-test/orb-7673086151146384526
LISTENING     96244  /tmp/orbit-test/orb-1502440511716435908
LISTENING     96261  /tmp/orbit-test/orb-1761267450631896375
LISTENING     3506   /tmp/orbit-test/orb-100901217327649886
LISTENING     1742   /tmp/.font-unix/fs7100
LISTENING     1645   /dev/gpmctl

I send and receive e-mail, upload and download via ftp but no one FTPs
to my machine from the outside. I'd like telnet, but have concluded
its too risky to enable. Ping, though, I find reassuring. Etc.

Thanks for the tip on setting up a response to IP address changes
under rp-pppoe. 

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
