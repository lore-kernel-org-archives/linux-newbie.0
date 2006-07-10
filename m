From: =?UTF-8?B?QXJ0xatyYXMgTW9za3ZpbmFz?= <arturas.moskvinas@gmail.com>
Subject: Re: automatic service start at startup
Date: Tue, 11 Jul 2006 00:32:25 +0300
Message-ID: <44B2C769.4090607@gmail.com>
References: <44B2A02F.5040304@laposte.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44B2A02F.5040304@laposte.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ali shahrokni <shahrokni@gmail.com>
Cc: linux-newbie@vger.kernel.org

ali shahrokni wrote:
> Hello all,
> I am wondering how I can run "autofs start " automatically at startup of
> my system, so that I can log on to the network directly.
> I would appreciate any hints.

It depends on distro you are using. The easiest way (though not the best
I think) is to add an entry into "rc.local" file (I think you should
find somewhere in /etc subdirectories, because it depends on distro).
Second way is to use special tool to add service to startup, for example:

Gentoo: rc-update add autofs default
SUSE (at least SLES): user graphical application yast, and choose
Runlevel editor (i do not know the command line equivalent)
Red Hat(and fedora core, Mandrake too, I think...):
system-config-services (graphical tool), or chkconfig --add autofs
Ubuntu (i think debian too): tool rcconf

Arturas M.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
