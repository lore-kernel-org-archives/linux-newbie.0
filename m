From: Kev <savage-garden@hanikamail.com>
Subject: Re[8]: Linux Help
Date: Tue, 20 Jul 2004 23:01:26 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040720230038.16D4.SAVAGE-GARDEN@hanikamail.com>
References: <20040720222206.16C0.SAVAGE-GARDEN@hanikamail.com> <5.1.0.14.1.20040720094640.01fc1668@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040720094640.01fc1668@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

>If memory serves (I'm not certain, though), the stock Debian install kernel 
>does NOT contain support for NICs that use the rtl8139 driver (or the newer 
>8139too driver). If that's the "comm one" you are referring to, you will 
>need to add a module for it to do an online install.

LAN cards are both, Realtek RTL8139

:(


On Tue, 20 Jul 2004 09:54:41 -0700
Ray Olszewski <ray@comarre.com> wrote:

>At 10:26 PM 7/20/2004 +0600, Kev wrote:
>[...]
>>LAN Card are Realtec both same model , a comm one but cant remember the
>>exact model tho, sorry
>
>If memory serves (I'm not certain, though), the stock Debian install kernel 
>does NOT contain support for NICs that use the rtl8139 driver (or the newer 
>8139too driver). If that's the "comm one" you are referring to, you will 
>need to add a module for it to do an online install.
>
>> >--> system. (Except I don't know what "some AV for the email relay" 
>> means ... I
>> >--> can't parse "AV" in this context.) The extra RAM should handle your Web
>>
>>AV = AntiVirus for the SMTP relay.
>>but not sure what i'm going to use.
>
>Ah. I guess that's why words communicate better than made-up abbreviations 
>(for me, AV = audio-visual, but that made no sense in context).
>
>I just skimmed the Debian package list (for Sid; Woody will be less 
>complete or current) and found that postfix has these associated packages:
>
>         amavis-ng - AMaViS "Next Generation"
>         amavisd-new - Interface between MTA and virus scanner/content filters
>         amavisd-new-milter - Interface between sendmail-milter and amavisd-new
>
>         postgrey - Greylisting implementation for Postfix
>         webmin-postfix - postfix control module for webmin
>
>Not having used any of this stuff myself, I can neither recommend nor 
>criticize it ... just let you know it is (probably) there, for you to take 
>a look at.
>
>
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>

------- 
Web Hosting at cheep price, stating at $1 per moth with your own domain, .COM, .NET, .LK, .ORG etc..
PHP, CGI, Perl, MySQL, Cpanel 9, POP3, POP3s, SMTP, IMAP, FTP,
http://www.orbitsl.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
