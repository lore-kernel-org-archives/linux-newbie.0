From: Peter <heisspf@skyinet.net>
Subject: Re: Long Gnome-session
Date: Tue, 13 Jan 2004 13:25:05 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040113132505.19344da7@skyinet.net>
References: <20040112155340.0b7f58a6@skyinet.net>	<200401121235.34024.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200401121235.34024.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

X-Mailer: Sylpheed version 0.9.8claws (GTK+ 1.2.10; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit



> On Monday 12 January 2004 08:53, Peter wrote:
> > Hi,
> >
> > Among other strange things in RH9.0 is the long time it takes to > > open gnome-session. A full 2.5 minutes.
> >
> > Is this standard?
>
 
On Mon, 12 Jan 2004 12:35:34 +0100
pa3gcu <pa3gcu@zeelandnet.nl> wrote:
> No its not, something is wrong, i would check my logs to see if there >  are any hints, a possibility is that you have defined a hostname which > is unresolvable.

There is nothing in the logs, however, on account of your hint I had a closer look at the console after logging-out and scrolling up it said somehing about /usr/local/bin/metacity. I deleted the file after I found another one in /usr/bin and swoop, gnome-session is now up in 8 seconds.

After I had installed RH9.0 I copied my RH7.3 /usr/local directory into the new box not knowing that there was that metacity file in it.
 
> > What is also surprising is that one has to look for a terminal and  > > finds it finally as the last item under system tools.
> 
> Well not so suprising as most users today dont even know what a > terminal session is.

So Bill Gates has successfully played his part in the further cretinization of mankind.

> You can of course add an icon to your pannel or desktop.

I am aware of that yet have not used gnome as a desktop since after RH5.2. If I need a panel I just type gnome-panel, formerly just panel, in the terminal or kicker for kde. For the latter one it's nice to see that an icon for a terminal is still prominently placed on the panel.

> >
> > Is gnome going the way of MSWindows, users of which are mere        > > klickers?
> 
> I think you will find that many things are starting to look like      > MSwidows for the simple reason thats the way most folks want it to be > but, you as user can change the way it all works that is "UN"like     > MSwidows.

And for that freedom of choice I do love Linux!!

> >
> > Luckily there is blackbox and my favored fvwm2.
> 
> Many others as well.
> 
> >
> > Regards
> 
> -- 
> If the Linux community is a bunch of theives because they
> try to imitate windows programs, then the Windows community
> is built on organized crime.
> 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> 


-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
