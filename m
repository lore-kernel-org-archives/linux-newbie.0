From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: Re: getting MAC addresses (was: Re: opening a port without root
 permission)
Date: Thu, 01 Jul 2004 01:16:09 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <18716fd18765db.18765db18716fd@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

> Others already suggested "sudo" as the way to deal with the arping 
> problem. 
> But... are you really able to use arping to get MAC addresses of 
> hosts not 
> on the Ethernet local to the host you arping from? (I assume that 
> is what 
> you mean by "in a different subnet".)
> 
> I was curious about this, so I tested it here. With the current 
> Debian-Sid 
> version of arping, arping'ing the IP address of a host on my DMZ 
> from my 
> LAN returns the MAC address of my router (since it does proxy 
> arp), NOT the 
> MAC address of the target host's own interface. If I arping the 
> actual MAC 
> address of the DMZ host (as shown in the arp table of my router), 
> I get no 
> response.
> 
> Am I missing something? I ask because this problem -- how to get 
> the MAC 
> address of a non-local host -- comes up again and again, and I 
> always 
> believed there was no solution to it (excluding ones that involve 
> running 
> some application on the target host). Am I mistaken?

Sorry. My mistake. It cant retrieve the MAC address of a machine on a different subnet.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
