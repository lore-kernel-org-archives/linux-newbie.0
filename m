From: Marco Calistri <ik5bcu@tin.it>
Subject: Re: (F)A "subject" rule for procmail
Date: Sun, 14 Sep 2003 21:56:35 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <XFMail.20030914215635.ik5bcu@tin.it>
References: <20030914094953.GA571@archibold.chu.cam.ac.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030914094953.GA571@archibold.chu.cam.ac.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Steven <sos22@cam.ac.uk>
Cc: linux-newbie@vger.kernel.org


On 14-Sep-2003 Steven wrote:
>> How can I set the rule into procmailrc to block ALL Sildenafil topic subject
>> ?
> Try:
> 
>:0
> * ^Subject:.*Sildenafil.*
> spam/.   
> 
> Steven Smith,
> sos22@cam.ac.uk.

With this I want to reply both to you,to Peter Edstrom and to dashielljt.
Well first of all many thanks to all of you for interesting answers,however I
think I solved a lot of problems by upgrading my SpamAssassin from 2.20 to 2.55
which includes bayesan filter and a DNS-RBL check against possible spam sources.
I am testing it at present and I cannot yet say "it works perfectly" but at
least I can affirm that it works much better respect the older version.
I'd like to read and learn more about the RBL feature and run some tests on
this to see if it really works.

Many thanks again and best Regards.

Marco

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
