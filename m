From: John Amdor III <johnmxl@radiks.net>
Subject: Re: Cable Modems??
Date: Mon, 09 Sep 2002 14:49:54 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D7CFB62.4070202@radiks.net>
References: <20020908130053.A417@lnx2.w8mch.ampr.org> <002401c257d0$312fb760$1d1c4ed8@POOHBEAR2>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: David Lane <jaypooh3@bellsouth.net>
Cc: haltec@iceweb.net, linux-newbie@vger.kernel.org

On the other hand, if he DOES have a non-private routable IP address, by 
posting it to the list he will invite all manner of 'helpful' attempts 
to crack his network.

The non-routeable addresses or private IP addresses  according to RFC 
1918 fall in the ranges of:

10.0.0.0 - 10.255.255.255
172.16.0.0 - 172.31.255.255
192.168.0.0 - 192.168.255.255

If the IP you are trying to ping is in one of these ranges, it shouldn't 
be reachable across the Internet - at a minimum your ISP's routers are 
programmed to ignore requests to route to these addresses.

Just because this is a linux list doesn't mean the script kiddies 
haven't figured out how to read these messages.

John Amdor

David Lane wrote:
> Ping is definitely NOT obsolete.Before I speculate too much you should post
> the IP address you are trying to ping or telnet to.Most cable and DSL modems
> contain their own IP's that are in the private range.If your trying to ping
> or telnet to one of those you can give it up,the user can but you on the
> outside can't.You can only ping or telnet to his public IP that he is
> assigned when he connects.
>     XP does have the capability to setup an incoming connection for VPN but
> unless your son has a static IP(not likely these days)this will be more of a
> hassle than it's worth as his IP  probably changes at least every three days
> even if he is connected 24/7.Have your son run "ipconfig" in a DOS window
> and that will/should give you his public IP.
>    Send the IP you were trying to ping and I'll try to give you a better
> answer.
> 
>                             David Lane

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
