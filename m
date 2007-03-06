From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: way to "duplicate" console contents to a file?
Date: Tue, 6 Mar 2007 22:15:15 +0530
Message-ID: <b115cb5f0703060845i17b12225pe9ed345c0c48dff6@mail.gmail.com>
References: <45EB5E09.2040609@tlinx.org> <200703060131.13669.eric@cisu.net>
	 <45ED98A1.1050300@tlinx.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Ds65gKnaeit9vhwH1TOtkWivyvSoHgKJty3/oXjaRCNe6pE/QIEsv2tOOQvA7tGAlU+ZaIzQJh8Ooba7GaWkc5z1GG7xkiHmh8CBKKgZ3HaMFzAgkRRA12qhc/pae8t5K7E8F9vGuGTndpNj1c4IT9/7o6m/FZU1xSGZ84fqV5M=
In-Reply-To: <45ED98A1.1050300@tlinx.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linda Walsh <lkml@tlinx.org>
Cc: linux-newbie@vger.kernel.org

On 3/6/07, Linda Walsh <lkml@tlinx.org> wrote:
> Eric Bambach wrote:
> > On Sunday 04 March 2007 18:02, Linda Walsh wrote:
> >
> >> Is there a way to have my console messages duplicated and saved in a file?
> >>
> > Have you looked into using the serial console and some sort of secondary
> > server to capture its output? It could be easily logged and stored. Serial
> > consoles are started very early in the boot process so you would get almost
> > all kernel message just after the kernel is invoked. Its a popular kernel
> > hacker debugging method.
> >
> ----
> May end up using that method -- it's not idea though because it's
> an "either/or" solution vs. a "co-solution".  Don't need the input
> redirected, so much as just a log of output.

I think it is possible to specify multiple console= command line
arguments and the console output will be available on all. Somebody
please CMIIW.

Thanks,

Rajat

>
> I wonder if something like klogd would be practical.  Something that stays
> active and sweeps the display buffer of the console periodically and dumps
> contents to file -- something like an "auditd" for the console (in the
> respect that auditd takes messages from kernel and dumps to file).
>
> Maybe would work best if console buff was kept in memory (kernel option
> to use memory to allow as scroll-back).  Even so, I suppose it should be
> possible to read out of video memory as well as writing into it (?)...
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
