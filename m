From: "Alan Bort" <333101@personal.net.py>
Subject: Re: starting and stopping networking
Date: Sun, 4 Jan 2004 19:32:21 -0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001b01c3d30a$446613e0$6e17a8c0@Wellwisher>
References: <Pine.LNX.4.53.0401010532030.589@grinch.ro> <Pine.LNX.4.58.0312311325080.465@debian-box> <Pine.LNX.4.53.0401010532030.589@grinch.ro> <5.1.0.14.1.20040101154809.02021888@celine> <Pine.LNX.4.58.0401041431470.681@debian-opt> <Pine.LNX.4.53.0401042248010.876@grinch.ro> <Pine.LNX.4.58.0401041503140.3345@localhost> <Pine.LNX.4.53.0401042316540.10120@grinch.ro>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Calin Szonyi <caszonyi@rdslink.ro>, James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

why not just service network stop/start????
----- Original Message -----
From: <caszonyi@rdslink.ro>
To: "James Miller" <jamtat@mailsnare.net>
Cc: <linux-newbie@vger.kernel.org>
Sent: Sunday, January 04, 2004 7:19 PM
Subject: Re: starting and stopping networking


> On Sun, 4 Jan 2004, James Miller wrote:
>
> > On Sun, 4 Jan 2004 caszonyi@rdslink.ro wrote:
> >
> > > On Sun, 4 Jan 2004, James Miller wrote:
> > >
> > > > something on the 'net.  So my basic question is: how do I stop
networking
> > > > services on Debian Sid (I know how on Slackware, but Debian
differs)?
> > > > How do I restart them later, and send a new dhcp request at the same
time?
> > > > Any input on my interim networking method for this machine would be
> > > > appreciated, as would pointers for accomplishing what I've outlined
above,
> > > > if that proves advisable/feasible.
> > > >
> > >
> > > to stop network
> > > ifconfig eth0 down
> > > to start
> > >
> > > ifconfig eth0 up
> > >
> > ifconfig eth0 down seems to stop the connection alright.  ifconfig eth0
up
> > just brings up the previous configuration, though.  It doesn't seem to
> > make a new dhcp request, which I think really needs to happen.  Anyway,
no
> > traffic goes to/comes from the 'net after I do ifconfig eth0 down, then
> > ifconfig eth0 up.  You guessed right, btw, that eth0 is the connection
to
> > the 'net.  Anyone else care to take a shot?
> >
>
> my slack 9.0 has the following lines in /etc/rc.d/rc.inet1 for
> bringing up dhcp
>
>   if [ ! "$DHCP_HOSTNAME" = "" ]; then
>     DHCP_HOSTNAME="-h $DHCP_HOSTNAME"
>   fi
>   /sbin/dhcpcd -t 10 ${DHCP_HOSTNAME} -d eth0
>
> where DHCP_HOSTNAME is the host name of the DHCP server
>
> Hope it helps a bit :-)
>
> > Thanks, James
> >
>
> Calin
> --
> "A mouse is a device used to point at
> the xterm you want to type in".
> Kim Alm on a.s.r.
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
