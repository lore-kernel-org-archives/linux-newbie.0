From: Ray Olszewski <ray@comarre.com>
Subject: Re: basic networking queries
Date: Thu, 24 Jul 2003 20:17:51 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030724200741.01ee7cc0@celine>
References: <Pine.LNX.4.56.0307242056270.6151@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.56.0307242056270.6151@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

James -- I cannot answer your question directly, because you have provided 
a bit too little information about your setup, and some of what you did 
provide is unusual relative to my experience.

First off, what Linux distribution and version are you using? I'm guessing 
Slackware, but that is no more than a guess (based on the filename 
rc.pcmcia ... of the major distros, I think Slackware is the only one that 
still uses rc* filenames for init scripts).

To get an IP address assigned by DHCP, a system needs to run a DHCP client. 
The one most commonly used, these days, is pump. Others include dhcpcd and 
dhclient. You need to see which of these you have on your system, then 
create or activate an init script that starts one of them with appropriate 
settings. If you have none of them, you need to see which of them your 
distro provides and install one of them ... also maybe create an init 
script, or maybe the install will cause an init script to be installed too.

Or maybe changing the settings in network.opts as you guessed will work, if 
the needed daemon is on your system. It's hard to say. The form of init 
scripts is a bit distro dependent (very much so as regards Slackware), so 
without seeing the script in question, it is hard to be definite about what 
you should do. Usually, if you are using DHCP, you do not fill in fields 
for IP address, netmask, broadcast address, gateway, and maybe nameservers.

Since you are a beginner, I'll close with a bit of beginner advice: 
whenever you pose a question about Linux, here or on any list, always 
mention what distro you are using, what version, and (usually) what kernel 
version (e.g., "Red Hat 9.0 with kernel 2.4.20" or "Debian Sid with kernel 
2.4.19"). It saves everyone a lot of time.

At 08:57 PM 7/24/2003 -0500, James Miller wrote:
>I've set up a small home network and managed to get a few computer talking on
>it, including an old laptop.  The laptop prompts this query.  So, I have a
>basic grasp of some Linux networking concepts, as well as general networking
>concepts.  I set up the home network with static addressing, which seemed
>more approachable to me.  Now, I'm going to need to tweak the laptop a bit so
>I can use it at some larger institutions (schools) where I visit or study.
>Almost surely these places will be using DHCP for assigning network addresses,
>and they will likely expect computers hooking up there to be DHCP-capable.
>Well, I'm sure I have such capability on the laptop, so that much is in place.
>I've also gotten some information from the PCMCIA how to, as well as some
>other sources, on ways to select between DHCP and static addressing setups.
>In this initial inquiry, I just want to ask for some further information on
>how DHCP works, so I'll have an idea what to expect.  Let me pose my questions
>as follows: in the network.opts file, which is where rc.pcmcia gets its
>information about the network from, there are various entries - ip address,
>gateway address, subnet address, network address and the like.  I have at 
>least
>a general idea of which of these fields I must fill in on my static, home
>network, as well as the values that go there.  What I'm not sure about when
>using DHCP is which of the fields (if any) need to be filled in?  Apart from
>enabling DHCP there (by entering a "y" in the appropriate field), which other
>fields might I need to fill in?  Do I need to know anything about the network
>addressing scheme where I'll be using the laptop, or will DHCP take care of
>detecting and utilizing all those values?
>
>Depending on the enlightenment or confusion that results from answers I may
>receive to this query, I may need to pose additional questions.  Thanks for
>your help.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
