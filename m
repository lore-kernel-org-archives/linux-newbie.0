From: Peter <peter@skyinet.net>
Subject: Re: user/e-mail name
Date: Mon, 08 Mar 2004 14:25:34 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040308062534.C03E2D831@heisspf>
Reply-To: "Peter H." <heisspf@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

I was finally able to tweak exmh to put
"Reply-To: myname@myisp.net" automatically into the header of outgoing mail. I 
had to edit .mh_profile in an unusual way to be able to read 
/etc/nmh/components. That was never necessary in RedHat that exmh could not 
read that file.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
