From: James Miller <jamtat@mailsnare.net>
Subject: basic networking queries
Date: Thu, 24 Jul 2003 20:57:27 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0307242056270.6151@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

I've set up a small home network and managed to get a few computer talking on
it, including an old laptop.  The laptop prompts this query.  So, I have a
basic grasp of some Linux networking concepts, as well as general networking
concepts.  I set up the home network with static addressing, which seemed
more approachable to me.  Now, I'm going to need to tweak the laptop a bit so
I can use it at some larger institutions (schools) where I visit or study.
Almost surely these places will be using DHCP for assigning network addresses,
and they will likely expect computers hooking up there to be DHCP-capable.
Well, I'm sure I have such capability on the laptop, so that much is in place.
I've also gotten some information from the PCMCIA how to, as well as some
other sources, on ways to select between DHCP and static addressing setups.
In this initial inquiry, I just want to ask for some further information on
how DHCP works, so I'll have an idea what to expect.  Let me pose my questions
as follows: in the network.opts file, which is where rc.pcmcia gets its
information about the network from, there are various entries - ip address,
gateway address, subnet address, network address and the like.  I have at least
a general idea of which of these fields I must fill in on my static, home
network, as well as the values that go there.  What I'm not sure about when
using DHCP is which of the fields (if any) need to be filled in?  Apart from
enabling DHCP there (by entering a "y" in the appropriate field), which other
fields might I need to fill in?  Do I need to know anything about the network
addressing scheme where I'll be using the laptop, or will DHCP take care of
detecting and utilizing all those values?

Depending on the enlightenment or confusion that results from answers I may
receive to this query, I may need to pose additional questions.  Thanks for
your help.

James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
