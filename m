From: chuck <chuck@gelm.net>
Subject: Re: 2 NIC cards not talking
Date: Thu, 22 Jan 2004 19:52:17 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40107041.6DDDE143@gelm.net>
References: <5F84A09ECDD5D411973000508BE3247026602500@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Chadha, Devesh" <devesh.chadha@lehman.com>
Cc: linux-newbie@vger.kernel.org

Hi, Devesh:

 I think 'destination host unreachable' is a routing problem.
I think that then no packets are transmitted.
If true, ping would not run and there is no ping failure.

 I think we are done with your original problem of 'ping' failure.

I am guessing, because you never reported the output of
ifconfig eth0, eth1, lo
only that they were 'configured correctly'.

Is eth0 == external network (internet?)?
Is eth1 == internal network 192.168.1.1?
If yes, why would they ping each other?
I see no reason for your internal NIC to 'talk to' your external NIC.
I see no reason for your external NIC to 'talk to' your internal NIC.

  I think the two NICs should never see each others packets without
passing through the router host.

From your previous 'netstat -nr' report,
 from that host,
  if you 'ping -c 4 192.168.1.x' 
   the host will route the packets to eth1;
  if you ping any other address
   the host will route the packets to eth0.

 OBTW, when I

ping -I eth0 192.168.1.1
ping: bad interface address 'eth0'
 
 is what I get.  I do have an eth0 device.     :-|

HTH, Chuck

"Chadha, Devesh" wrote:
> 
> The name is Devesh.
> 
> I have already answered the question in an earlier email. However, once
> again for your convenience,
> 
> Ping -I eth0 192.168.1.1 gives Destination host unreachable.
> Ping -I eth1 xxx.xxx.xxx.xxx also gives Destination host unreachable.
> 
> So pinging from eth0 to ip of eth1 and vice versa give dest host
> unreachable.
> 
> Pinging from eth1 to external gateway also gives dest host unreachable.
> 
> Let me know if u need more info
> 
> Regards,
> Devesh

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
