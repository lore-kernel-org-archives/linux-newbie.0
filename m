From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: RH 7.3 and tripwire
Date: 25 Nov 2002 09:12:40 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1038215558.20988.38.camel@zebra.vil.ite.mee.com>
References: <sdde49fa.036@mail.sussex.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <sdde49fa.036@mail.sussex.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: peter schoch <pschoch@sussex.cc.nj.us>
Cc: linux-newbie@vger.kernel.org

Peter, 

Firstly, do you actually need / want to run tripwire? It is mostly
useful for intrusion detection type things, which may not matter if your
PC is either on a secure network, or standalone. In which case, I'd just
remove tripwire from your system.

I don't run tripwire on my workstations, but I _do_ run it on the
machines in my DMZ (such as web server) since they are at a much higher
risk of hack attack than those inside my firewall on my internal
network.


If you decide that you _do_ need tripwire, it could well be that it's
not configured for your system's setup. Can you give us a little more
detail about the errors that tripwire is reporting?

As for documentation: I haven't found anything that is better than the
man page for explaining how it works. In principal it's very simple: you
create a list of files to watch, and tripwire takes a note of various
attributes of the files (such as size, date and so on). At a later time
(usually from a cron job) tripwire compares the file against the
information it has, and reports any discrepancy. You can tell it the
level at which to check the file and the kind of warning it gives.

Paul.



On Fri, 2002-11-22 at 20:14, peter schoch wrote:
> Greetings,
> 
> I just upgraded from RH6.2 to RH7.3.  I've been fighting with it for several days now.
> 
> My last, big 'fight' is with tripwire.  I keep getting cron mail that tripwire had all sorts of troubles.  It gives me commands to 'fix' the trouble, and have run them; however the problems apparently persist.  I don't remember using tripwire in 6.2, so is there a good resource for finding out what to do?
> 
> Peter Schoch
> Sussex County Community College
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-- 
Paul Furness <paul.furness@vil.ite.mee.com>
Mitsubishi Electric ITE BV VIL

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
