From: Nathan <nate@nateworks.ca>
Subject: Re: Throttling Bandwidth
Date: Wed, 16 Oct 2002 10:57:33 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0210161052290.32731-100000@willy.nateworks.ca>
References: <004601c27531$7eb7d7a0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004601c27531$7eb7d7a0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org


> Is there a way to limit the bandwidth my Linux server uses when
> downloading from ftp sites? It pretty much cripples the rest of the
> company.

Hi Paul, thankfully the linux kernel rocks ! there are a few diffrent ways
you can do it, but what worked for me is classed based queing.

 Check out http://lartc.org/.

Cheers,
Nathan

> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com
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
