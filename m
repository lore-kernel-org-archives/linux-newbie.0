From: "William Stanard" <wstanard@palmertrinity.org>
Subject: Re: keeping legitimate users out of public_html
Date: Mon, 20 Sep 2004 12:49:08 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <fc.004c4e0000637dea004c4e00006307dc.637dfd@palmertrinity.org>
References: <5.1.0.14.1.20040915100132.01f29c78@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040915100132.01f29c78@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray Olszewski <ray@comarre.com> writes:
>At 08:15 AM 9/15/2004 -0400, William Stanard wrote:
>>I help students manage a school intranet website on a machine running Red
>>Hat 2.4.18-14 and Apache 2.0.40.
>>
>>How do I keep my student users with accounts on the machine from being
>>able to access, via Putty, /home/bobo/public_html, the directory in which
>>I keep all of the content for the site, including tests and quizzes for
>my
>>students' online use?
>>
>>  I can password protect, using .htaccess, specific directories from
>>"unauthorized" access, but I would like to provide similar protection for
>>the /home/bobo/public_html/Prog/tests directory.  If I change permissions
>>via chmod, however, then Apache will not be able to serve the pages to
>the
>>intranet.
>
>This is actually a tricky problem, taking you into one of the blurry
>areas 
>of Unix/Linux permissions. One way to solve it: first check what userid 
>apache is running under and what groups that userid is part of. 
Thank you very much for the reply. I am using what you said and what
Stephen posted to solve the problem.... but, and this seems so simple, I
am embarrassed to ask, how do I determine what userid apache is running
under? 

Bill Stanard




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
