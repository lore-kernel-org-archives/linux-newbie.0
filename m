From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: skype
Date: Tue, 21 Mar 2006 16:36:07 -0500
Message-ID: <20060321213607.GA1898@lnx2.kvinet.com>
References: <1142879317.5124.4.camel@localhost.localdomain> <441EC137.1010608@gelm.net> <20060320205930.GA1044@lnx2.kvinet.com> <1142967514.6632.11.camel@localhost.localdomain>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1142967514.6632.11.camel@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John Woodrow <samuraiinlove@gawab.com>
Cc: linux-newbie@vger.kernel.org

On 03-21, John Woodrow wrote:
> On Mon, 2006-03-20 at 15:59 -0500, Hal MacArgle wrote:
> > On 03-20, chuck gelm wrote:
> > > John Woodrow wrote:
> > > 
> > > >Hello,
> > > >
> > > >I'm having problems with Skype, I installed the rpm for fc3 but I am
> > > >using fc4.  Many people claim to have got this working but I am having
> > > >problems with the mic, people can not hear me.  I've made sure the mic
> > > >volume is turned right up in volume control but this makes no
> > > >difference.  Has anybody had the same experience who can help?
> > > >
> > > >-
> > > >
> > > Hi, John:
> > > 
> > > I use SKYPE both with Windows and with Linux.
> > > The audio is tricker, for me, with Linux.
> > > Does your microphone audio work locally?
> > > I do not use FC? nor .rpm, so I can offer no help
> > > in those areas.
> > > 
> > > HTH, Chuck
> > 
> > 	Dunno about Skype or Fedora Core 3/4, but was wondering if
> > your problem could be the particular sound card you're using??
> > 
> > 	I've noticed that many not only require "Volume" and "Mic"
> > set high but a possible other "slider" that affects it too?? Does
> > your mixer have an obscure additional slider??
> > 
> > 	I have one card that needs three set and unmuted to work
> > properly... Flail away... <grin>
> > 
> > 	Chuck asks if the Mic works OK locally.. Usually Mic inputs
> > are not stereo and one of the pin outs is +5 for an electronic mic..
> > I could be way wrong depending on the card, etc... Just a thought..
> > 
> > HTH.
> > 
> 
> Thankyou people,
> How can I check if the mic works locally?  I've got all the volume
> controls turned up to max in gnome and have used the echo123 service but
> with no luck.  My soundcard is a Creative Labs SB Audigy.

	Do you have 'man arecord' or 'man rec'?? The former is you're
using ALSA sound; the latter if you're using OSS sound.. Suspect the
former is correct.. Can you invoke 'alsamixer'? This is getting
involved, eh??

	Trouble is; if "local" works that still wont really solve
your problem... Ugh..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
