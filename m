From: Ray Olszewski <ray@comarre.com>
Subject: Re: Public & private IP addresses via IP Aliasing?
Date: Fri, 19 Sep 2003 15:23:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030919151403.01f82f78@celine>
References: <20030919.144701.22088.412439@webmail02.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030919.144701.22088.412439@webmail02.lax.untd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: beolach@juno.com, linux-newbie@vger.kernel.org

At 09:46 PM 9/19/2003 +0000, beolach@juno.com wrote:

>Thanks, Ray.  Dhcp-relay is exactly what I wanted to know about.
>Unfortunatly, some of the machines on the local network are
>running M$ Windows, which from googling I learn lacks real IP
>Aliasing support - you can get multiple static IPs, but not
>static & DHCP at the same time.  So at least for the windows
>boxes, I will probably switch to DHCP only.

Yeah, that's a problem. Though I use Windows as well as Linux, I'm not 
really all that expert in Windows configuration, so I was only really 
addressing the Linux parts of your problem.

>Which brings up a
>new question: is there an easy way to change the IP address a
>hostname refers to when the machine's IP address changes.  For
>example, the host named gamebox crashes, and after reboot has a
>different IP than before.  Is there a nice way to tell all the
>other computers on the local net that gamebox's address has
>changed?

How do they know it in the first place? The answer to this governs how easy 
it is to change. Possibilities are (I'm giving Linux approaches, but I know 
there are Windows analogs to all of them):

1. A local /etc/hosts file on each machine. In this case, there is no sane 
way to do what you want.

2. A DNS server that is authoritative for the LAN. In this case, the fact 
that the DHCP assignment comes from a different host (the ISP) make it 
tough, as the DNS host itself will not receive the lease info for other 
hosts. The only workaround I can think of for that is that DHCP clients 
typically include a way to run an arbitrary script or program whenever the 
address changes. You could write a pair of scripts -- one on each DHCP host 
that sends a message to the DNS server to update info, the other on the DNS 
server to receive the information and use it to update the DNS records. 
(This is just a scaled-down version of what services that provide 
authoritative DNS resolution for hosts with dynamic addresses do.)

3. SMB shares. This information is provided to the SMB server by the host 
and should be updated whenever an address changes. I've never had a problem 
with that, other than a modest bit of latency.

>I'm guessing that with how common DHCP is, there must
>be a way, but I don't know what it would be.

Actually, to my knowledge, there is no GOOD way to keep DNS-assigned 
hostnames stable when the IP address changes. I hope someone else here 
knows of one and chimes in, as I've had to work around this limitation 
myself from time to time.



[old stuff deleted]

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
