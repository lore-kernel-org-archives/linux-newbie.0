From: Ray Olszewski <ray@comarre.com>
Subject: Re[7]: Linux Help
Date: Tue, 20 Jul 2004 09:54:41 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040720094640.01fc1668@celine>
References: <5.1.0.14.1.20040720083003.01fa4db8@celine>
 <20040720211141.16B3.SAVAGE-GARDEN@hanikamail.com>
 <5.1.0.14.1.20040720083003.01fa4db8@celine> <20040720222206.16C0.SAVAGE-GARDEN@hanikamail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040720222206.16C0.SAVAGE-GARDEN@hanikamail.com>
References: <5.1.0.14.1.20040720083003.01fa4db8@celine>
 <20040720211141.16B3.SAVAGE-GARDEN@hanikamail.com>
 <5.1.0.14.1.20040720083003.01fa4db8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:26 PM 7/20/2004 +0600, Kev wrote:
[...]
>LAN Card are Realtec both same model , a comm one but cant remember the
>exact model tho, sorry

If memory serves (I'm not certain, though), the stock Debian install kernel 
does NOT contain support for NICs that use the rtl8139 driver (or the newer 
8139too driver). If that's the "comm one" you are referring to, you will 
need to add a module for it to do an online install.

> >--> system. (Except I don't know what "some AV for the email relay" 
> means ... I
> >--> can't parse "AV" in this context.) The extra RAM should handle your Web
>
>AV = AntiVirus for the SMTP relay.
>but not sure what i'm going to use.

Ah. I guess that's why words communicate better than made-up abbreviations 
(for me, AV = audio-visual, but that made no sense in context).

I just skimmed the Debian package list (for Sid; Woody will be less 
complete or current) and found that postfix has these associated packages:

         amavis-ng - AMaViS "Next Generation"
         amavisd-new - Interface between MTA and virus scanner/content filters
         amavisd-new-milter - Interface between sendmail-milter and amavisd-new

         postgrey - Greylisting implementation for Postfix
         webmin-postfix - postfix control module for webmin

Not having used any of this stuff myself, I can neither recommend nor 
criticize it ... just let you know it is (probably) there, for you to take 
a look at.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
