From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: tar confined to partitions
Date: Tue, 3 Sep 2002 09:54:33 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209031354.g83DsX516599@hartford-hwp.com>
References: <20020903062042.25752.qmail@web40610.mail.yahoo.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020903062042.25752.qmail@web40610.mail.yahoo.com> (message
	from =?iso-8859-1?q?szonyi=20calin?= on Tue, 3 Sep 2002 08:20:42 +0200
	(CEST))
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: caszonyi@yahoo.com
Cc: linux-newbie@hartford-hwp.com

Calin,

> What tar do you have because i want it too.
> Mine is GNU tar and it seems to disregard the
> -exclude comand line switch.

This is my tar version: tar-1.13.25-4, which I assume is GNU.

As for my problem of tar seeing only one partition, someone pointed
out that my tar command: 

tar -C "$1" -cOl . | tar -C "$2" -xpf -

in fact has a -l option in it (combination of senility and failing
eyesight associated with advanged age, I suspect). I have not had an
opportunity to test whether simply leaving it out will resolve the
problem. 

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
