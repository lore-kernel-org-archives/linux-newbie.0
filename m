From: Peter <heisspf@skyinet.net>
Subject: Re: Fixing /etc/resolv.conf
Date: Fri, 22 Jul 2005 09:05:37 +0800
Message-ID: <20050722090537.7e40d277@localhost>
References: <200507210552.j6L5qNoH000634@meridian.ph>
	<42DF510A.7040803@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <42DF510A.7040803@comcast.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thu, 21 Jul 2005 01:38:50 -0600
"Conway S. Smith" <beolach@comcast.net> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> Peter H. wrote:
> > Hi,
> > 
> > In slackware the file /etc/resolv.conf is updated on every reboot.
> > 
> > How can I stop that? I tried chattr +i and chmod -w w/o success.
> > 
> > The reason is that the nameserver address which is put into the file on
every 
> > reboot is not the the one I am supposed to use according to the advise
> >from my  broadband ISP.
> > 
> > Thanks & regards
> 
> 
> Most likely /etc/resolv.conf is being overwritten by the DHCP client
> every time you reboot.  In Slackware, edit /etc/rc.d/rc.inet1 so that
> when it runs dhcpcd it uses the option -R, which will prevent dhcpcd
> from replacing the existing /etc/resolv.conf.

Thanks! It does not work.

-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
