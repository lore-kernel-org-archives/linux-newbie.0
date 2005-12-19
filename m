From: Andrew <ald2@arrakis.es>
Subject: Re: adsl, firewalls, etc.
Date: Mon, 19 Dec 2005 17:22:39 +0100
Message-ID: <43A6DE4F.5070103@arrakis.es>
References: <43A66B34.6070102@arrakis.es> <43A6D298.1020203@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43A6D298.1020203@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org


>> The free modem my isp provided has no support under Linux so I had to 
>> take the router option. It's a Draytek Vigor 2500. The defect 
>> configuration leaves ports 20 (ftp-data),  23 (telnet) and 80 (http) 
>> open, the rest are stealthed (according to Shields Up). Am I right in 
>> thinking this is not such a good idea? I haven't yet had any success 
>> in trying to add rules to close these ports, and my isp 'cordially' 
>> informs me that this is up to me to sort out, so for the time being I 
>> am simply disconnecting when not in use (about 16 hours a day). Am I 
>> being over-paranoid?
>>
> "The free modem my isp provided has no support under Linux so I had to 
> take the router option."
>
> I disagree.
>
> I have had two aDSL acounts; Earthlink and the local telephone company 
> Ameritech (now SBC/Yahoo).
> Each setup came with a DSL modem and an ethernet card at no charge 
> other than a one year commitment.
> Both accounts came with Windows(r) software and not Linux software.
> Both modems worked flawlessly with Linux.  I used RoaringPenguin (PPPOE).
> I don't know what protocol your ISP (Spain?) uses, but there may 
> already be a Linux application for it.

OK. I'll add that to my growing list of todos. The modem is a Vigor 318.

> There may be no need for explicit Linux support from the ISP as 
> current Linux distributions may already contain
> the needed application(s).  Sorry that this information is not your 
> current solution, but I wanted to post
> this response so that others may opt to accept the standard modem.
>
> Your answer, now, lies in the configuration of the router.

Since I'm going to need more ports than there are on the router anyway, 
and since I have some familiarity with Freesco and shorewall, as well as 
about half a dozen 486s and similar, would it be simplest/advisable to 
put everything behind a dedicated firewall and not bother to mess about 
with the router? (Or get the free modem working and sell the router).

> Unless you are offering a service to other internet hosts
> or want to enable remote access to your router, you do not need any 
> open ports
> on the WAN side of your router.

I'm not.

> IMHO, disconnecting two thirds of the time is a silly solution.

Not so much 'silly' as a PITA (and only a stopgap).

> OBTW, are you disconnecting the modem from the telephone line or 
> disconnecting your computer from the modem?

Modem from telephone line.

>
> Suggestion:
> Disable remote access to the router via WAN (and wireless, if 
> applicable).
> Else; Change the router's internal web server to a different port;
>         e.g. between 2000 - 65535 and not 8080.

Thanks for your answers.

Andrew
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
