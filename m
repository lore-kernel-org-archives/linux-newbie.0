From: chuck gelm <chuck@gelm.net>
Subject: Re: daisychain addresses
Date: Fri, 12 Mar 2004 09:15:01 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4051C5E5.6080004@gelm.net>
References: <40518631.5020203@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40518631.5020203@arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Andrew Langdon-Davies <ald2@arrakis.es>
Cc: linux-newbie@vger.kernel.org

Andrew Langdon-Davies wrote:

> Hello,
> In a daisychain network such as this:
> fw/router------server------workstation1------workstation2 (these are 
> descriptions, not real hostnames), how should the addresses be set up? 
> At the moment, all the machines are on 192.168.0.0. Is this wrong? 
> Each machine can ping its neighbour but no farther, except for 
> 'server', which can connect to the Internet via 'fw/router'. But 
> 'workstation1' cannot ping 'fw/server', even after doing 'route add 
> fw/router gw server eth0'. Using numerical addresses makes no 
> difference. All my /etc/hosts list every machine. Daisychaining does 
> not seem to be very much covered in the documentation I've found. I'm 
> sure I'm making a basic mistake (apart from being too stingy to invest 
> in hubs or switches or whatever). Therefore, a basic (and very 
> general) question: What is the correct way to address machines in this 
> sort of topology?
> TIA,
> Andrew

Hi, Andrew:

Q.  "...how should the addresses be set up?"
A.  On different networks.

Q. "...Is this wrong?"
A.  No if you 'subnet', yes if you do not.

Statement: "But 'workstation1' cannot ping 'fw/server', even after doing 
'route add fw/router gw server eth0'."

Comment: I would like to see the output of 'ifconfig' and 'route -n' on 
'workstation1'.

You have, at least, one other topology option without adding hardware. 
Though,
I'll try to answer your question modified thusly:
"What is ['the correct','a way','a good way'] to address machines in 
this sort of topology?".

internet<?>fw/router<192.168.0.1>------<192.168.0.2>server<192.168.1.2>---
---<192.168.1.3>workstation1<192.168.2.3>------<192.168.2.4>workstation2

I think.  Your mileage may vary.  ;-)

Regards, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
