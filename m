From: Robin Rosenberg <robin.rosenberg.lists@dewire.com>
Subject: Re: 2 nics in the same machine...
Date: Thu, 18 Mar 2004 22:54:22 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403182254.22969.robin.rosenberg.lists@dewire.com>
References: <89760D3F308BD41183B000508BAFAC4104B17010@DDCNYNTD>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <89760D3F308BD41183B000508BAFAC4104B17010@DDCNYNTD>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: RANDAZZO@ddc-web.com
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

On Thursday 18 March 2004 21:20, RANDAZZO@ddc-web.com wrote:
> I have connected two nics in the same machine with a null modem cable...
> I have configured nic 1 to be 156.15.16.1 and nic 2 to be 156.15.16.2
> I have adjusted the routes so that nic 1 routes to nic 2 and vice versa...
> how come when I ping 156.15.16.1 it does not go out nic 2...
> am I missing something?

Yes. The ping packet is already at it's destination.

-- robin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
