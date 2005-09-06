From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: accept some IP/users deny others
Date: Tue, 6 Sep 2005 21:15:39 +0200
Message-ID: <200509062115.40029.pa3gcu@zeelandnet.nl>
References: <200509022239.21591.r4mz3z@yahoo.es>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200509022239.21591.r4mz3z@yahoo.es>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pepo <r4mz3z@yahoo.es>
Cc: linux-newbie@vger.kernel.org

On Saturday 03 September 2005 05:39, pepo wrote:
> Hi friends...
>
>         I am using exim4 (exim4-daemon-light) 4.52-1 in my Sarge, and I
> have a little
> LAN (PC1:192.168.1.1, PC2:192.168.1.2, PC3:192.168.1.3) the first is my
> box.
>
>         Please, how do I accept any local mail in my LAN, but just
> PC2:192.168.1.2
> can send mails to Internet? and if you can help me with the same but only
> few users can send to Internet.

I have been waiting for a responce to your mail from others to see if i can 
really help you, i saw one reply to which you did not eply to so i presume 
you may not have understood what was said/asked...


Firstly, your mail is somewhat lacking in detail, detail as to just what you 
have as LAN and for all, just what you want to do.

As i see it, you want mail on 192.168.1.2 (your machine) correct.???.

You do not say if you are going to be collecting mail from your provider or 
you want to run sendmail on 192.168.1.2 to listen for incomming connections, 
(not such a good thing to do thesedays with all that spam around), leave that 
to your provider...

Let me say this.

A normal "Local Area Network", (LAN) would have a router possably in this case 
192.168.1.1, that computer would be connected to the internet with another 
NIC and have a set of firewall rules via the command iptables, now i can only 
guess here but you said "sarge" meaning i presume debian.
I have no knowlage of how debian sets it default iptables rules or even what 
frontend for iptables it uses, what i can tell you is that iptables decides 
who does and who does not enter your computer or who passes thro' it via the 
rules which you or some frontend defines.

A good place to start leaning about iptables is;
http://www.linuxguruz.com/iptables/
There you will find many example firewalls for all sorts of needs.

The basic rule for a home LAN is to Masquarde all traffic from inside to the 
outside with the Inet IP# of the router, to do that one needs to use a basic 
masquerading firewall. (I am sure thats what debian sets as a default as most 
all distro's do the same thing).

Your distro, will no doubtably have some or other GUI interface for doing such 
a job.

If you need more help please explain in more detail just what you want and 
what you are using.

>
>         I hope that you can help me, it is urgent for me.
>
> Thanks

--
Regards Richard.

PS, spelling mistakes are free in this mail.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
