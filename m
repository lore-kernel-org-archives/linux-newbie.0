From: Peter <pfheiss@philonline.com>
Subject: Re: HOWTO Restart LPD
Date: Thu, 08 May 2003 11:46:39 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305080346.h483kdf02539@philonline.com>
References: <1052279439.8304.1.camel@jayhawk>  <200305070940.44823.pfheiss@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Tue, 06 May 2003 23:50:39 -0400." 
 <1052279439.8304.1.camel@jayhawk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: J S <webnews@comcast.net>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Thanks!

webnews@comcast.net said:
> just use the script in /etc/init.d
> For example...
> /etc/init.d/lpd restart 

That's the script used on booting where I get: Starting lpd:  No Printers 
Defined

Doing "/etc/init.d/lpd start" from the command line I therefore get the same: 
No Printers Defined.
Ergo before starting lpd a printer has to be defined first.

Can that be done from the command line?


> On Tue, 2003-05-06 at 21:40, Peter wrote:
> Hi,
> When cups has been activated for printing, then on rebooting lpd is
> not started anymore.
> 
> How can I restart lpd from the command line instead of using printtool
> or printconf-tui? I can't find anything in man lpd.

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
