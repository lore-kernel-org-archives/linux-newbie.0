From: Glynn Clements <glynn.clements@virgin.net>
Subject: Re: Getting the MAC address of a client
Date: Thu, 10 Oct 2002 19:34:29 +0100
Sender: linux-net-owner@vger.kernel.org
Message-ID: <15781.51253.718357.634528@cerise.nosuchdomain.co.uk>
References: <20021010175605.19028.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-net-owner@vger.kernel.org>
In-Reply-To: <20021010175605.19028.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Lee Chin <leechin@mail.com>
Cc: linux-net@vger.kernel.org, linux-newbie@vger.kernel.org


Lee Chin wrote:

> When my server application accepts a client socket connection, what is
> the easiest way to obtain the MAC address of the peer? I tried listing
> the ARP table but I did not see an entry for the IP address and MAC
> address of the client.
> 
> I want to avoid having to ping the client to get the ARP table populated

If you don't see the client's MAC address in the ARP table, that
probably means that the client isn't on the same physical (Ethernet)
network as the server. In which case, there's no way that you can
obtain its MAC address.

BTW, pinging won't help in any case. If the client *does* happen to be
on the same network as the server, the MAC address will have been
retrieved in order to send the SYN+ACK.

-- 
Glynn Clements <glynn.clements@virgin.net>
