From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: [SOLVED] Re: File names with spaces
Date: Thu, 20 Feb 2003 18:13:32 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030220171332.GA4937@teamfinders.org>
References: <20030218213721.GA11729@teamfinders.org> <Pine.LNX.4.21.0302201111260.32557-100000@hestia>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.21.0302201111260.32557-100000@hestia>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

J.,

Thanks for your suggestions.  While googling comp.unix.shell today, I found yet another method.  I was not aware that "*" when used by itself matches every filename in a directory.  Apparently, part of the problem I was having was a side effect of ls and find.  Here is the script that I used:

#!/usr/bin/bash
for file in *
do
	newfile="`echo "$file" | tr '[:blank:]' '[_*]'`"
	mv "$file" "$newfile"
done

I also learned something important about tr.  I was using [:space:], but that is not appropriate here.  [:space:] includes horizontal as well as vertical whitespace.  That means I was transforming linefeeds as well as spaces.  [:blank:] is exclusively horizontal whitespace, which is what I needed.

Thanks to all of you who contributed.  I appreciate your help.

Cheers,
Sean

On Thu, Feb 20, 2003 at 11:22:36AM +0100, J. hunted and pecked out:
> On Tue, 18 Feb 2003, Theo. Sean Schulze wrote:
> 
> > Thanks, that did help, although it didn't solve the problem.  
> > I now recognize that the problem is in assigning the variable.  
> > Both my version with ls and the version with find in the example give
> > the expected results when printing to the console, 
> > but they both fail when used to assign a string including spaces to a
> > variable. I need to find a way to maintain the integrity of the string
> > as I assign it to the file variable.  I tried `echo (ls -1)` and `echo
> > "(ls -1)"`, but neither works.  Changing the parentheses to brackets
> > doesn't help either.
> > 
> > Cheers,
> > Sean
> 
> Assigning variables does not happen in the `ls -1' statement. This only
> generates strings. You need a command that read's the variables correctly.
> Use `read', as in:
> 
> ls -1 | while read file ; do echo "$file" ; done 
> 
> or
> 
> find . -type f | while read file ; do
>  echo "$file"
> done
> 
> or more exotic, array version.
> 
> IFS=$'\n' eval 'lines=( $(cat < $file) )'
> # now you have a array of lines.... which can be proccessed further..
> 
> These all where tested and work just fine.
> 
> G00d lUcK
> 
> J.
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
