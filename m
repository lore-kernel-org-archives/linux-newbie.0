From: Jason Baron <jbaron@redhat.com>
Subject: Re: Problem booting 2.6.13 on RHEL 4
Date: Thu, 15 Sep 2005 11:30:03 -0400 (EDT)
Message-ID: <Pine.LNX.4.61.0509151124420.15025@dhcp83-105.boston.redhat.com>
References: <b115cb5f05091321082a3ffc24@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f05091321082a3ffc24@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: Linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org


On Wed, 14 Sep 2005, Rajat Jain wrote:

> Hi list,
> 
> I am using RHEL4 distribution, and am trying to boot with vanilla
> 2.6.13 stock kernel. My system has two onboard Adaptec SCSI
> controllers. I am booting using initrd, and passing the correct
> "root=" option. The following message pops up while trying to boot
> with 2.6.13:
> 

it might be worth trying an updated 'mkinitrd'. The one currently in rhel4 
can currently do parallel 'insmod's, which might be causing this issue. 
See bugzilla: https://bugzilla.redhat.com/bugzilla/show_bug.cgi?id=145660 
for more detail. This is fixed in U2, which isn't quite shipping yet, but 
in the meantime, I think you can get the updated package from the U2 beta 
channel.

thanks,

-Jason 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
