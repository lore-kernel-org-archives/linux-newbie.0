From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Fixing /etc/resolv.conf
Date: Fri, 22 Jul 2005 16:25:13 +0200
Message-ID: <200507221625.13687.pa3gcu@zeelandnet.nl>
References: <200507210552.j6L5qNoH000634@meridian.ph> <42DF510A.7040803@comcast.net> <20050722090537.7e40d277@localhost>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050722090537.7e40d277@localhost>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On Friday 22 July 2005 03:05, Peter wrote:
> On Thu, 21 Jul 2005 01:38:50 -0600
>
> "Conway S. Smith" <beolach@comcast.net> wrote:
> > -----BEGIN PGP SIGNED MESSAGE-----
> > Hash: SHA1
> >
> > Peter H. wrote:
> > > Hi,
> > >
> > > In slackware the file /etc/resolv.conf is updated on every reboot.
> > >
> > > How can I stop that? I tried chattr +i and chmod -w w/o success.
> > >
> > > The reason is that the nameserver address which is put into the file on
>
> every
>
> > > reboot is not the the one I am supposed to use according to the advise
> > >from my  broadband ISP.
> > >
> > > Thanks & regards
> >
> > Most likely /etc/resolv.conf is being overwritten by the DHCP client
> > every time you reboot.  In Slackware, edit /etc/rc.d/rc.inet1 so that
> > when it runs dhcpcd it uses the option -R, which will prevent dhcpcd
> > from replacing the existing /etc/resolv.conf.
>
> Thanks! It does not work.

When i tryed that option a while ago it worked for me, however you can always 
do things in many different ways with linux, simply make a copy 
of /etc/resolv.conf and edit it to your needs and rename it something like 
resolv.good.
Now place the following in your /etc/rc.d/rc.local file

cp /etc/resolv.good /etc/resolv.conf

rc.local is the last file to be executed which means you now have what you 
want.

I ask myself why you get the wrong info everytime from your dhcp server tho.
Surely its better to solve the problem at the root instead of working around 
it.

Regards Richard.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
