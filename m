From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: fetchmail and smtp problem
Date: Wed, 11 Dec 2002 19:15:23 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212120015.gBC0FNf03106@hartford-hwp.com>
References: <5.1.0.14.1.20021210171852.020d3150@celine>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.0.14.1.20021210171852.020d3150@celine> <5.1.0.14.1.20021211110250.020d8d90@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20021211110250.020d8d90@celine> (message from Ray
	Olszewski on Wed, 11 Dec 2002 11:09:03 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

> Haines -- It is hard to diagnose anything from this bounce, without
> information about what the original message looked like. A ways down
> in the bounce report is this information:

Unfortunately, I can't reproduce the error. I repeated what I had done
earlier, which I believe was to send a test message to a) my email
address, b) to an alias on another server that is redirected back to
myself, c) localhost.localdomain, d) localhost

None of these messages was received within a period of at least 15
minutes, even though they all had a BCC: back to myself.

I've no problem receiving messages from the mail server (despite the
inordinate delays), and so it appears that my outgoing mail is just
not getting there.

Haines 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
