From: ichi@ihug.co.nz
Subject: Re: running prog on start up
Date: Thu, 19 Sep 2002 08:32:24 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D898B98.4B0EC85@ihug.co.nz>
References: <F29WEEREhKlIKQcFWqX00008337@hotmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: a a <xlsd@hotmail.com>
Cc: linux-newbie@vger.kernel.org

a a wrote:
> 
> I've written a program in c and want to run it as soon 
> as BasicLinux boots up...
> is there a startup stript that i can edit? 

The ramdisk version of BasicLinux uses a single startup
scrip:  /etc/rc

When you install BasicLinux to its own HD partition, it
uses several Slackware-type startup scripts.  You will
find them in /etc/rc.d.  I suggest you execute your
program at the end of /etc/rc.d/rc.M

Cheers,
Steven

______________________________
http://www.volny.cz/basiclinux

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
