From: Axel Siebenwirth <axel@pearbough.net>
Subject: Re: Compiled new kernel, Gnome not working
Date: Mon, 22 Dec 2003 17:18:21 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031222161821.GA8661@neon>
References: <3FE30ACA.6080901@vip.cybercity.dk> <3FE419E6.3090203@comcast.net> <3FE6E4DD.4030402@vip.cybercity.dk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3FE6E4DD.4030402@vip.cybercity.dk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Hi Flemming!

On Mon, 22 Dec 2003, Flemming Greve Skovengaard wrote:

> No, I don't have frame buffer support and I have a ATI Radeon 8500 graphics
> card. The only solution that comes to mind, and don't hade me if it is 
> stupid,
> is that I have to re-compile X, Gnome or both with the new kernel.

First make sure you have checked all log files to see where the problem
might be.

Check 
1) output of "dmesg"
2) /var/log/XFree86.0.log
3) /var/log/messages, /var/log/syslog
3) <home>/.xsession-errors

for suspicious messages.

I have no problems changing from 2.4 to 2.6.


Axel

 
____________________________________________________________________________
Axel Siebenwirth				      phone +49 3641 776807 |
Am Birnstiel 3			 		  axel at pearbough dot net |
07745 Jena								    |
Germany________________________________________________http://pearbough.net |

Those who cannot remember the past are condemned to repeat it.
                -- George Santayana
____________________________________________________________________________
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
