From: Jos Lemmerling <jos@lemmerling.net>
Subject: Re: lilo
Date: Sat, 27 Apr 2002 20:34:21 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0204272028050.13504-100000@orthanc.lemmerling.net>
References: <00f601c1ee0c$7b757cc0$0901a8c0@system>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00f601c1ee0c$7b757cc0$0901a8c0@system>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, 27 Apr 2002, Tom Beer wrote:

> I'm using Redhat 7.0 and there
> should be a way to get it running.
> It fits on a disk. I think that I
> can't get the lilo process in my head 
> (and I hope so). I compiled many things
> as modules and the kernel 2542462 big.

just to make sure: you did use "make bzImage" while compiling? _Normally_ 
a kernel-image isn't much bigger than 1 MB.

> But isn't there a way to install the bzImage?

if it's really called bzImage, it should be compressed (at least on my
system...) and there shouldn't have to be a problem with his size.


HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.net)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
