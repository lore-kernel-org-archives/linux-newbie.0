From: chuck gelm <nc8q@gelm.net>
Subject: Re: Extraction of PID
Date: Sat, 26 Jul 2003 10:57:48 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F225EAC.AD9A00BA@gelm.net>
References: <20030726065829.DD46B1041E@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>, linux-newbie@vger.kernel.org

ps -a --pid 1111 | grep exmh | cut -b 2-5

HTH, Chuck

Peter wrote:
> 
> Hi,
> 
> How do I isolate from a line like
> 
> 1865 tty2 00:00:18 exmh
> 
> the first 4 numbers which is the PID. I get it with 
"ps -a --pid 1111 | grep > exmh".
                         ^
                         ?

> 
> Thanks & regards
> --
> Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
