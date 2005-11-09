From: Peter <heisspf@skyinet.net>
Subject: Re: Alsactl Boot Error
Date: Wed, 9 Nov 2005 16:39:09 +0800
Message-ID: <20051109163909.5efb5f8a@localhost.localdomain>
References: <20051106111017.065d0108@localhost.localdomain>
	<BF937FBB.3F%jkbullfrog@verizon.net>
	<20051107100945.2b71161d@localhost.localdomain>
	<710f519a0511080734v78f17527h6281c3bbd74ba70e@mail.gmail.com>
	<1131483675.5227.21.camel@shogun.daga.dyndns.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1131483675.5227.21.camel@shogun.daga.dyndns.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chris Largret <largret@gmail.com>
Cc: Jeremy Abbott <jkbullfrog@verizon.net>, Linux-Newbie <linux-newbie@vger.kernel.org>

Many thanks. That simple and it worked.

On Tue, 08 Nov 2005 13:01:15 -0800
Chris Largret <largret@gmail.com> wrote:

> > After upgrading to slackware 10.2 I get the following error when
> booting:
> >
> > Loading ALSA mixer settings:  /usr/sbin/alsactl restore
> > /usr/sbin/alsactl: set_control:873: failed to obtain info for
> > control #35 (No such file or directory)
> >
> > What is the meaning and does it have any negative effect, how to
> correct?
> 
> It simply means that there are new controls (or there was a name change
> on an existing control) with the new kernel drivers. If you switch back
> and forth between a couple kernel versions, you'll see this pretty
> often. It isn't harmful in any way, but if you want to make it go away,
> a simple "alsactl store" as root will suffice.
> 
> --


-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
