From: sean@tcob1.net
Subject: Re: Maildrop doesn't filter or log filters
Date: 03 May 2003 10:37:02 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <n2m-g.uof2kqsld.fsf@tcob1.net>
References: <n2m-g.428061.a14921@tcob1.net> <00da01c31037$5ffe1a80$0300000a@iih.usyd.edu.au> <n2m-g.uwuh9av6a.fsf@tcob1.net> <3EB376B2.5090007@shaw.ca>
Reply-To: sean@tcob1.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Chris Rose <offline@shaw.ca> writes:

> Speaking from experience (sorry, should have posted my found fix on
> this a while ago), maildrop may not log that itself, but in the
> /var/log/maillog file you can find its output to stderr that indicated
> a permissions problem.  Once i found this, all of it fell into place.
> 
> sean

No problem, maybe this will help someone else as well :)

Sean
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
