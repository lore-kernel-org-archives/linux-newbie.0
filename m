From: Ray Olszewski <ray@comarre.com>
Subject: Re: tcpdump: How do I filter 'bootp' packets?
Date: Wed, 08 Dec 2004 07:50:38 -0800
Message-ID: <5.1.0.14.1.20041208074743.02034e78@celine>
References: <5.1.0.14.1.20041207220544.01f98370@celine>
 <Pine.LNX.4.21.0412080338310.623-100000@hestia>
 <Pine.LNX.4.21.0412080338310.623-100000@hestia>
 <5.1.0.14.1.20041207220544.01f98370@celine> <41B6FDFC.3070309@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41B6FDFC.3070309@gelm.net>
References: <5.1.0.14.1.20041207220544.01f98370@celine>
 <Pine.LNX.4.21.0412080338310.623-100000@hestia>
 <Pine.LNX.4.21.0412080338310.623-100000@hestia>
 <5.1.0.14.1.20041207220544.01f98370@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:13 AM 12/8/2004 -0500, chuck gelm wrote:
>Howdy:
>
>  I have cable modem access to the internet now and the download speed is
>double my original DSL speed.  :-)    However, I am concerned about
>security.
>
>  Can other cable modem subscribers see my packets?
>
>  To test this, I am trying to use tcpdump to monitor packets that my
>cable modem is sending to my 'router'.
>
>  I am using these arguments:
>tcpdump -i eth1 -c 9 -nt not arp and not host W.X.Y.Z > \ 
>http://gelm.net/tcpdump.txt
>
>
>  (<W.X.Y.Z> == My assigned IP address)
>
>  I am still seeing many 'bootp' packets.
>
>How do filter out 'bootp' packets with tcpdump?

Since bootp packets necessarily preceed assignment of an IP address, they 
are commonly broadcast (255.255.255.255) packets, removing the option of 
filtering by address. But they do come from standaard ports -- 67 for the 
server, 68 for the client -- so you can try filtering on port number.

Information connecting port numbers to service labels can be found in 
/etc/services (for the common ones), for future reference.







-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
