From: Ray Olszewski <ray@comarre.com>
Subject: Re: fetchmail and smtp problem
Date: Wed, 11 Dec 2002 11:09:03 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021211110250.020d8d90@celine>
References: <5.1.0.14.1.20021210171852.020d3150@celine>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.0.14.1.20021210171852.020d3150@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212111851.gBBIpGB03369@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Haines -- It is hard to diagnose anything from this bounce, without 
information about what the original message looked like. A ways down in the 
bounce report is this information:

>Date: Tue, 10 Dec 2002 13:58:47 -0500
>Message-Id: <200212101858.gBAIwl3h003184@hartford-hwp.com>
>From: Haines Brown <brownh@hartford-hwp.com>
>To: 127.0.0.1
>Subject: test from lo 10 dec 13:58
>Reply-to: brownh@hartford-hwp.com

The first question you need to answer is -- how did 127.0.0.1 get into the 
"To:" header? Was it an addressing error on your part, or did something 
rewrite it to that value? I'd suggest you check the outbox of whatever 
program you used to send the message. If the "To: 127.0.0.1" line appears 
in your original, then it was just a typo and of no significance to your 
troubleshooting (that is, the reject is correct). If the original has a 
different To: line, then post a followup with the details -- what MUA, 
which system (hard disk) you were using, and what the original To: line said.

If it aids your memory, this message has a timestamp just 10 minutes before 
the one on the telnet test you did (and reported on) yesterday.

At 01:51 PM 12/11/02 -0500, Haines Brown wrote:
>I ran fetchmail -V to get the version and other info, and there's
>little difference from what I've got with my current (RH7.3)
>system. The only difference is that on my current (RH7.3) system, old
>messages are flushed before retrieval, while on new system (RH8.0)
>--flush off.
>
>================================================================
>
>Here is a bounced message. It was rejected by my own mailserver:

[details deleted]



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
