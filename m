From: Chris Rose <offline@shaw.ca>
Subject: Making a domain work, in a manner of speaking...
Date: Sat, 13 Apr 2002 05:35:52 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.0.20020413052323.0357ee68@shawmail.ed.shawcable.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

It's kind of a laundry list of problems, so here goes...

My home network so far consists of three computers plus a linux-based 
firewall.  One of the systems runs Linux Mandrake 8.1, and then i've got a 
Win2K box, and a WinXP Pro box.  My firewall is a ClarkConnect 0.9.1 box, 
so far as it matters, and i use the Pointclark dynamic DNS service to give 
myself a 'domain' name - call it "network.pointclark.net"  I'm on cable, so 
my IP is usually pretty stable.

What i have inside that network is pretty confused, though, since i have no 
idea where to go from there - all the systems connect to the 'net just fine 
- i can browse the web, and from the windows boxen, i can do everything 
else as well.  Each windows box is named (call 'em 
win2k(.network.pointclark.net?) and winxp(.?)) and they show up as their 
proper names on the samba network, which is working just fine, 
thanks.  But...  the Linux box is another matter.  i'm not sure how to name 
it.  Since i'm with Shaw networks for my cable modem, there's a defaut 
suffix to domain queries - ed.shawcable.net in this case.  So how do i set 
the hostnames for the inner box so that when, for example, i connect to 
https://network.pointclark.net:(port) it gives me the right security 
certificate, etc?

The problem is, i don't even know if i'm asking the right questions here - 
i've read the Networking-HOWTO and gotten nothing out of it.  Well, i got a 
better understanding of the mechanics of networking, but nothing that 
pertained directly to my problem.  So, what i want is pointers to the right 
places, or even outright answers - i'm not too proud... ;)

Thanks, folks, for all of your helps...


Chris Rose
==========
1952 - 2001 = 42


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
