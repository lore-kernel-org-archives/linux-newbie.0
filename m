From: J S <webnews@comcast.net>
Subject: Re: HOWTO Restart LPD
Date: Tue, 06 May 2003 23:50:39 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1052279439.8304.1.camel@jayhawk>
References: <200305070940.44823.pfheiss@philonline.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <200305070940.44823.pfheiss@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Under RH 9.0 and most recent versions of RedHat as well as Mandrake,
just use the script in /etc/init.d


For example...

/etc/init.d/lpd restart


The other scripts in /etc/init.d are helpful for other services.  Most
of the scripts take as an argument on of the following: start, stop,
restart, and status.  These are very helpful at times.  I'm sure there
are some other options as well, but I've never used them.

J

On Tue, 2003-05-06 at 21:40, Peter wrote:
> Hi,
> When cups has been activated for printing, then on rebooting lpd is not 
> started anymore.
> 
> How can I restart lpd from the command line instead of using printtool or 
> printconf-tui? I can't find anything in man lpd.
> 
> Thanks & regards

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
