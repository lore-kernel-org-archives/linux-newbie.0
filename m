From: Eric <eric@cisu.net>
Subject: Re: maximum number of Unix98 pty's
Date: Sun, 18 May 2003 20:41:24 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305182041.24928.eric@cisu.net>
References: <200305161629.h4GGTIPs017487@ev6.be.wanadoo.com>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305161629.h4GGTIPs017487@ev6.be.wanadoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Heimo Claasen <hammer@revobild.net>, linux-newbie@vger.kernel.org

On Wednesday 31 December 1969 06:00 pm, Heimo Claasen wrote:
> what ist "PTY" ?
>
> -hc

A pty is a psuedo-terminal. Linux creates these so you can log in and type 
things on your computer. If you press ctr+alt+<#> where # is 1-5 then you 
will see 5 pty's ready for login. Also SSH, telnet, and rlogin, and each 
xterm uses up one PTY. Normal linux kernels are configured to support 
256pty's and this is MORE than enough for desktop systems and small servers.
----------------------
Eric Bambach   
Eric@CISU.net 
----------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
