From: Ray Olszewski <ray@comarre.com>
Subject: RE: How to forward port 80 on Linux Redhat 9?
Date: Wed, 28 Jul 2004 22:56:21 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040728224121.01fecee8@celine>
References: <5.1.0.14.1.20040728093522.01fc0610@celine> <GNEPLLCIIBHICCOGIAKPCEMBDBAA.eatley@wowcorp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPCEMBDBAA.eatley@wowcorp.com>
References: <5.1.0.14.1.20040728093522.01fc0610@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:48 PM 7/28/2004 -0400, Eve Atley wrote:

>Ray, thanks for the assistance. Some questions...
>
> >iptables -t nat -A PREROUTING -p tcp --destination 209.158.555.123 \
>   --destination-port 80 -j DNAT --to-destination 192.168.10.28
>
>I'll implement this. I'm not aware of how to make it 'stick'; doesn't this
>change after I reboot Redhat? Does this require a save?

I don't know what you mean by "a save". This is not standard Unix/Linux 
jargon. But yes, a change you make from the command line will not survive a 
reboot.

Since I don't know how you are installing your existing firewall ruleset, I 
cannot tell you *exactly* how to "make it 'stick'". As a general matter, 
you put the command in some script that runs as part of the boot/init process.

Just as an example, on our router here (running Debian/Woody), all the 
commands to create (or recreate) the firewall ruleset are in a file 
/etc/network/fwrules . It begins by clearing all the chains, then adds 
rules in the proper order to get them to work. We then added to the init 
script /etc/init.d/networking a line that runs the fwrules script whenever 
the networking script is run with the "start" or "restart" option.

If you are using some existing firewall package (for example, Shorewall) to 
create your basic firewall, you should consult that package's documentation 
to see how it wants you to add custom, site-specific rules.


> >You also need a rule in the default table that ACCEPTs incoming port-80
> >traffic. Our actual ruleset here is sufficiently nonstandard that it will
>
>And where might this default table be, so I can edit it?

The table is in the kernel, like all the tables. You "edit it" with 
iptables commands, just like the change you make to the nat table.

You want to find the script that creates it during boot/init, and I have no 
way of knowing where on your system a particular script is located ... not 
only am I unfamiliar with REd Hat at that level of detail, but Linux in 
general has an assortment of drop-in firewall packages, and I cannot know 
what you are using.


> >One moe clarification: iptables rules function as a set, not in isolation.
>
>So does this mean I must make a particular IP table for this case?
>iptables -L gives me a whole lot of info, for which I see nothing specific
>to port 80. I'll send the iptables listing if needed.

No, it does not mean that. It means that you need to look at the entire 
ruleset for the default chain (the one that "iptables -nL", or, better, 
"iptables -nvL", lists) to make sure the rule you add is in the proper 
place. Similarly, you need to check the rules that precede the one you add 
to the nat table (PREROUTING chain) to make sure that that rule will have 
an actual effect.

If you cannot do these things yourself, the only option is to show them to 
someone who can interpret them. If you do so, please use the more complete 
form I specified above ("iptables -nvL") and the corresponding one for the 
nat table (I think "iptables -t nat -nvL", but I may have that slightly wrong).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
