From: Nathan <nate@nateworks.ca>
Subject: Re: eth0 promiscuous mode
Date: Fri, 30 Aug 2002 09:33:23 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0208300931500.20009-100000@willy.nateworks.ca>
References: <3D6F9AC0.2030501@tulane.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D6F9AC0.2030501@tulane.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Yeu <dyeu@tulane.edu>
Cc: linux-newbie@vger.kernel.org


Hi David,

> Will promiscuous mode work properly if my computer is plugged into a
> switch? I've tried unsuccessfully to use tcpdump or tethereal to view
> all the network traffic, but I'm always confined to traffic that either
> originates or is destined to my machine (broadcasts too).  Or is it
> perhaps the NIC?  Do all NICs have the ability to go into promiscuous
> mode?

that is really the point of a switched network. Switches are supposed to
be smart in that they learn about who is at what port and only repeat
broadcast traffic to everyone.

Cheers,
Nathan


> Thanks in advance.
>
> Dave.
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-- 

"Whoever undertakes to set himself up as a judge of Truth and Knowledge is
 shipwrecked by the laughter of the gods."
   Albert Einstein

Chisolm's First Corollary to Murphy's Second Law:
	When things just can't possibly get any worse, they will.
--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
