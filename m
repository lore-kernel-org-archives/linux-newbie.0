From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: iptables & a dhcpd question
Date: Sat, 01 Mar 2003 11:57:05 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E60E661.AF8913CF@gelm.net>
References: <004101c2de99$eef21400$4800a8c0@neptune> <61644.200.136.52.249.1046376018.squirrel@www.mandic.com.br> <03022720562401.00903@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: "Eckhardt, Rodolpho H. O." <reckhardt@mandic.com.br>, paul@mnwebhost.net, linux-newbie@vger.kernel.org


> > /etc/(PATH TO rc.firewall)/rc.firewall
         ^^^^^^^^^^^^^^^^^^^^^

/etc/rc.d/rc.firewall

 Hmmm, it is plain to see that Richard gave you good advice.

:-|

 locate rc.

Yes, IIRC, Slackware is BSD'ish, rather than SYSV'ish.

HTH, Chuck

> >
> > and when they say dhcpd stop, you have to add the path to it in the front:
> >
> > /etc/init.d/dhcpd stop (if /etc/init.d is the path)
> >
> > I hope this works,
> 
> Huum, its plain to see you have never seen slackware, slackware does not even
> have a directory called /etc/init.d.
> Slackware is not of the sysv catagory sorry.
> 
> >
> > Rodolpho
> 
> --
> Regards Richard
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
