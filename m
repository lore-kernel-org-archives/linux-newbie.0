From: "J." <mailing-lists@xs4all.nl>
Subject: Re: Elvis and crontab
Date: Wed, 30 Mar 2005 02:58:25 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0503300253580.2076-100000@hestia>
References: <4249DC2B.40604@gelm.net>
Reply-To: linux <linux-newbie@vger.kernel.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4249DC2B.40604@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

On Tue, 29 Mar 2005, chuck gelm wrote:

> Ray Olszewski wrote:
> > At 01:41 PM 3/29/2005 +0800, Peter wrote:
> > 
> >> Hi,
> >>
> >> In slackware, crontab is using elvis as the editor instead of vim and 
> >> I can't
> >> make heads or tails out of it.
> >>
> >> Does anybody know how to change this from elvis to vim or better yet 
> >> to a more
> >> user friendly editor?
> > 
> > 
> > 
> > I don't know about Slackware specifically, but the usual way 
> > applications get the identity of your editor is from an environment 
> > variable called (duh) "EDITOR". Check your setting for this with the 
> > "env" command. If you need to change it, do so in any convenient config 
> > script (e.g., .bashrc) the usual way. User friendliness is, to a degree, 
> > in the eye of the user, so I don't really know what you have in mind, 
> > but a wide range of editors can work this way.
> > 
> > You might also want to check what "vi" on your system is a symlink to. I 
> > seem to recall that Slackware, way back when (I probably quit using 
> > Slackware 8 years ago, around the time of 4.0), used elvis as its stock 
> > vi replacement. You can make any other vi-like app "your" vi simply by 
> > changing this symlink. (I did this on my Debian systems, replacing the 
> > annoying, at least to me, nvi with vim. The Debian setup is a bit more 
> > involved than what I described here, so it is possible you will find 
> > that Slack too has become more tangled than it once was, perhaps 
> > requiring you to follow a string os symlinks instead of the single layer 
> > I described.)
> 
> Slackware v9.1:
> 
> /usr/bin/ex -> elvis
> "        vi -> elvis
> 
> and eleven other 'soft' links to 'vim'
> 
> ;-)
> Chuck

Hmm.. That's weird, only 2 links to elvis ?.. 
According to google there should be 8,340,000 'soft' links to elvis. 

Are you sure, you installed slack correctly ?

;-)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
