From: James Miller <jamtat@mailsnare.net>
Subject: Re: starting and stopping networking
Date: Sun, 4 Jan 2004 15:41:04 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0401041535540.3345@localhost>
References: <Pine.LNX.4.53.0401010532030.589@grinch.ro>
 <Pine.LNX.4.58.0312311325080.465@debian-box> <Pine.LNX.4.53.0401010532030.589@grinch.ro>
 <5.1.0.14.1.20040101154809.02021888@celine> <Pine.LNX.4.58.0401041431470.681@debian-opt>
 <Pine.LNX.4.53.0401042248010.876@grinch.ro> <Pine.LNX.4.58.0401041503140.3345@localhost>
 <Pine.LNX.4.53.0401042316540.10120@grinch.ro> <Pine.LNX.4.58.0401041524420.3345@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0401041524420.3345@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sun, 4 Jan 2004, James Miller wrote:

> On Sun, 4 Jan 2004 caszonyi@rdslink.ro wrote:
> 
> > my slack 9.0 has the following lines in /etc/rc.d/rc.inet1 for
> > bringing up dhcp
> > 
> >   if [ ! "$DHCP_HOSTNAME" = "" ]; then
> >     DHCP_HOSTNAME="-h $DHCP_HOSTNAME"
> >   fi
> >   /sbin/dhcpcd -t 10 ${DHCP_HOSTNAME} -d eth0
> > 
> > where DHCP_HOSTNAME is the host name of the DHCP server
> > 
> > Hope it helps a bit :-)
> > 
> Well, not a whole lot.  If I were using Slack, I would just do 
> /etc/rc.d/rc.inet1 stop and /etc/rc.d/rc.inet1 start.  I guess I'm trying 
> to find out what is the equivalent on Debian.  I'll root through the /etc 
> directory some more and see if I can figure out anything.
> 
Ok.  Taking Jacob's suggestion, I rooted arund in /etc/init.d and found a
file caled "networking."  Looking over its contents, I decided the
relevant commands for stopping/starting networking on this Debian host are
"ifdown -a" and "ifup -a", respectively.  Just tried it and it seems to
work.  Have I stumbled onto the defnitive solution to my short term
problem?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
