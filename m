From: Peter <heisspf@skyinet.net>
Subject: Re: Procmail won't filter linux-newbie mail
Date: Mon, 01 Sep 2003 11:34:42 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030901033448.174D410422@heisspf>
References: <20030831091426.GB2273@linux>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Sun, 31 Aug 2003 11:14:26 +0200." 
 <20030831091426.GB2273@linux>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter Edstrom <peter.p3@home.se>, linux-newbie@vger.kernel.org

That's how I have mine working

:0 w :Newbie/$LOCKEXT                   
* ^X-mailing-list:.*linux-newbie@vger.kernel.org
| $STORE +Newbie

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
