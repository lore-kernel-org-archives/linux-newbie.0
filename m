From: Ulrich =?ISO-8859-15?Q?F=FCrst?= <heimwill@compuserve.de>
Subject: Re: Running X programs from bash w/ framebuffer
Date: Wed, 12 Jan 2005 10:40:53 +0100
Message-ID: <20050112104053.0d253094@sarge>
References: <41E439F4.6030404@comcast.net>
	<20050112085050.39aec35f@sarge>
	<41E468B5.30008@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41E468B5.30008@comcast.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Jeremy Abbott <jkbullfrog@comcast.net> wrote: 
> I will try this, but am curious what the purpose of the -- :0 and the
> -- :1 are.  Is this in the man pages for X?  Could this possibly be

the "--" stands for "end of the options and the :0 or :1 is the
(virtual) display to start on. 

> for running more than one prog at a time, to switch between for the 
Exactly. You can switch to :0 with "CTRL-ALT-F7" to :1 with
"CTRL-ALT-F8" and so on.
So you can have e.g. firebird on :0 oowriter on :1 and something other
on :2

> console?  If so how?  Or should I also read the man page for this?
It's never a bad idea to look for the options someone is suggesting
in the manual page. Maybe it fits your purposes better, using something
a bit different :-)

Ulrich
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
