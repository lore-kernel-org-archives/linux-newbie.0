From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: RPMs
Date: Mon, 16 Jun 2003 10:05:37 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EEDF8E1.1060502@bcgreen.com>
References: <HBEJLOFMLEPBMAAEFNFDKEBGCAAA.azapata@du.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDKEBGCAAA.azapata@du.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Anna G. Zapata" <azapata@du.edu>, linux-newbie@vger.kernel.org

It's not clear from your email whether or not you know this, but -- once
you install an RPM, you do NOT need to keep the .rpm file arond any more.
other than .newrpm and .oldrpm configfile backups, RPM updates should not
occupy that much space on your system.

Also: you only need to install updates for RPMs that you already have
installed.  If you don't have xyz-1.0.rpm, then there's no reason to
install the xyz-1.2.rpm security update for it.

I have some scripts to help automate that process for you if you'd like.


Anna G. Zapata wrote:
> I need more information on RPMs.  I know there are many security updates
> every week.  However, I am running out of disk space on my linux box and
> can't get all those RPM updates on there.  Do I need all of them?  How do I
> know what I need and what I don't?
> 
> Thanks!
> 
> Anna G. Zapata - GSEC, MCIS
> University of Denver
> University Technology Services - Network Security
> (303) 871-2009 (phone)
> (303) 871-4135 (fax)
> azapata@du.edu (email)


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
        the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
