From: Hal MacArgle <haltec@iceweb.net>
Subject: Re: Modem Identification
Date: Sun, 15 Dec 2002 10:23:46 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021215102346.A261@lnx2.w8mch.ampr.org>
References: <200212142014.07963.sotl155360@earthlink.net>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200212142014.07963.sotl155360@earthlink.net>; from sotl155360@earthlink.net on Sat, Dec 14, 2002 at 08:14:07PM -0500
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: If you don't have Minicom, re Ray's suggestion, you can,
if you have it in your distribution - use 'dip -t'...

I used it years ago to talk to a modem but I don't have it on this
machine.. Try 'man dip' for the syntax.. The '-t' flag means "test."

If you have the mfgr/model number and/or FCC ID number you can search
on www.google.com to see if it's a WinModem or not.. The suggestions
are to stay away from WinModems with Linux but there are drivers for
the Motorola modem specifically for certain narrow distributions.

HTH and good luck,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
	       haltec@iceweb.net | w8mch@iceweb.net
                Proprietary  Formats  Unacceptable
		    NON ILLEGITIMI CARBORUNDUM

On 12-14, Frank Roberts - SOTL wrote:
> Hi All
> 
> 
> Question:
> From the command line how does one determine which port a modem is on?
> 
> 
> Thanks
> Frank
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
