From: Robin Doer <robin@robind.de>
Subject: Re: Search tool
Date: Fri, 28 Feb 2003 09:50:07 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302280950.07497.robin@robind.de>
References: <20030227190533.9852.qmail@webmail17.rediffmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030227190533.9852.qmail@webmail17.rediffmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: n  mishra <mishra_nn@rediffmail.com>
Cc: linux-newbie@vger.kernel.org

> I am trying to write a program in c to be able to search a file
> for any pattern which will be given by the user at
> runtime.Basically a search tool.
> Could someone suggest a good way of doing this.I've heard of lex
> and yacc and also awk.Which one is better or is there any other
> option.

Indeed. 
Some days ago there was a discussion in the ML "File name with spaces" - go 
through a filesystem and make something. You can use use this as input.

> Or is there any way i can use something like grep through a 'c'
> program.

Check the manpages of opendir, readdir... and regex

Good look,
Robin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
