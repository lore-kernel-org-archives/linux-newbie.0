From: Peter <pfheiss@philonline.com>
Subject: Re: Debian questions
Date: Sat, 01 Mar 2003 10:52:12 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303010252.h212qCc03103@philonline.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Fri, 28 Feb 2003 07:10:24 EST." 
Content-ID: <3100.1046487132.1@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: neil t <wa4chq@netscape.net>
Cc: linux <linux-newbie@vger.kernel.org>

I think when I upgraded from RH6.2 saytime would not work well anymore. What I 
did was change the bottom lines in saytime.sh as follows:

cat $SAYFILES > saytemp
# cat $SAYFILES > /dev/audio  (original disabled)
play -t ul -r 8000 saytemp

and it worked ever since thru RH7.3.

Regards 


-- 
Peter



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
