From: mike <mike@kevino.org>
Subject: Re: long resolve
Date: Thu, 09 Sep 2004 21:49:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4141324D.9000601@kevino.org>
References: <414125B7.60903@dpomeroy.com>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <414125B7.60903@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Dave,
you should be able to disable a dns server address in the
/etc/resolv.conf file. As root open up an editor and comment it out
or remove it.

You may have to do a "service network restart" without quotes as root.

Mike


dave wrote:
> I pinged the 2 ip addresses in the network config for dns.  The first
> one will not respond so I'm guessing there is a problem with this
> server.  I'll call tomorrow and get it fixed.  I can't seem to figure
> out how to disable the os from trying to use that first ip address.  I'm
> mandrake 10.0 official.
> Dave
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
