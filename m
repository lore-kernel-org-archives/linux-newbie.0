From: Ray Olszewski <ray@comarre.com>
Subject: Re: adsl, firewalls, etc.
Date: Mon, 19 Dec 2005 09:07:17 -0800
Message-ID: <43A6E8C5.7030904@comarre.com>
References: <43A66B34.6070102@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43A66B34.6070102@arrakis.es>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Andrew wrote:
> Midwinter greetings,
> 
> I have just moved one rung up on the evolutionary scale and got myself 
> an adsl connection. I am probably going to make a few relatively minor 
> changes to my home lan because of this, but before going any further 
> there is one issue worrying me:
> 
> The free modem my isp provided has no support under Linux so I had to 
> take the router option. It's a Draytek Vigor 2500. The defect 
> configuration leaves ports 20 (ftp-data),  23 (telnet) and 80 (http) 
> open, the rest are stealthed (according to Shields Up). Am I right in 
> thinking this is not such a good idea? I haven't yet had any success in 
> trying to add rules to close these ports, and my isp 'cordially' informs 
> me that this is up to me to sort out, so for the time being I am simply 
> disconnecting when not in use (about 16 hours a day). Am I being 
> over-paranoid?

Andrew -- Your report was a bit too sketchy to get a good answer, in 
that you didn't say if you did your scan from the LAN side or the WAN 
side of the router. Ports open on one interface need not be open on the 
other.

Unfortunately, Draytek apparently doesn't make its manual for the Vigor 
2500 available online (as a PDF, say), so I couldn't check the details 
behind your report very much. But this entry in the FAQ -- 
http://www.draytek.co.uk/support/kb_vigor_portforwarding.html -- at 
least implies that the telnet and http ports are open on both interfaces.

Now using insecure protocols for configuration on the LAN side isn't 
great (I'd much prefer to see manufacturers use ssh and https), but it 
isn't a disaster either ... especially not in SOHO settings. Using them 
on the WAN side, though ... this brings to mind the old playground 
epithet, "Dumb as a stick." Now you'll want to check this by redoing 
your port scan on the WAN side, but if I've read the FAQ right, 
Draytek's designers have achieved dumb-as-a-stick status by opening 
these ports (telnet, http) on BOTH interfaces.

Were I confronting this situation, I would not buy Draytek products and 
I'd tell them why. But you're stuck with the thing, so that's not really 
practical advice for you. How do you minimize the risks? Here's what I'd do.

1. Move the telnet and http connections to different ports. Use obscure 
ones, not obvious ones like 8080 for http. The URL I quoted above tells 
you how to do this over the Web interface.

2. Protect these connections with good, hard-to-guess passwords.

3. Never, never, never connect to either of them from the WAN side, or 
when there is any risk of a snooper being present on the LAN side (e.g., 
if you ever start running WiFi).

This is not a perfect solution, but it should be enough to protect you 
from casual attackers. (The real threat distinctive to insecure 
protocols is password sniffing, and attackers can't sniff a password 
that you never transmit.) And you need something like this for the 8 
hours you are connected, even if you continue to turn the connection off 
for the other 16 hours. In the end, though, it's mostly "security 
through obscurity" ... not the preferred approach to security, but 
better than none at all (and in settings like yours, genuinely better 
than its detractors make it out to be).

I didn't address the ftp issue because, frankly, I don't understand it. 
Are you sure your testing software reported port 20 as one of the open 
ones? I ask because opening port 20 (ftp-data) but not 21 (ftp-control) 
is unusual, and the FAQ does mention some use of the tftp port (69/UDP) 
for firmware upgrades.

PS -- Was calling it the "defect configuration" a purposely humorous 
description or just a typo?

PPS -- I started to look into your (later) modem inquiry, but I couldn't 
find a listing for a "Vigor 318" on the Dreytek site. Another URL 
indicated that it is a USB modem. This may not be fatal, but it does 
make Chuck's advice, which was based on his experience with DSL modems 
that use Ethernet on the LAN side (which, typically, are trivially easy 
to get working with Linux), not very relevant to your situation.

I Googled "Vigor 318 Linux" and got a few hits, but only one (an 
unhelpful one) was in English. So while getting this device to work with 
Linux might be possible, it probably won't be a snap. So the Vigor 2500 
probably is the better of your (poor) options.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
