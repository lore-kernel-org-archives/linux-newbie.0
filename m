From: "Andrey V. Romanchev" <negative@rbcmail.ru>
Subject: Re: keeping static ip address alive between restarts
Date: Fri, 20 Feb 2004 22:11:35 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40365BE7.8070408@rbcmail.ru>
References: <fc.004c4e000050d4a1004c4e000050d4a1.50d523@palmertrinity.org> <20040220182421.GA865@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040220182421.GA865@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: 
Cc: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> Greetings: As Ray says; RH may be different but Slackware, all
> versions, have a file: rc.local, that's found -> /etc/rc.d/rc.local,
> where you merely enter whatever command you want for each and every
> future boot...

OMG :)
There is more proper place in Slackware to set static ip address
/etc/rc.d/rc.inet1.conf (only since 9.1)

or just run netconfig
-- 
Hi! I'm a .signature virus. Add me into your ~/.signature to help me spread!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
