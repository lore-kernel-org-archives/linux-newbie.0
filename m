From: James Miller <jamtat@mailsnare.net>
Subject: Re: ssh as proxy?
Date: Tue, 15 Feb 2005 21:47:56 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0502152144080.14569@localhost.localdomain>
References: <Pine.LNX.4.58.0502151644180.14569@localhost.localdomain>
 <200502151847.34392.eric@cisu.net>
Mime-Version: 1.0
In-Reply-To: <200502151847.34392.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 15 Feb 2005, Eric Bambach wrote:

> Yep, you're 95% of the way there.
> Instead of the -L option try the -D option. This works to circumvent IRC
> restrictions for me in school ;)
> Im not too well read on ssh forwarding so I dont know the technical difference
> between them, but it seems -D will get you by just fine at least for web.
>
> Open console, type ssh -l username -D6667 mysshserver.com
>
> Then ssh will act as a socks4/socks5 proxy. Set up application appropriately
> and it will go!

Thanks for the feedback. I'm looking for ways to test this out, and in
order to do so I need to be able to close all ports on the test machine
except 443. Is there some comand(s) I can issue that would do this? This
would be on a workstation, Debianish machine without any sort of firewall
running. Short of a command(s), what would be the simplest way to
accomplish this port blocking for testing purposes? Is there a system-wide
config I could edit?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
