From: Ray Olszewski <ray@comarre.com>
Subject: Re: Firewall Configuration...
Date: Mon, 09 Sep 2002 09:37:49 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020909092541.022c9a40@celine>
References: <3D7C2DE1.4040601@tataelxsi.co.in>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D7C2DE1.4040601@tataelxsi.co.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Sriram Narasimhan <nsri@tataelxsi.co.in>, linux-newbie@vger.kernel.org

I'm only replying because I haven't seen any other replies, and the limited 
advice I can offer may be bit bit better than nothing. I don't use Red Hat, 
and so I do not know what "setup' program you are referring to.With that 
disclaimer ...

... to see what firewalling setup you currently have, you can list your 
current ruleset with the command "ipchains -nvl". (Since you are running 
2.4.x, RH might be using iptables rather than ipchains; in that case, you 
want to use "iptables -nvL" or something close to that syntax.)

... your firewalling is probably set up by an init script, in whateve 
directory RH uses for init scripts (perhaps /etc/init.d/). That script 
probably calls a separate firewalling script, perhaps located in 
/etc/network ... but you will have to look around for that.

... to set up a customized firewall, you'll want to disable whatever 
automatic firewalling is installed, then create an init program that 
executes the ipchains (and perhaps ipmasqadm, if you are doing any port 
forwarding) -OR- iptables commands -- whichever RH is set up to use -- you 
want to run. Or you can simply have your bespoke firewall script run after 
the RH one, and let it start by clearing the chains/tables of the rules 
that the RH script has installed.

Without a greater understanding of what you want to do, the only other 
thing I can suggest is that you read the appropriate HowTos (Firewalling; 
Ipchains; I think there is a separate one for Ipmasqadm; by now there is 
probably one for Iptables). Good luck.

At 10:43 AM 9/9/02 +0530, Sriram Narasimhan wrote:
>Hello,
>
>I am using Red Hat 7.2 running 2.4.7-10
>
>I seem to be having a problem changing the firewall configuration. When I 
>installed Red Hat I didn't bother to set the firewall and it defaulted to 
>the "High" Security level.
>
>I am trying to change this to a customized firewall configuration, by 
>running the 'setup' utility.
>
>But even after changing the configuration, there seems to be no effect of 
>the change. Every time I run 'setup' I keep seeing the setting at "High" 
>Security level.
>
>Am I doing something wrong, or should I do something else to change the 
>setting ?
>
>Many Thanks.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
