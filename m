From: Ray Olszewski <ray@comarre.com>
Subject: Re: wired/wireless bridge: a more surefire Linux wireless
  solution?
Date: Thu, 03 Feb 2005 09:48:17 -0800
Message-ID: <5.1.0.14.1.20050203094213.04a1f228@celine>
References: <Pine.LNX.4.58.0502021428050.7624@localhost.localdomain>
 <Pine.LNX.4.58.0502021428050.7624@localhost.localdomain> <Pine.LNX.4.58.0502030811090.7624@localhost.localdomain>
Mime-Version: 1.0
In-Reply-To: <Pine.LNX.4.58.0502030811090.7624@localhost.localdomain>
References: <Pine.LNX.4.58.0502021428050.7624@localhost.localdomain>
 <Pine.LNX.4.58.0502021428050.7624@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-71C24702"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:21 AM 2/3/2005 -0600, James Miller wrote:

>On Wed, 2 Feb 2005, James Miller wrote:
>
> > So, let me just ask: is this really some sort of solution to the wireless
> > support problem under Linux? People objected to that poster's suggestion
> > on the basis that it was too bulky (extra pieces of hardware like the
> > bridge and its power adaptor). Maybe it's a bit more expensive, too.
>
>Looking around at prices, wired/wireless bridges do seem a bit more
>expensive than traditional wireless cards. I see prices starting at around
>$35 for these, while wireless NIC's can be had on sale for as low as $10
>(after rebates!). But what good is an unsupported $10 wirless NIC going to
>be, anyway? I note in advertisements that these bridges are expressly
>described as allowing computers to connect to wireless LANs (along with
>set-top boxes, gaming consoles etc etc), and many even claim Linux
>support. This looks to me like a good alternative to suggest to Linux
>newbies interested in using wireless networks--i.e., for those who haven't
>bought an already-wireless-enabled machine and are simply trying to get
>the built-in wireless hardware to work under Linux.


James -- You are right that a $35 bridge that works is a better buy than a 
$10 card that does not work. And I've even seen these bridges as low as $20 
(after rebates) from time to time (this due to my proximity to Fry's 
Electronics; I never see deals that good online.

One thing people haven't mentioned here, though, is the NDIS-wrapper 
approach. This uses some wrapper code to let the kernel operate a WLAN card 
using its Windows driver software. I forget the URL, but if you Google, 
"NDIS Linux", you'll probably find it. And my son, who (unlike me) has a 
WLAN running at his home, says his recent experience is that the technique 
works well, except for dual-CPU systems, where (I think this is what he 
said) it can lead to a race condition.




-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.300 / Virus Database: 265.8.5 - Release Date: 2/3/2005


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
