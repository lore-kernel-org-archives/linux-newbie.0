From: Peter <pfheiss@philonline.com>
Subject: Fetchpop Problem
Date: Thu, 03 Oct 2002 11:07:55 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210030307.g9337tH01801@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

To retrieve my mail I am using Fetchpop which has worked very well the past 
few years. Now suddenly when I get mail from a certain person after that mail 
had come in further downloading is aborted and the mail is then not cleared on 
the server.

I have then to use the program poppy to delete the particular mail from the 
server in order to continue bringing the mail in with fetchpop.

Kmail can bring in all the mail as well except it can't display html formats 
and I am using exmh as my mailer anyhow. This particular mail is in html 
format, yet there is no problem with this format with fetchpop from other 
sources.

In this mail which makes fetchpop abort
some of the header says: Received: from mail pickup service by hotmail.com 
with Microsoft SMTPSVC.

And the message ends with:
Chat with friends online, try MSN Messenger: Click Here

or in raw form:
67<o:p></o:p></SPAN></P></DIV></DIV></div><br clear=all><hr>Chat with friends 
online, try MSN Messenger: <a href='http://g.msn.com/1HM1ENPH/c144??PS=47575'>
Click Here</a><br></html>

So it seems to be a fetchpop problem, the question is why.

Any ideas?

Thanks & regards
  
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
