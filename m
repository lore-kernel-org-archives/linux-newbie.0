From: Ray Olszewski <ray@comarre.com>
Subject: Re: Gnumeric won't open
Date: Fri, 19 Mar 2004 08:03:15 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040319073212.01fa6df0@celine>
References: <20040319084348.6D5CD1CF1E@heisspf>
 <20040319084348.6D5CD1CF1E@heisspf> <200403191616.52655.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403191616.52655.pa3gcu@zeelandnet.nl>
References: <20040319084348.6D5CD1CF1E@heisspf>
 <20040319084348.6D5CD1CF1E@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:16 PM 3/19/2004 +0100, pa3gcu wrote:
>On Friday 19 March 2004 09:43, Peter H. wrote:
> > Hi,
> >
> > in slackware 9.1 suddenly gnumeric-1.2.5-i686-1dl does not open. Typing
> > gnumeric from the command line the CPU Load and Busy indicator start
> > working till I do ^c to kill the pid.
> >
> > I rebooted, un-installed gnumeric, re-installed it, the same it will not
> > open.
> >
> > There are no error messages. ldd /usr/bin/gnumeric shows no 'not found'.
> >
> > Is there any test to find out what is going on while gnumeric tries to
> > open?
>
>You can use the program 'strace' to see whats happening, it may or may not
>tell you directly whats wrong.
>
>Do the following;
>
>strace-o file.name gnumeric
>
>After 3 or 4 seconds hit ctrl-c and take a look at, file.name.
>It will be a large file so you may want to start at the bottom because the
>chances are thats where the most important info will be, (ie the last few
>lines).
>
>file.name can be just about anyname of course.

Richard's advice is a good start, except for a small typo -- it needs to read

         strace -o file.name gnumeric

(a space between "strace" and "-o"). But the output may be hard to 
interpret, especially if the problem lies in use of a shared library. So, 
here are a couple of other things you might also try.

First, run "top" in an xterm, or over a remote connection, while all this 
is happening, and see what's going on under the hood in the way of CPU use, 
memory and swap use, and high-use processes. (You may already be seeing 
some of this, but I don't know what you mean by "the CPU Load and Busy 
indicator" ... my guess is that this is some X process, but one that I'm 
unfamiliar with.)

Second, check what shared libraries gnumeric is using ("ldd 
/usr/bin/gnumeric", as you did), then check the install date of each of 
them. See if something you did (for example, install another app recently) 
caused a mismatched version of one of them to be installed.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
