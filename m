From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Wireless Mouse/ USB selection
Date: Fri, 18 Jun 2004 07:19:43 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200406180719.43075.pa3gcu@zeelandnet.nl>
References: <20040618005958.93202.qmail@web14808.mail.yahoo.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040618005958.93202.qmail@web14808.mail.yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Steven Ackerman <ackerman_steven@yahoo.com>, LinuxNewbie <linux-newbie@vger.kernel.org>

On Friday 18 June 2004 02:59, Steven Ackerman wrote:
> Greetings list. I hope this message finds everyone
> enjoying their day.
>
> I have just installed Mandrake 9.1. I chose tty0
> (com1?) during installation for the mouse.

I am sure you mean /dev/ttyS0 not /dev/tty0

> I have installed M9.1 previously and I believe that I chose
> USB mouse during the installation.

It depends on where your mouse is actualy connected too and quite possably 
what type of mouse it is.

>
> I need to change this and don't know how. I looked at
> tldp.org and didn't find anything. It was somewhat
> cumbersome using entirely the keyboard anyway.
> Hopefully someone can help.

USB mice do not  normally connect to a seriel port, they connect to a USB 
port, some USB mice can even be connected to a PS2 port when a USB to PS2 
plug is used.

Not knowing what type of mouse you have and or where it needs to be connected 
one cannot really comment, on top of all that one needs to know which 
protocol it uses as well because it all depends on where its connected.

>
> Steve

-- 
If the Linux community is a bunch of thieves because they
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
