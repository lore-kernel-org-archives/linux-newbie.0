From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Extraction of PID
Date: Sat, 26 Jul 2003 10:22:32 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307261022.32234.pa3gcu@zeelandnet.nl>
References: <20030726065829.DD46B1041E@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030726065829.DD46B1041E@heisspf>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>, linux <linux-newbie@vger.kernel.org>

On Saturday 26 July 2003 08:58, Peter wrote:
> Hi,
>
> How do I isolate from a line like
>
> 1865 tty2 00:00:18 exmh
>
> the first 4 numbers which is the PID. I get it with "ps -a --pid 1111 |
> grep exmh".

If your system has "pidof" installed; then

'pidof exmh'

> Thanks & regards

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
