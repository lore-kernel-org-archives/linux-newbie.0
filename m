From: Peter <heisspf@skyinet.net>
Subject: Re: Procmail won't filter linux-newbie mail
Date: Tue, 02 Sep 2003 10:42:08 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030902024213.E665910423@heisspf>
References: <5.1.0.14.1.20030831224453.01f41838@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Sun, 31 Aug 2003 23:05:42 MST." 
 <5.1.0.14.1.20030831224453.01f41838@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

It does work in procmail. AT least with my setup

:0 w :Newbie/$LOCKEXT                   
* ^X-mailing-list:.*linux-newbie@vger.kernel.org
| $STORE +Newbie

Try it by sending a mail to yourself xxxxx@localhost placing "X-mailing-list: 
linux-newbie@vger.kernel.org" above To:
and it will go into the folder you designated.

I am using exmh as mailer BTW.

>   :0
>   * ^X-Mailing-List:.*linux-newbie@vger.kernel.org
>   IN.linux-newbie

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
