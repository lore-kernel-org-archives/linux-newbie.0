From: John Kelly (bilbo) <bilbo@waitrose.com>
Subject: Re: Extraction of PID
Date: Sat, 26 Jul 2003 09:11:54 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030726080844.SXTP2652.mta03-svc.ntlworld.com@there>
References: <20030726065829.DD46B1041E@heisspf>
Reply-To: bilbo@waitrose.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030726065829.DD46B1041E@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux <linux-newbie@vger.kernel.org>

On Saturday 26 July 2003 7:58 am, Peter wrote:

>Hi,
>
>How do I isolate from a line like
>
>1865 tty2 00:00:18 exmh
>
>the first 4 numbers which is the PID. I get it with "ps -a --pid 1111 | grep 
>exmh".
Hi,
As usual in 'nix there are several different ways of doing this.
My first guess was:

ps -a -pid 1111 | grep exmh | awk '{print $1}'

Which works fine for me on my Redhat box.

Second guess was:

ps -a -pid 1111 | awk '/exmh/{print $1}' 

Which also worked fine.

Since not many people use awk, I though I would try a few examples with the 
cut command.

ps -a -pid 1111 | grep exmh | cut -d' ' -f1

This example works but I had to use the -d option to specify the delimiter.
If you were sure the pid was only going to be four characters long, you could 
use:

ps -a -pid 1111 | grep exmh | cut -c1-4

I have just spent the past ten minutes messing about using sed to do this too 
- but I don't think any sane person would used sed to do something like this. 
But for what it is worth, here is my sed example

ps -a -pid 1111 | sed -ne '/exmh/s/ tty.*$//'


Your best bet is probably to use the 
ps -a -pid 1111 | grep exmh | cut -d' ' -f1
example. But rememeber that there is hours to fun to be had messing about 
with obscure programs on nix systems. :-)

regards

John Kelly
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
