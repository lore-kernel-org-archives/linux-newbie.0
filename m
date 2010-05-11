From: Fundu <fundu_1999@yahoo.com>
Subject: wake_up_interruptible
Date: Tue, 11 May 2010 13:32:46 -0700 (PDT)
Message-ID: <25990.28429.qm@web63403.mail.re1.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024; t=1273609967; bh=RI0NAqIxGfJSlqL9s2uQIYIhDXMjtEH1JWY/UJcySI0=; h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type; b=GFpxMkpQn4lLtohW+0W76Fc30aq1wDhiVdv+MqPG+RSyuVpJZvw2SZQ1hMTwM+ClM7bmjZEV5jrB5hlAFr59VmMUUJBMPityLHt5rZ3vng0UKpMUn/yV7zGmok8bdd24WDn36dcI4IESaDoiEwLxWmHkI8aZ/a/ka+Y+iXofMoU=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

what happen when you call wake_up_interruptible and there are no task waiting on that wait queue right then. 

But say after some time a task comes along and start waiting (after the wake_up_interruptible is called). 
Would that task be not wait at all because there was a pending wake up

What i'm looking for is a mechanism where by any old wake if not acted upon are lost. so in the above mention case if a task come along and waits after a wake has been sent, it continues to wait until a next wake up is sent.

feel free to ask me if there is some more clarification required.

TIA

fundu 



      
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
