From: "William Stanard" <wstanard@palmertrinity.org>
Subject: keeping legitimate users out of public_html
Date: Wed, 15 Sep 2004 08:15:08 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <fc.004c4e00006307dc004c4e00006307dc.6308bf@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I help students manage a school intranet website on a machine running Red
Hat 2.4.18-14 and Apache 2.0.40.

How do I keep my student users with accounts on the machine from being
able to access, via Putty, /home/bobo/public_html, the directory in which
I keep all of the content for the site, including tests and quizzes for my
students' online use?

 I can password protect, using .htaccess, specific directories from
"unauthorized" access, but I would like to provide similar protection for
the /home/bobo/public_html/Prog/tests directory.  If I change permissions
via chmod, however, then Apache will not be able to serve the pages to the
intranet.

Bill Stanard
Academic Computing
Palmer Trinity School




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
