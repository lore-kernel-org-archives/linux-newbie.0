From: beolach@juno.com
Subject: Re: Manually assigning identical cards
Date: Wed, 23 Jul 2003 05:29:31 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030722.222946.505.500018@webmail10.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Adam@Luchjenbroers.com
Cc: linux-newbie@vger.kernel.org


A good read on this is in the Ethernet-HOWTO, available
online in The Linux Documentation Project,  at:
<http://www.tldp.org/HOWTO/Ethernet-HOWTO.html>.

Specifically, you would be interested in Section 2.3
"Using More than one Ethernet Card per Machine" at:
<http://www.tldp.org/HOWTO/Ethernet-HOWTO-2.html#ss2.3>

Also note that many distributions include these HOWTOs
(I don't know about yours... I've actually never heard
of Smoothwall).  Where to find it on your local machine
varies from distribution to distibution; in Slackware
(that I use) they are in /usr/doc/Linux-HOWTOs.

Hope this helps,
Conway S. Smith

--- Adam Luchjenbroers <Adam@Luchjenbroers.com> wrote:
> 
> 
> I have a computer thats going to be set up as a proxy server. It has 3 network 
> cards in it (1x 3Com Etherlink III PCI, 2x 3Com Etherlink III ISA)
> 
> I need to know which interface is which, how might I manually assign them to 
> eth0-2 even though they're all using the same driver?
> 
> OS is Smoothwall 2.0 Beta5 "Orient"
> 

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
