From: Jim Nelson <james4765@verizon.net>
Subject: Re: tcpdump: How do I filter 'bootp' packets?
Date: Wed, 08 Dec 2004 17:10:45 -0500
Message-ID: <41B77BE5.6000001@verizon.net>
References: <Pine.LNX.4.21.0412080338310.623-100000@hestia> <Pine.LNX.4.21.0412080338310.623-100000@hestia> <5.1.0.14.1.20041207220544.01f98370@celine> <41B6FDFC.3070309@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41B6FDFC.3070309@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: chuck@gelm.net
Cc: linux-newbie@vger.kernel.org

chuck gelm wrote:
> Howdy:
> 
>  I have cable modem access to the internet now and the download speed is
> double my original DSL speed.  :-)    However, I am concerned about
> security.
> 
>  Can other cable modem subscribers see my packets?
> 

IIRC, most modern cable modems filter anything not addressed to them - you'd have 
to hack your modem to get it to go into promiscuous mode.

It's not easy to do, and it relies on brain-dead network admins to leave some back 
doors in.

OTOH, you could probably find hardware to do just this - if you were in law 
enforcement.

>  To test this, I am trying to use tcpdump to monitor packets that my
> cable modem is sending to my 'router'.
> 
>  I am using these arguments:
> tcpdump -i eth1 -c 9 -nt not arp and not host W.X.Y.Z > \ 
> http://gelm.net/tcpdump.txt
> 
> 
>  (<W.X.Y.Z> == My assigned IP address)
> 
>  I am still seeing many 'bootp' packets.
> 
> How do filter out 'bootp' packets with tcpdump?
> 
> Regards, Chuck
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
