From: Beolach <beolach@comcast.net>
Subject: Re: Black Box Time
Date: Wed, 11 Feb 2004 00:27:08 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4029D94C.4030907@comcast.net>
References: <20040211065922.D4D881C954@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040211065922.D4D881C954@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Edit your ~/.blackboxrc file so that it has a line like this:
session.screen0.strftimeFormat %H:%M

--------<From the blackbox (1) manpage>--------
session.screen<num>.strftimeFormat [string]
     A C language date format string, any combination of specifiers can
     be used.  The default is %I:%M %p which generates a 12 hour clock
     with minutes and an am/pm indicator appropriate to the locale.

	24 hours and minutes	%H:%M
	12 hours and minute	%I:%M %p
	month/day/year		%m/%d/%y
	day/month/year		%d/%m/%y

	Default is hours:minutes am/pm
	see
	strftime 3
	for more details.
--------</From the blackbox (1) manpage>--------

Note that rather than %H:%M, you could use any combination of strings
from the strftime (3) manpage.  My .blackboxrc has this line:
session.screen0.strftimeFormat:	%a, %d %b %Y %R
where %a = The abbreviated weekday name according to the current locale,
%d = The day of the mont as a decimal number (range 01 to 31)
%b = The abbreviated month name according to the current locale
%Y = The year as a decimal number including the century
%R = The time in 24 hour notation (%H:%M)

Also note that in blackbox you don't want the clock to include the
seconds, as blackbox only updates it once a minute.

Also also note that, if by some strange freaky circumstance you don't
have the strftime() function, you would use different options, but I
really doubt that you wouldn't have it.

HTH,
Conway S. Smith

Peter wrote:
> Hi,
> 
> does any body know hot to tweak Blackbox to display time on the toolbar in 24 
> hour format instead of am and pm?
> 
> Thanks


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
