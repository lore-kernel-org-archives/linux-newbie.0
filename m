From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debians' apt-get??
Date: Mon, 16 May 2005 07:51:48 -0700
Message-ID: <4288B384.5080007@comarre.com>
References: <20050516130836.GA815@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050516130836.GA815@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> Not running Debian I have a query prior to my proposed use of
> slapt-get; the Slackware version..
> 
> I thought 'apt' was the Debian package manager only used for
> installing packages from a CD to the HD..

In this you are mistaken. The apt tools, apt-get and its companion 
apt-cache, are routinely used for net-based Debian installs and 
upgrades. They work with a configuration file (/etc/apt/sources.list 
that tells apt-get where to get its packages from. I've never used it 
with a CD ... but then, I can't remember the last time I used a Debian 
CD for anything other than starting a net install (that is, the way I'd 
use Debian's analog to boot/root floppies).
> 
> Can I presume that apt-get is for installing packages via the INet or
> for fetching the packages from the INet, thence installing them
> within the box?? In other words; do the packages have the extension,
> say, .deb; like RedHat uses .rpm??

Yes, they do have the .deb extension. The normal use of apt-get is with 
the "install" argument, which causes apt-get to download the package and 
install it (as well as resolve dependencies and download and install any 
other rewuired packages).
> 
> Needless to say I'm confused.. Maybe 'apt' can be used for many
> things.. TIA.

My responses are those of a Debian user, not a Slackware user. I have no 
idea how slapt-get itself functions.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
