From: Marco Calistri <ik5bcu@tin.it>
Subject: A "subject" rule for procmail
Date: Sat, 13 Sep 2003 22:41:35 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <XFMail.20030913224135.ik5bcu@tin.it>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello I am receiving some spam with the following subject topic:

Sildenafil

so I tried to add the following rule into my .procmailrc file:

 :0
       * ^Subject:.*Sildenafil
       spam/.   

but only if the subject is exactly Sildenafil then message is moved to my spam
folder,infact if subject is a bit diffferent as for example:

RE:Sildenafil Citrate

then message pass through the inbox without any filtering.

How can I set the rule into procmailrc to block ALL Sildenafil topic subject ?

Thanks

Regards,Marco

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
