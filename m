From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Choice of NIST daemon
Date: Sun, 25 Aug 2002 08:35:28 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208242236150.8397-100000@Consulate.UFP.CX>
References: <200208221040.g7MAe6p06770@hartford-hwp.com>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208221040.g7MAe6p06770@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Haines.

> I'd like to have my system clock automatically corrected through an
> online connection that remains always up. I gather that xntpd is a
> commonly used daemon to do that for me.

xntpd is one of several commonly used daemons for doing that. Another
commonly used daemon is called ntp if that helps. You can't install
both of them.

> However, I find that the Red Hat version of this application is
> rather old, and when I try to install it, it conflicts with
> installed ntp. I did not uninstall ntp because it is needed by
> another program. At one time I was interested in nisttime, but that
> led to questions regarding reconfiguration of uucp.
>
> What is the most straightforward way to implement a NIST server that
> does not interfere with other programs? I'm running RedHat 7.3

The straightforward way would be to use the ntp daemon that is already
installed according to your description above. To configure it, edit the
file /etc/ntp.conf and insert the following lines at the top of the
file, replacing $SERVER with the full hostname of the server you plan to
synchronise to:

	#
	# Remote system I am authorised to synchronise to.
	#
	server	$SERVER

When you've done that, save the file, then run the following commands:

	chkconfig --level 35 ntpd on
	service ntpd stop

At this point, make sure that your system clock is set to within five
minutes of the correct time, then run the following command:

	service ntpd start

After that, your system clock will remain synchronised to whichever
clock you have set it to.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
