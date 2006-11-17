From: Chuck Gelm <Chuck@Gelm.net>
Subject: Re: DialUp and ADSL on same machine??
Date: Fri, 17 Nov 2006 17:38:37 -0500
Message-ID: <455E39ED.9010705@Gelm.net>
References: <20061117205845.GA1319@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20061117205845.GA1319@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

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
Hi, Hal:

 You may be right or wrong, but I think you are ambiguous.  :-|

 I used 'pppsetup' for a few years, then RoaringPenguin (PPPOE) a few years
when I upgraded to DSL, and now I have cable modem internet access.

 Both 'pppsetup' and "PPPOE" are used to connect to an
Internet Service Provider (ISP).    So...

"As far as I can see I cannot have a pppoe setup and a dialup setup on 
the same machine."

IMHO, is ambiguous and false.  You can have both on the same machine.  
They may not
run concurrently unless you edit some configurations. (iptables, 'route 
-n', /etc/resolv, ...)
You could share (or not) your DSL connection by allowing users to dial 
into your
telephone modem and establish a ppp connection through (or to) your host.

"completely upsets everything"  IMHO, is ambiguous.  Each may change 
(upset?)
/etc/resolv, routing tables, DNS, IPTABLES, ... for the other program.  ;-)

Both packages perform a similar function.  Connect to an ISP.

'pppsetup':
"... PPPsetup is a bash shell script to help you in creating a chat 
script, for
establising a PPP connection to a internet service provider. ..."

'rp-pppoe':
"... pppoe is a user-space redirector which permits the use of PPPoE
(Point-to-Point Over Ethernet) with Linux.  PPPoE is used by many
DSL service providers. ..."  i.e. connect to an internet service proveder.

 Just for grins, when I had DSL service. I dialed my '56k' modem to an ISP
just to see if the DSL telephone frequencies would interfere with the
telephone modem frequencies.  Whilst doing a download via DSL, I dialed
and got a 49.333 kbps connection over and over and over...   Which was as
fast as I ever got before DSL.    :-)

HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
