From: "ramands" <ramands@indiatimes.com>
Subject: OOPS in Kmalloc
Date: Thu, 24 Apr 2003 09:46:17 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304240344.JAA29170@WS0005.indiatimes.com>
Reply-To: "ramands" <ramands@indiatimes.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org
Cc: whitnl73@juno.com, ray@comarre.com, sneakums@zork.net

Hello, 
i am getting OOPS in Kmalloc .

void **data;
qset = 1000;

dptr->data = kmalloc(qset * sizeof(char *), GFP_KERNEL);

what could the possible the cause of the error 

Raman


Get Your Private, Free E-mail from Indiatimes at http://email.indiatimes.com

 Buy The Best In BOOKS at http://www.bestsellers.indiatimes.com

Bid for for Air Tickets @ Re.1 on Air Sahara Flights. Just log on to http://airsahara.indiatimes.com and Bid Now !

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
