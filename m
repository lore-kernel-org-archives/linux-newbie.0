From: Jacob Langley <j_langley@sbcglobal.net>
Subject: Re: starting and stopping networking
Date: Sun, 04 Jan 2004 16:14:24 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1073250840.3102.185.camel@localhost>
References: <Pine.LNX.4.53.0401010532030.589@grinch.ro>
	 <Pine.LNX.4.58.0312311325080.465@debian-box>
	 <Pine.LNX.4.53.0401010532030.589@grinch.ro>
	 <5.1.0.14.1.20040101154809.02021888@celine>
	 <Pine.LNX.4.58.0401041431470.681@debian-opt>
	 <Pine.LNX.4.53.0401042248010.876@grinch.ro>
	 <Pine.LNX.4.58.0401041503140.3345@localhost>
Reply-To: j_langley@sbcglobal.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0401041503140.3345@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

James,

I've never used Debian.  I did use Slackware for a long time and now I'm
a Gentoo user.  I would look for the networking init script that starts
your networking on boot in /etc/init.d and use that to start or stop the
networking.  Otherwise I'd look for the dhcp client that debian uses.  I
know RedHat used dhclient and gentoo and slack used dhcpcd.  You'd need
to re-run that client when you bring the networking back up (to reset
your IP address and wshat not.)  You may have problems with that if the
the client stays up continuously even when you do an ifconfig eth0 down.

Hope that helps.
Jacob

On Sun, 2004-01-04 at 16:07, James Miller wrote:
> On Sun, 4 Jan 2004 caszonyi@rdslink.ro wrote:
> 
> > On Sun, 4 Jan 2004, James Miller wrote:
> > 
> > > something on the 'net.  So my basic question is: how do I stop networking
> > > services on Debian Sid (I know how on Slackware, but Debian differs)?
> > > How do I restart them later, and send a new dhcp request at the same time?
> > > Any input on my interim networking method for this machine would be
> > > appreciated, as would pointers for accomplishing what I've outlined above,
> > > if that proves advisable/feasible.
> > >
> > 
> > to stop network
> > ifconfig eth0 down
> > to start
> > 
> > ifconfig eth0 up
> > 
> ifconfig eth0 down seems to stop the connection alright.  ifconfig eth0 up
> just brings up the previous configuration, though.  It doesn't seem to
> make a new dhcp request, which I think really needs to happen.  Anyway, no
> traffic goes to/comes from the 'net after I do ifconfig eth0 down, then
> ifconfig eth0 up.  You guessed right, btw, that eth0 is the connection to
> the 'net.  Anyone else care to take a shot?
> 
> Thanks, James
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-- 
Jacob Langley <j_langley@sbcglobal.net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
