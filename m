From: "William Stanard" <wstanard@palmertrinity.org>
Subject: error: premature end of script headers in cgi
Date: Tue, 31 Aug 2004 10:47:44 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <fc.004c4e000061b03e004c4e000061b03e.61b099@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm running Linux 2.4.18-14smp on a Compaq Proliant. When trying to run
gm.cgi (correctly chmod-ed, I believe) to start using Greymatter blogging,
I receive the following error when I look at the httpd error_log:

[error] [client 10.0.4.126] Premature end of script headers: gm.cgi

I am guessing that in moving the cgi scripts to my Linux box via
Dreamweaver, I "added" some bogus carriage returns or some such... How can
I (first) see if that is what I did and (two) edit same...

Bill Stanard
Academic Computing
Palmer Trinity School




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
