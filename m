From: Matti Aarnio <matti.aarnio@zmailer.org>
Subject: Re: Arp Implementation Example....
Date: Wed, 17 Mar 2004 16:32:12 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040317143212.GX1653@mea-ext.zmailer.org>
References: <89760D3F308BD41183B000508BAFAC4104B17006@DDCNYNTD>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <89760D3F308BD41183B000508BAFAC4104B17006@DDCNYNTD>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: RANDAZZO@ddc-web.com
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

On Wed, Mar 17, 2004 at 08:39:37AM -0500, RANDAZZO@ddc-web.com wrote:
> All;
> 
> I am developed a network driver for my fibre channel device.
> I've used the O'Reilly Linux Device Driver's "snull.c and snull.h"
> as an example.
> 
> Problem is this example does not implement ARP.  After many attempts, I
> can't seem to pass an ARP packet successfully up
> the stack......

  ARP-request is just one more of network packets that are passed
  up into network code like any other by calling  netif_rx().
  As long as the packet is recognizable by the upper layers as
  an SKBUF with ARP request, all will be fine.

  Oh yes,  not all network interfaces need to support ARP at all.
  The PPP is one such example.  Nor do all ARP request frames carry
  same tags as ethernet ARP does.   Nevertheless one can pass ARP-
  requests thru a PPP link. See  drivers/net/ppp*  files about
  how that is handled.

> Does anyone know of an example driver / website that shows the formatting
> and responsibility of the network driver, with regards
> to ARP?
> 
> Any help is much appreciated...
> 
> BTW, I'm using Linux 2.4....

/Matti Aarnio
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
