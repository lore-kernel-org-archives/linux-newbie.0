From: rob <rob.rice@fuse.net>
Subject: Re: libc5 problem
Date: Sun, 24 Nov 2002 17:55:58 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE112AB.4AC964A2@fuse.net>
References: <3DDDB357.5D3AD244@fuse.net> <1038217066.20988.64.camel@zebra.vil.ite.mee.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Furness <paul.furness@vil.ite.mee.com>
Cc: linux-newbie@vger.kernel.org

my reply is mixed in with your text
Paul Furness wrote:
> 
> A couple of things you can check before getting too bogged down:
> 
> ls -l /usr/local/bin/mc

when this first happened I removed /usr/local/bin 
and replaced there was nothing in it

> it may be a link to somewhere incorrect.

I did a "find / -name mc -print "all I got was /usr/bin/mc back
> 
> also: it might possibly have something to do with slocate (if you have
> it installed). Try running "slocate -u" as root.
> 
> Another thing to try is "which mc"

it gave /usr/bin/mc
> 
> Finally, are you trying to run mc from the command line? if so, is there
> an alias set up which points to /usr/local/bin/mc ? If you are running
> it from an icon on the desktop or a menu entry, check the command line
> that it's trying to run.
> 
> Oh, also check your login scripts (.bashrc and .bash_profile, or
> whatever is appropriate for your shell) and see if anything got changed
> there.
> 
this was it I think there was a line with some about /usr/local/bin/mc
I have deleted that line wish me luck

> If you log in as a different user (or create a new user) does that user
> have a problem running mc?
> 
> Paul.
> 
> On Fri, 2002-11-22 at 04:33, rob wrote:
> > I tryed to run a libc6 program amaya on slack 3.5 a libc5 distro
> > now in X term or rxvt when ever I try to run midnight commander
> > I get "bash:no such file /usr/local/bin/mc" but it runs just fine
> > if I type the path to mc i.e "/usr/bin/mc -x" /usr/local/bin was
> > the path to amaya and mc runs just fine from the text console
> > anybody got a handle on this one ????
> > --
> > Paul Furness <paul.furness@vil.ite.mee.com>
> > Mitsubishi Electric ITE BV VIL
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
