From: Ray Olszewski <ray@comarre.com>
Subject: Re: Package managers.
Date: Mon, 22 Jul 2002 08:26:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020722081938.021ab810@celine>
References: <000101c23167$995b86a0$4d32f7c2@geoff>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000101c23167$995b86a0$4d32f7c2@geoff>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: geoff <geoff@gcbagley.uklinux.net>, linux-newbie@vger.kernel.org

At 11:07 AM 7/22/02 +0100, geoff wrote:
>I am considering getting a copy of the new Debian 3.0 release,  but I
>understand that they
>use  "deb" rather than "rpm"  for package installation.
>
>Please can anyone  on the list who has made the transition from rpm to deb
>tell me
>how they got on ?    Is the deb system as easy and as convenient as rpm ?

I can't really answer your question, since I never used .rpm (I moved to 
Debian from Slackware). Having used Debian for several years now, I can 
tell you that the .deb-based system is quite convenient to use, once you 
get over a modest learning curve. That is, package management with apt-get 
and aptcache is quite convenient; dpkg is a bit clunkier, but you should 
find that you do not need to use it often.

Your biggest problem in moving to Debian is likely not to be the package 
manager but the (small) number of free (in some sense) packages not 
available in .deb form. Although there are not many of these packages, if 
you need any of them, you'll have to install them yourself (either from 
.tgz files or from the unofficial .deb packages some sites offer).

It also looks to me like distributors of commercial software are still more 
likely to offer .rpm packages of their applications than .deb packages. 
This doesn't affect me but may be a consideration for you.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
