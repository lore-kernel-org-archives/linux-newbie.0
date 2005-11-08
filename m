From: linuxdevelop linux <linuxdevelop@gmail.com>
Subject: Re: Alsactl Boot Error
Date: Tue, 8 Nov 2005 09:34:39 -0600
Message-ID: <710f519a0511080734v78f17527h6281c3bbd74ba70e@mail.gmail.com>
References: <20051106111017.065d0108@localhost.localdomain>
	 <BF937FBB.3F%jkbullfrog@verizon.net>
	 <20051107100945.2b71161d@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051107100945.2b71161d@localhost.localdomain>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: Jeremy Abbott <jkbullfrog@verizon.net>, Linux-Newbie <linux-newbie@vger.kernel.org>

Try running alsaconf and see if that helps ..

./thanks
ilaiy

On 11/6/05, Peter <heisspf@skyinet.net> wrote:
>
> > On 11/5/05 7:10 PM, "Peter" <heisspf@skyinet.net> wrote:
> >
> > > Hi,
> > >
> > > After upgrading to slackware 10.2 I get the following error when booting:
> > >
> > > Loading ALSA mixer settings:  /usr/sbin/alsactl restore
> > > /usr/sbin/alsactl: set_control:873: failed to obtain info for
> > > control #35 (No such file or directory)
> > >
> > > What is the meaning and does it have any negative effect, how to correct?
> > >
> > > Thanks & regards
> > > -
> > > Peter
> On Sun, 06 Nov 2005 09:39:07 -0800
> Jeremy Abbott <jkbullfrog@verizon.net> wrote:
>
> >
> > If you do a run "man alsactl" at the command line, it will tell you that
> > this file is used for advanced control of your sound card.
> >
> >
> Thanks, yes I am aware of this, however, it is not a question of the alsactl
> file it must be a problem within this files or another file it calls on the
> way I read the error message, "set_control:873: failed to obtain info for
> control #35 (No such file or directory)"
> Reinstalling the alsa_utils program of slackware10.1 does not solve the
> problem.
>
>
>
>
> --
> Peter
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
