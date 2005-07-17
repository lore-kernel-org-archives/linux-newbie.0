From: AD Marshall <admarshall@gmail.com>
Subject: Re: how-to: one command for repeat OR iterate shell OR bash command delay OR interval
Date: Sun, 17 Jul 2005 13:16:10 +0700
Message-ID: <200507171316.10728.admarshall@gmail.com>
References: <200507171157.35066.admarshall@gmail.com> <20050717063508.302cbafe.bilbo@waitrose.com> <200507171307.46798.admarshall@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200507171307.46798.admarshall@gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: John Kelly <bilbo@waitrose.com>
Cc: linux-newbie@vger.kernel.org

my apologies, if necessary.  but it's way past lunchtime in saigon and
i'm STARVING.  i'll check back later.  thanx again. - best, andi

On Sunday 17 July 2005 13:07, AD Marshall wrote:
> On Sunday 17 July 2005 12:35, John Kelly wrote:
> > Hi,
> > On Sun, 17 Jul 2005 11:57:34 +0700
> > AD Marshall <admarshall@gmail.com> wrote:
> > 
> > > Is there already one bash command to do what the following script
> > > does (poorly or incompletely), ie repeat "command" indefinitely
> > > every "x" seconds:
> > > 
> > > #!/bin/sh
> > > # usage: repeat [x] <command>
> > > while true ; do $2 ; sleep $1 ; done
> > > 
> > > < rest deleted > 
> > 
> > The watch command might tbe what you want.
> > Or maybe not, if you don't want anything output to screen.
> >  
> > Try man watch for details.
> > 
> <cut>
> Ya.  Thanks.  I'd (long) forgotten about "watch".  
> 
> but, actually, i should be more specific. what i'm trying to do is 
> something like this -- though i'm screwing up on quoting or something
> 
> am@[~]$ repeat 2 "echo $(cat /proc/loadavg ; date +%H:%m:%S)"
> 0.05 0.14 0.24 6/127 27711 12:07:29
> 0.05 0.14 0.24 6/127 27711 12:07:29
> 0.05 0.14 0.24 6/127 27711 12:07:29
> 
> as you can see, only one instance of load average and time are repeated.
> i want a running record that can be redirected to a file
> 
> i just tinkered with backslashes, back-quotes, double-quotes and 
> single-quotes, but all the quoting stuff still confuses me.
> 
> and, imho, i would have thought someone would have written a simple 
> tool to do this ages ago.  no?
> 
> thanx again,
> andi
> 

-- 
AD Marshall
Tel:  +84 (0)903871313
eM:   admarshall@gmail.com
Web:  http://h0lug.sourceforge.net
Zone: ICT (IndoChina Time; GMT/UTC+7)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
