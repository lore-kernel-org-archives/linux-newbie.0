From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: man page formatting problem?
Date: Thu, 22 May 2003 05:35:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3ECCC40C.3020605@bcgreen.com>
References: <1362.1053508561@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1362.1053508561@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Amin <raihan@citech-bd.com>
Cc: linux-newbie@vger.kernel.org

try

export LC_ALL=C

it seems to be a locale problem with man

Amin wrote:
> Hi,
> 
> I've noticed this about man pages displayed in an X terminal
> application such as xterm, etc. --- the dashes (hyphens) and
> quotation marks don't show up (in xterm), and when they do
> (in Konsole), it's sporadic --- some show, and others show
> up as weird-looking characters.
> 
> I think this is a problem with GNU nroff, which formats the
> man pages, but I don't know where to go from there.  This
> hasn't been a problem for me until recently, because I've
> just started copying examples from man pages.
> 
> I was hoping someone here could give me a couple of
> pointers.
> 
> Thanks,
> Yawar Amin
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
Powerful committed communication, reaching through fear, uncertainty and
doubt to touch the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
