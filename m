From: "Enrique Nieves" <spanfax@charter.net>
Subject: Re: Newbie installation problem
Date: Sun, 4 Aug 2002 13:08:13 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001301c23bd9$848cb0b0$6401a8c0@ENRIQUE>
References: <5.1.0.14.1.20020802181721.02153750@celine> <5.1.0.14.1.20020804005505.02187b30@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org



> No no no. If RH cannot detect the NIC, then the problem is inside the
> computer. Things like cabling come way later.  (But if the problem is NOT
> NIC detection ... see below ... then the problem could be in the cabling,
> evn if the lights indicate a connection. Do you ever see actual traffic
> over the link?)


I don't see any traffic.


>
> [...]
> > > 1. What NIC do you have in the system?  Make and model.
> >
> >Netgear, 32 bit, PCI Adapter, 10/100 Mbps Fast Ethernet FA311
>
> It is *possible* that RH simply does not autodetect this one, perhaps
> because does not include its module in the ones it automatically tries. I
> don't use this NIC itself, but I seem to recall that it uses one fo the
> less common modules (natsemi.o maybe? does anyone else recall?). You may
> need to add it manually (however RH provides for that).


I'll try adding the driver that came with the Netgear NIC manually.


>
> > > 2. At what stage does RH fail? (Technically, eth0 is an interface, not
a
> > > card; it does not get created until -AFTER- the card has been detected
and
> > > an appropriate kernel module loaded.)
> >
> >When booting up and detecting hardware it indicated that it can't detect
IP
> >settings
>
> What do you mean by "IP settings"? This phrase usually means the systems's
> own IP address and routing information (network, gateway, possibly DNS
> servers). It would not be looked for at the hardware detection stage. So
> either you have the place where the failure occurs wrong, or you mean
> something different from what I use this phrase to mean.
>
> > > 3. Quote the EXACT error message (not just the word "FAILED").
> >
> >After the error message FAILED it indicates that IP settings can't be
> >detected
>
> Once again I'd ask for the exact error message, not your interpretation of
> what "it indicates". The paraphrase you provide reads like the NIC itself
> it detected but the installer can't get an IP address and such. If that is
> so, then please tell us what you are telling the system about how it
should
> get an IP address and related information (netmask, gateway, maybe DNS
> servers ... whatever the installer asks about).



The exact message is:

"Checking for New Hardware
                .
                .
                .
Bringing up interface Eth0:
    Determining IP information for Eth0 . . . failed

[FAILED]"


This occurs when the RH 7.3 does the initial boot up.




> After I wrote this, I saw that Riley replied with a lot of good advice ...
> only it was based on guesses about what some unclear parts of what you
> wrote mean. If he got it right, then that should take care of your
> problems. If he guessed wrong, you need to describe the location and
nature
> of the error more clearly than you have so far.

Thanks again for you patience.

Enrique



>
>
> --
> -------------------------------------------"Never tell me the
odds!"--------
> Ray Olszewski -- Han Solo
> Palo Alto, California, USA   ray@comarre.com
> --------------------------------------------------------------------------
-----
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
