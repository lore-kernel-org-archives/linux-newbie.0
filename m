From: "J." <mailing-lists@xs4all.nl>
Subject: Re: [SOLVED] Re: File names with spaces
Date: Fri, 21 Feb 2003 09:59:37 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0302210955390.4563-100000@hestia>
References: <20030220171332.GA4937@teamfinders.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030220171332.GA4937@teamfinders.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

On Thu, 20 Feb 2003, Theo. Sean Schulze wrote:

> J.,
> 
> Thanks for your suggestions.  While googling comp.unix.shell today, I found yet another method.  I was not aware that "*" when used by itself matches every filename in a directory.  Apparently, part of the problem I was having was a side effect of ls and find.  Here is the script that I used:
> 
> #!/usr/bin/bash
> for file in *
> do
> 	newfile="`echo "$file" | tr '[:blank:]' '[_*]'`"
> 	mv "$file" "$newfile"
> done
> 
> I also learned something important about tr.  I was using [:space:], but that is not appropriate here.  [:space:] includes horizontal as well as vertical whitespace.  That means I was transforming linefeeds as well as spaces.  [:blank:] is exclusively horizontal whitespace, which is what I needed.
> 
> Thanks to all of you who contributed.  I appreciate your help.
> 
> Cheers,
> Sean

BTW,

please remember that `blank' is a GNU extension, regarding portability
issues.. etc..

~$ man isblank

J.

p.s.
Please use a more sane line-wrapping.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
