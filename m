From: Rajat Jain <rajat.noida.india@gmail.com>
Subject: Re: Problem booting 2.6.13 on RHEL 4
Date: Wed, 28 Sep 2005 18:18:22 +0900
Message-ID: <b115cb5f050928021835306f16@mail.gmail.com>
References: <b115cb5f05091321082a3ffc24@mail.gmail.com>
	 <Pine.LNX.4.61.0509151124420.15025@dhcp83-105.boston.redhat.com>
Reply-To: Rajat Jain <rajat.noida.india@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1030229AbVI1JS2@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0509151124420.15025@dhcp83-105.boston.redhat.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jason Baron <jbaron@redhat.com>
Cc: Linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

>
> On Wed, 14 Sep 2005, Rajat Jain wrote:
>
> > Hi list,
> >
> > I am using RHEL4 distribution, and am trying to boot with vanilla
> > 2.6.13 stock kernel. My system has two onboard Adaptec SCSI
> > controllers. I am booting using initrd, and passing the correct
> > "root=" option. The following message pops up while trying to boot
> > with 2.6.13:
> >
>
> it might be worth trying an updated 'mkinitrd'. The one currently in rhel4
> can currently do parallel 'insmod's, which might be causing this issue.
> See bugzilla: https://bugzilla.redhat.com/bugzilla/show_bug.cgi?id=145660
> for more detail. This is fixed in U2, which isn't quite shipping yet, but
> in the meantime, I think you can get the updated package from the U2 beta
> channel.

Hi Jason,

Thanks a TON! I was truggling with mkinitrd and nash for the past 3
weeks, and finally a *very* odd combination of mkinitrd and nash
solved the problem. But thanks for your inputs, they've been really
helpful.

Rajat
