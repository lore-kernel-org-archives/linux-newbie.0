From: David Fierbaugh <david@fierbaugh.org>
Subject: Re: Netconfig Fail
Date: Thu, 6 Oct 2005 07:53:56 -0500
Message-ID: <200510060753.56561.david@fierbaugh.org>
References: <20051006091512.7dd839e8.heisspf@skyinet.net> <200510052204.15272.david@fierbaugh.org> <20051006105408.1d7ead8f.heisspf@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051006105408.1d7ead8f.heisspf@skyinet.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thursday 06 October 2005 09:54 am, Peter wrote:
> On Wed, 5 Oct 2005 22:04:14 -0500
>
> David Fierbaugh <david@fierbaugh.org> wrote:
> > Are you connecting to a home router, or to a cable/dsl modem?
> >
> > Some cable/dsl services watch the MAC address, and won't allow
> > connections from any other network card.
>
> I have a broadband connection and had no problem with netconfig and the
> onboard LAN card. -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

Have you tried booting knoppix? It is often helpful to try it out, and then 
you might be able to tell if it's a hardware problem, or software setup 
issue.

if it works under knoppix, try issueing a lsmod from the command line to find 
out what modules are loaded. Then, rmmod the ones that might be the network 
card, until it stops working, write that one down, reboot and try modprobing 
it to see if that makes the card work.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
