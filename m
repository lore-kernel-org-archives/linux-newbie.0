From: beolach@juno.com
Subject: Re: Public & private IP addresses via IP Aliasing?
Date: Fri, 19 Sep 2003 21:46:58 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030919.144701.22088.412439@webmail02.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Thanks, Ray.  Dhcp-relay is exactly what I wanted to know about.
Unfortunatly, some of the machines on the local network are
running M$ Windows, which from googling I learn lacks real IP
Aliasing support - you can get multiple static IPs, but not
static & DHCP at the same time.  So at least for the windows
boxes, I will probably switch to DHCP only.  Which brings up a
new question: is there an easy way to change the IP address a
hostname refers to when the machine's IP address changes.  For
example, the host named gamebox crashes, and after reboot has a
different IP than before.  Is there a nice way to tell all the
other computers on the local net that gamebox's address has
changed?  I'm guessing that with how common DHCP is, there must
be a way, but I don't know what it would be.

Thanks again,
Conway S. Smith

-- Ray Olszewski <ray@comarre.com> wrote:
> At 01:22 AM 9/19/2003 +0000, beolach@juno.com wrote:
> 
> > On my home network, I am currently using IP-masquerading (aka NAT)
> > on my linux gateway to provide internet access for the local net.
> > This has been working fine in general, but I have some problems
> > with internet multiplayer in certain games that I believe are due
> > to the IP-masqing.  My ISP provides public addresses via DHCP, but
> > I prefer having static addresses on the local net.  I was wondering
> > if I could use both public & private addresses via IP Aliasing.
> > 
> > Would this work?
> > 
> >           Internet
> >              |
> >              |
> > Gateway |- eth0 public dynamic address
> >         |- eth1:0 bridged with eth0
> >         |- eth1:1 private static address
> >               |
> > Local Net |- eth0:0 public dynamic address
> >           |- eth0:1 private static address
> > 
> Whether this would work or not depends on one detail that you were too 
> vague about. Do you have two public addresses or only one? That is, do > you 
> want Local Net:eth0:0 to have the *same* IP address as Gateway:eth0 or > a 
> different address?
> 
> If they need to be the same address, then I do not know how to do it
> and 
> suspect that there is no way to do it.
> 
> If they are different, the only piece that is not obvious is how to 
> get the 
> dynamic-public address assigned to the Local Net host. Normally, DHCP 
> queries and replies do not cross routers, so you need a DHCP proxy 
> running 
> on the Gateway. There is such an application for Linux, called 
> dhcp-relay 
> ... your distro's packaging system probably has it.
> 
> You also have to get the routing table on Local Net right, so it knows 
> which interface/IP address to use for which traffic. And you probably > have 
> to proxy-arp the Local Net dynamic address on Gateway, since yuor ISP > will 
> not know that its public IP address is their route to the Local Net 
> host. 
> (Your bridging approach may take care of that ... I haven't done 
> bridging 
> recently enough to remember the details ... but I suspect that proxy 
> arp 
> will prove easier to implement.)
> 
> Finally ... games do have problems with standard NAT; they often 
> require 
> port forwarding to work. Also, sometimes the clients need to be told 
> the 
> external IP address through their configuration menus (this is 
> something of 
> a nuisance when dynamic addresses change). Depending on the specific 
> games 
> you are concerned with, you might find it easier to implement port 
> forwarding for them.

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
