From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Gnumeric won't open
Date: Fri, 19 Mar 2004 16:16:52 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403191616.52655.pa3gcu@zeelandnet.nl>
References: <20040319084348.6D5CD1CF1E@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040319084348.6D5CD1CF1E@heisspf>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Peter H." <heisspf@skyinet.net>, linux-newbie@vger.kernel.org

On Friday 19 March 2004 09:43, Peter H. wrote:
> Hi,
>
> in slackware 9.1 suddenly gnumeric-1.2.5-i686-1dl does not open. Typing
> gnumeric from the command line the CPU Load and Busy indicator start
> working till I do ^c to kill the pid.
>
> I rebooted, un-installed gnumeric, re-installed it, the same it will not
> open.
>
> There are no error messages. ldd /usr/bin/gnumeric shows no 'not found'.
>
> Is there any test to find out what is going on while gnumeric tries to
> open?

You can use the program 'strace' to see whats happening, it may or may not 
tell you directly whats wrong.

Do the following;

strace-o file.name gnumeric

After 3 or 4 seconds hit ctrl-c and take a look at, file.name.
It will be a large file so you may want to start at the bottom because the 
chances are thats where the most important info will be, (ie the last few 
lines).

file.name can be just about anyname of course.

>
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
