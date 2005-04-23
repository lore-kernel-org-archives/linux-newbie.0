From: Bill Flanagan <flanagan@wdn.com>
Subject: Re: Ethernet Hub UTP + BNC??
Date: Sat, 23 Apr 2005 16:00:41 -0400
Message-ID: <426AA969.2040706@wdn.com>
References: <20050421174425.GA898@lnx2.w8mch.ampr.org>
 <4267FCAB.60803@cogeco.ca>
Reply-To: flanagan@wdn.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <4267FCAB.60803@cogeco.ca>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: 
Cc: linux-newbie@vger.kernel.org

Strictly speaking, the hub is invisible to the "hosts" or active devices on the 
network segment.  A hub accepts a packet o (or noise) on any port, and sends 
exactly that bit pattern on all the other ports.

By contrast, a router forwards a packet to the one port identified at that time 
as the best path to the destination IP address (Layer 3).  A "learning switch" 
acts like a hub until it "hears" layer 2 addresses (Ethernet in this case) on 
ports so it knows where to send a packet based on its destination address.

konsultor

Mike Turcotte wrote:
> Hal MacArgle wrote:
> 
>> Greetings: We run a hobby ethernet LAN in our home with four machines
>> connected via 10Base2, BNC coax, cabling.. It works fine but we're
>> looking ahead when UTP will be "standard" as we see no new MBs
>> without the RJ45, cat 3-5 cable, sockets.. We're not interested in
>> any but the 10mbs speed..
>>
>> The query is: During the transition, especially since one of the
>> machines is 25 feet from the other 3 and the coax cable already built
>> in the walls -- we wonder if we could connect using both UTP and BNC?
>>
>> We note that hubs are available; typically 8 UTP and 1 BNC but it
>> sounds like the BNC is only for linking extra hubs....
>>
>> I can't seem to find a definative answer as to whether we could use
>> the same hub for; typically -- 3 UTP cables and 1 coax cable...
>>
>> TIA and cheers,
>>  
>>
> Yes this is possible, as I also have one of those hubs. You can connect 
> all the machines you like to the UTP connectors and connect machines to 
> the BNC connector, as if the hub is just another node on the segment. 
> You can connect workstations, servers and additional hubs all off the 
> same BNC connection on the hub.
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
