From: Kev <savage-garden@hanikamail.com>
Subject: Re[9]: Linux Help
Date: Tue, 20 Jul 2004 23:56:46 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040720235600.16DA.SAVAGE-GARDEN@hanikamail.com>
References: <Pine.LNX.4.58.0407201204100.1363@debian-emach> <5.1.0.14.1.20040720102550.01f36bf8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040720102550.01f36bf8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

FOUND IT

> Realtec ? Maybe 8139too or 8139cp... RealTek RTL-8029 ? that is ne ... .
> ( ne is generally a module I constantly try because NE1/2000 are widely
> used :) ). 
> 
Oh well, command is "modprobe 8139too" or "modprobe 8139cp" or "modrpobe
ne" ... after you found out which one works, put it into /etc/modules.

THANKS GUYS !!!!!


On Tue, 20 Jul 2004 10:28:31 -0700
Ray Olszewski <ray@comarre.com> wrote:

>At 12:08 PM 7/20/2004 -0500, James Miller wrote:
>>On Tue, 20 Jul 2004, Kev wrote:
>>
>> > >If memory serves (I'm not certain, though), the stock Debian install 
>> kernel
>> > >does NOT contain support for NICs that use the rtl8139 driver (or the 
>> newer
>> > >8139too driver). If that's the "comm one" you are referring to, you will
>> > >need to add a module for it to do an online install.
>> >
>> > LAN cards are both, Realtek RTL8139
>>
>>I know I'm being timorous for questioning your memory here Ray, but I'm
>>almost sure when I did my Debian install here (starting from floppies) on
>>my machine that has an onboard rtl8139 NIC, I did get network support
>>without loading of additional modules.  If I'm wrong - well, what do you
>>expect from a newbie? :)
>
>About as much as I expect from an old timer with a failing memory. (That's 
>why I said I wasn't certsin when I posted it ... being lazy, these days I 
>*always* put a tulip-based NIC in any system I am setting up, then switch 
>to its "real" NIC after I have the kernel I actually want to use on the 
>system installed.)
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
