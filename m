From: Phil C <hpypenguin@yahoo.com>
Subject: Re: Network install fails at TFTP load on client pc
Date: Tue, 12 Aug 2008 17:15:50 -0700 (PDT)
Message-ID: <680933.3477.qm@web59711.mail.ac4.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jim Carter <jimc@math.ucla.edu>
Cc: Newbie Mailing List <linux-newbie@vger.kernel.org>



> > > Well, the server's kernel is still logging TFTP packets, so there must be 
> > > another place in the iptables that needs to be perforated (temporarily).  
> > > --snip--
> > 
> > I tried messing with some of the firewall setting and have run into a new 
> > problem. My internet connection exists only on a WLAN right now (thanks 
> > to moronic time-warner employees) and my local network is only on LAN. I 
> > was able to get only one to communicate properly at a time. Either the 
> > laptop connects and communicates only to find that it can not route to 
> > the internet to get the rest of the files, or there is no functioning 
> > local connection. 

> Now the problem is, if the server isn't set up for routing it will drop 
> your packets on the floor.  To cause it to forward them to the real default 
> route (the cable or DSL modem (via WLAN?)), you need to temporarily turn on 
> the feature, like this:
> 
> echo "1" > /proc/sys/net/ipv4/ip_forward

Aha! That seems like it should do the trick. And no the laptop is not booting from WLAN. The problem was that the local network and the internet are accessed on two separate NICs for the server. Since I have never actually used it to allow another local machine to connect to the internet I had completely neglected to allow for routing/packet forwarding so thanks for bringing this up.

> > I need to get iptables to recognize seperate function sets for each 
> > interface and allow both to run at the same time. 
> 
> The installer on the laptop probably doesn't have enough flexibility to 
> bring up two interfaces at once -- there are limits to what the GUI can ask 
> the user to tell it.
> 
> That's a good point: the provided firewall may have "features" for paranoia 
> relating to forwarded packets.  I know the one I wrote has special rules 
> for forwarding, and the Windows firewall is very strict about outgoing 
> packets too. 

Maybe a restriction based on mac address?

> > To the best of my 
> > knowledge iptables is configured the same way regardless of distro as 
> > it's a kernel module. Any thoughts on how to do this?
> 
> Yes, the modules are the same, but some distros have a nice GUI to 
> configure the rules, with more or less flexibility.  So the chain names and 
> their order and details will vary from one distro to the next.

GUIs be damned. I do all server and network work from the terminal. What about ipchains? It's compatible with iptables but I've never used it. Any experience there?
 
> > What are the odds of a success if I simply pull the drive, hook it up to 
> > a host machine via a 44 pin IDE adapter, install from there and pop it 
> > back in? I forsee some severe hardware config issues but I'm curiouse if 
> > that could work.
> 
> What could go wrong?  
> 
> 1. A laptop drive in a desktop machine: the PATA or SATA interfaces should 
>    be plug compatible, but what about the power connector?
> <snipped> 
>
> Conclusion: your plan is feasible... barely.

Was just a thought. I would by the way be swapping the drive out for the main drive in the host computer. I have a desktop set aside with a variety of connectors and adapters for testing hardware that I could use to run the install. I think, however, that I will not try that just yet.

> OK, the Toshiba BIOS won't boot from foreign devices.  How about this: boot 
> from the net, but once the pre-installer gets control, tell it that the 
> installation media is not on the network but rather on the local DVD or 
> flash device.  At that point you're using the Linux USB mass storage 
> driver, which should work, rather than the BIOS' broken one.  The 
> installation docs should say something about how to override the location 
> of the installation media, though the more common use-case is to boot from 
> CD/DVD and get the distro from the network.

Excellent idea! I will give that a try before attempting the install completely over the net. Thanks for all the help and for being so tolerant in answering my questions and concerns.

- Phil C



      

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
