From: Ray Olszewski <ray@comarre.com>
Subject: Re: programs/daemons/PIDs using the network
Date: Sat, 13 Aug 2005 09:37:18 -0700
Message-ID: <42FE21BE.6040909@comarre.com>
References: <Pine.LNX.4.44.0508120118150.20982-100000@treebeard.engin.umich.edu> <200508130940.51347.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200508130940.51347.pa3gcu@zeelandnet.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Richard Adams wrote:
> On Friday 12 August 2005 07:27, Karthik Vishwanath wrote:
> 
>>Hello,
>>
>>I run icewm as a window manager and have the network status displayed on
>>the task-bar. Sometimes I notice quite some activity on the network,
>>without really knowing which process is responsible for that. I would like
>>to determine the progam-name(s)/daemon(s) and the PID(s) that are involved
>>actively in sending/receiving data on the network.
> 
> 
> Without knowing anything about your systen, ie what processes are running one 
> can only guess as to what is causing traffic on your network.
> 
> Mail programs which check at regular intervals for mail is one which comes to 
> mind strait away, others are dhcp if used and there are of course many more.

Assuming Karthik knows what he's talking about (and he's posted here for 
long enough that if he says "quite some acticity", he surely means more 
than a trickle), these are not likely candidates for creating *heavy* 
loads on a LAN. A better guess would be something Samba related, or 
maybe VNC, or maybe some p2p app ... but these are just wild guesses and 
not what Karthik asked about anyway.

> 
>>I tried netstat with the -e, -p, -l and the -a flags, but could not locate
>>the program that was actively using the network. What am I missing, what
>>must I try?
> 
> 
> I would use 'netstat -t' as soon as i saw traffic, but then i would be running 
> 'tcpdump' in an xterm to monitor traffic, one would then see ip#'s and most 
> important port numbers, knowing the port number one then looks 
> into /etc/services to see what program is causing the traffic.

Maybe. These days, /etc/services isn't as complete as it once was. 
There's an Web site somewhere with a more current list of IANA port 
assignments than /etc/services usually provides. But in any case, you 
don't want to know the *service* involved; you want to know what client 
is involved, and that is a bit trickier to determine. See next comment.

> Of course there are other ways to check as well but the above is what i would 
> be doing if i was concerned.

Good thoughts generally, Richard, but I'd suggest a few differences in 
the details.

1. netstat -t won't tell you much ... especially if the traffic isn't 
caused by a tcp connection. More useful is something like netstat -anp 
(run as root), which gives you (among other things) a list of source 
ports, destination aaddresses, and associated PIDs. So if you find the 
ports that are causing the traffic, this links them to programs.

2. For tracking the traffic itself, I don't know anything better than 
tcpdump or its equivalent (e.g., ethereal) to monitor port-by-port 
traffic levels. Surely someone has written a wrapper for one of these 
sniffers that will track traffic by port number, though. No?

Update: a quick Google search led me to darkstar, a minimalist sniffer 
that offers an option to report cumulative traffic by port (a screenshot 
show this output format). Look at http://dmr.ath.cx/net/darkstat/ for 
details. I don't recall what distro you use, Karthik, but I did see that 
Debian packages were available.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
