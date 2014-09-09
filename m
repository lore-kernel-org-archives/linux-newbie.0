From: Paul Bolle <pebolle@tiscali.nl>
Subject: Re: x86_64_defconfig and i386_defconfig: What is the difference?
Date: Tue, 09 Sep 2014 16:19:54 +0200
Message-ID: <1410272394.16079.10.camel@x220>
References: <a06a49ac87e44c0d89d88514d7a28678@DM2PR05MB671.namprd05.prod.outlook.com>
	 <22561.1410268883@turing-police.cc.vt.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <22561.1410268883@turing-police.cc.vt.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Valdis.Kletnieks@vt.edu
Cc: Rajat Jain <rajatjain@juniper.net>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@kernelnewbies.org>

On Tue, 2014-09-09 at 09:21 -0400, Valdis.Kletnieks@vt.edu wrote:
> On Tue, 09 Sep 2014 07:58:49 -0000, Rajat Jain said:
> > Can someone tell me if the i386 one is to be used when we want to build for a
> > 32bit machine and the x86_64 is to be used for 64 bit machine?
> 
> I wouldn't run either one on an actual machine.  Defconfigs are *example*
> configs, only useful as a template for customizing for actual hardware.

It is probably easiest to take the .config file of the latest kernel of
the distribution you are using as a starting point. In that case you
know that this starting point at least works on your machine.

(I remember seeing tutorials that show you how to generate a .config
from scratch. I wonder whether anyone actually does that. It should be
quite a bit of work for an uncertain outcome. Ie, you might end up
trying quite a few configurations before hitting one that works
reasonably for your machine.)

Hope this helps,


Paul Bolle

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
