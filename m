From: Peter <heisspf@skyinet.net>
Subject: Re: Fixing /etc/resolv.conf
Date: Sun, 24 Jul 2005 09:55:38 +0800
Message-ID: <20050724095538.0b68f61b@localhost>
References: <200507210552.j6L5qNoH000634@meridian.ph>
	<42DF510A.7040803@comcast.net>
	<20050722090537.7e40d277@localhost>
	<200507221625.13687.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200507221625.13687.pa3gcu@zeelandnet.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

Correction

> "Conway S. Smith" <beolach@comcast.net> wrote:
> > Most likely /etc/resolv.conf is being overwritten by the DHCP client
> > every time you reboot.  In Slackware, edit /etc/rc.d/rc.inet1 so that
> > when it runs dhcpcd it uses the option -R, which will prevent dhcpcd
> > from replacing the existing /etc/resolv.conf.
>
> Thanks! It does not work.

It does work now! Can't understand why it did not work when I first tried it.

--------
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
