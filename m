From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: ? wireless 802.11b, D-Link DWL-520
Date: Sun, 21 Apr 2002 19:58:03 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02042119580302.00604@unix.pa3gcu>
References: <F182IyDPxcgiKMXNaGf0001b276@hotmail.com> <02042107041801.00604@unix.pa3gcu> <3CC2F39D.AC66E99C@gelm.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3CC2F39D.AC66E99C@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>
Cc: linux-newbie@vger.kernel.org

On Sunday 21 April 2002 17:15, Chuck Gelm wrote:

I have mailed this reply to the list as i belive it will be of great interest 
to many others as well.

> I loaded the DWL-520 card and setup CD-ROM into a Win98se workstation
> to look at the configuration parameters.
>
> Mode 	[Infrastructure|802.11 Adhoc]
> SSID	[default]
> TX	[FullAuto|Auto 1 or 2|5.5|11]
> Channel	[1,...,11]
>
> The D-Link web site mentions that the DWL-520 has the
> intersil prism2.5 chipset.
> http://www.dlink.com/products/wireless/dwl520/SpecsTable.htm
>
>  I found
> http://www.linux-wlan.org/ and linux driver
> ftp://ftp.linux-wlan.org/pub/linux-wlan-ng/ \
> linux-wlan-ng-0.1.14-pre2.tar.gz
>
>  The README inside the above tarball mentions the prism2.5 chipset
> and both PCI and PCMCIA drivers.  I'm getting closer.  :-)
>
>  Next I am going to peruse the wlan.conf file as I need to know how
> to select 'AdHoc', and I want to run this device
> under part 97 rather than part 15 FCC rules&regs,
> so I need to know how to select among channel 1 through 6.

I presume you have seen in wlan.conf that it is possable to do what you 
want,?.

As another matter of interest this driver is what i need as well, it supports 
my actiontec hardware. I have a pcmica card and an usb adaptor, both seem to 
be supported. I will experiment with it later on this week.

It would seem that you asked a question and by doing so have solved a problem 
i have been pondering on for some time, as a matter of fact the devices i 
have all work well under windows XP, i did need to flach the pcmica card and 
update the XP drivers tho' after that all was fine.


>
> Thanks, Chuck nc8q
>

73's

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
