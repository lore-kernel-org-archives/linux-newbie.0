From: James Miller <jamtat@mailsnare.net>
Subject: Re: basic networking queries
Date: Wed, 6 Aug 2003 15:23:25 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0308061510010.1066@homenet>
References: <Pine.LNX.4.56.0307242218050.6210@homenet>
 <5.1.0.14.1.20030724200741.01ee7cc0@celine> <Pine.LNX.4.56.0307242218050.6210@homenet>
 <5.2.0.9.0.20030731205941.05fa7168@SpeakEasy.but.no.reading.jeffwoods.us>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.2.0.9.0.20030731205941.05fa7168@SpeakEasy.but.no.reading.jeffwoods.us>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

Well, this will likely be my final installment on this DHCP issue and the
PCMCIA "schemes" I wrote about earlier.  I have gotten a certain
arrangement to work, though I'm not sure how and why it works.  I suppose
this is a little better than not having it work and not knowing why it
won't work, so I shouldn't complain too much.  And, the workings of it all
may dawn on me as time passes - if senility doesn't set in first, that is.
It turns out that the "solution" (i.e., the procedure that allows me to
use my old laptop on either my home, statically-addressed LAN, or on a
larger DHCP network) is simple.  I don't need any alternate "schemes" or
anything like that.  I just boot the thing like normal, let the init
scripts (I think that's what they're called) assign my home network values
to the PCMCIA NIC interface and all that.  If I'm at home, all is well and
good and off I go onto my network.  If I'm away, I simply issue from the
command line "dhcp," and all the necessary network settings are found and
assigned to the NIC (or wherever they get stored), overriding the static
values I assigned there for the home network.  And away I go onto
that network.  All the while, I sit there stymied, wondering how I can
cram any further information on networking and DHCP into my head.
Clarifications on why this works, what may have been my misperceptions (as
long as these don't involve statements like "that's what u get fer
thinking u were smart enough to use Linux!") etc, are, as always, welcome.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
