From: Carl <carl@anexia.co.uk>
Subject: Re: fetchmail and smtp problem
Date: Thu, 12 Dec 2002 15:11:51 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20021212150453.01f53a18@pop3.demon.co.uk>
References: <200212111851.gBBIpGB03369@hartford-hwp.com>
 <5.1.0.14.1.20021210171852.020d3150@celine>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.0.14.1.20021210171852.020d3150@celine>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021211110250.020d8d90@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Haines,

If you are collecting ALL the mail in the mail box on the ISP server to go to a SINGLE mailbox on your local server
then you can force fetchmail to rewrite the new To: header sent to sendmail with the --smtpname switch on
the command line (or the relevant keyword in the fetchmailconf file). This doesn't explain how 127.0.0.1 got in
the To: header but will stop it from happening again.

Regards
Carl
--


At 11:09 11/12/2002 -0800, you wrote:
>Haines -- It is hard to diagnose anything from this bounce, without information about what the original message looked like. A ways down in the bounce report is this information:
>
>>Date: Tue, 10 Dec 2002 13:58:47 -0500
>>Message-Id: <200212101858.gBAIwl3h003184@hartford-hwp.com>
>>From: Haines Brown <brownh@hartford-hwp.com>
>>To: 127.0.0.1
>>Subject: test from lo 10 dec 13:58
>>Reply-to: brownh@hartford-hwp.com
>
>The first question you need to answer is -- how did 127.0.0.1 get into the "To:" header? Was it an addressing error on your part, or did something rewrite it to that value? I'd suggest you check the outbox of whatever program you used to send the message. If the "To: 127.0.0.1" line appears in your original, then it was just a typo and of no significance to your troubleshooting (that is, the reject is correct). If the original has a different To: line, then post a followup with the details -- what MUA, which system (hard disk) you were using, and what the original To: line said.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
