From: Beolach <beolach@comcast.net>
Subject: Re: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 21:28:01 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <400F5151.1000305@comcast.net>
References: <5F84A09ECDD5D411973000508BE32470266024F6@exnyc07.lehman.com> <400F4EA2.24E814EB@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <400F4EA2.24E814EB@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: chuck <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

ping has a -I option that allows you to specify the source interface.  I 
haven't used this option myself, but I would guess Chadha used some 
thing like this: 'ping -I eth0 192.168.1.1'.


Conway S. Smith

chuck wrote:
> Dear Chadha:
> 
> In (4.) & (5.)...
> 
> I know how to ping from a host with an 'eth0' or 'eth1' device.
> I do not know how to ping from 'eth0' or from 'eth1'.
> 
> Sorry, I cannot help.
> 
> Chuck
> 
> "Chadha, Devesh" wrote:
> <snip> 
> 
> 
>>4.Pinging 192.168.1.1 from eth0 gave destnation host unreachable and pinging
>>xxx.xxx.xxx.xxx from eth1 gave the same.
>>
>>5. I can connect to internet using eth0 since I can browse the internet. I
>>can also ping the gateway from eth0
> 
> <snip>
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
