From: Stephen Hemminger <shemminger@osdl.org>
Subject: Re: is sendto and recvfrom thread safe?
Date: Thu, 21 Aug 2003 14:33:20 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030821143320.3b158fd6.shemminger@osdl.org>
References: <20030821200226.59291.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030821200226.59291.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Lee Chin <leechin@mail.com>
Cc: Mark Hahn <hahn@physics.mcmaster.ca>, linux-net@vger.kernel.org, linux-newbie@vger.kernel.org

On Thu, 21 Aug 2003 15:02:26 -0500
"Lee Chin" <leechin@mail.com> wrote:

> This sort  of helps... my question is with respect to UDP sockets, for sendto and recvfrom, can I concurrently have two threads at the same time write (sendto) on a same file descriptor?  How about readfrom and sendt on the same file descriptor at the same time?

Yes, but assume two threads A (writes a one message containing "aaaa") 
and B which (writes two messages "b" and "c").

You can be assured that B's data won't show up inside A's message:
	ie. never aabaa
but you can not assume anything about the order they will be received.

If you want more detail read the book.
 W. Richard Stevens, UNIX network programming, Volume 1

http://www.kohala.com/start/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
