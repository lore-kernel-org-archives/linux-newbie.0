From: Jacob Langley <jalangle@nmu.edu>
Subject: Re: remote X sessions
Date: Sun, 11 Jan 2004 17:32:49 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1073860369.10412.11.camel@localhost>
References: <1073371557.10949.4.camel@localhost>
	 <1073860095.2187.16.camel@shostakovitsj.larsemann>
Reply-To: jalangle@nmu.edu
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1073860095.2187.16.camel@shostakovitsj.larsemann>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Lars Bungum <lars@bungum.no>
Cc: linux-newbie@vger.kernel.org

I know about this solution if the remote machine is using a login
manager of some sort (gdm, xdm, kdm) but will it work if the remote
machine isn't running X like that?

On Sun, 2004-01-11 at 17:28, Lars Bungum wrote:
> On Tue, 2004-01-06 at 07:45, Jacob Langley wrote:
> > I've been all over the internet tonight looking for exactly what I want
> > and I can't find it.  What I'd like to be able to do is type something
> > like
> > $ startx 
> > Maybe with a whole lot of command line options even and be able to open
> > an X session running fluxbox or twm or some other light window manager
> > on a completely separate machine on my lan.  I'm so rarely in a window
> > manager now that I'd like to be able to just use one off another
> > computer and stick to a console only install on my main system since I'm
> > the only person that uses it.  Any ideas or places to look would be
> > appreciated.
> 
> Jacob,
> 
> not sure I understand exactly what you're looking for either, but maybe
> a XDMPC solution would work for you, since you're talking about
> connections on your LAN.  The box you wish to use X at could be set up
> to accept such connections, and be queried with "X -query
> <remotehost>".  You do need a X installed where you are sitting, though,
> but this could be quite minimal, and demand little HW resources.  (Could
> also be done with really thin, diskless clients). Then you just get an
> entire session as if you were sitting at the machine you query.  ssh
> back to yourself or C-m-F1, etc, to get the console back.
> 
> --lars
-- 
Jacob Langley <jalangle@nmu.edu>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
