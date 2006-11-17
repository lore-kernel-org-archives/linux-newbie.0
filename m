From: Ray Olszewski <ray@comarre.com>
Subject: Re: DialUp and ADSL on same machine??
Date: Fri, 17 Nov 2006 14:17:50 -0800
Message-ID: <455E350E.20006@comarre.com>
References: <20061117205845.GA1319@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20061117205845.GA1319@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal wrote:
> 	As far as I can see I cannot have a pppoe setup and a dialup
> setup on the same machine.. It's either one or the other.. Not both..
> This machine has a NIC and a hardware modem, with the modem running
> for years with little problems.. "Adding" PPPOE for ADSL completely
> upsets everything, necessitating an install of the ppp package and
> running pppsetup again from scratch, in order to have dial up again..
> 
> 	Am I wrong??  Any comments most welcome. TIA
> 

I'm afraid, Hal, that I can respond in only the most general way. I 
don't know if this vague a response will help or not.

It should be possible to have on your system setups for both dial-up 
(ppp) and ADSL (pppoe). At least the underlying stuff (kernel modules, 
drivers, and userspace apps) should be able to handle it. But you'll 
probably need to do the setup by hand, because scripts like pppsetup 
tend to be written to handle only "vanilla" cases ... in this instance, 
a host with a single pppd interface requirement. For example, you'll 
probably want to make one of the interfaces ppp0, the other ppp1.

If you want both connections to run at the same time, there will be some 
added complications, mainly involving the host's routing table. But I'm 
guessing you want to maintain the dial-up as a backup arrangement, for 
when the DSL connection fails or, perhaps (if we're discussing a laptop, 
say) when you are away from the home connection. So you'll want a way to 
use apps like ifup and ifdown to switch interfaces.

Having said all that, I am, unfortunately, way too rusty on pppd to help 
with the details (I have the good fortune to have a static-address DSL 
line here, so I don't have to jump through any pppoe hoops, and I don't 
even own a modem). But if you provide the usual sorts of details, 
someone else here may be able to give you more exact advice.

Sorry I can't offer more help on this one.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
