From: Ray Olszewski <ray@comarre.com>
Subject: Re: keeping legitimate users out of public_html
Date: Wed, 15 Sep 2004 10:14:11 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040915100132.01f29c78@celine>
References: <fc.004c4e00006307dc004c4e00006307dc.6308bf@palmertrinity.o
 rg>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc.004c4e00006307dc004c4e00006307dc.6308bf@palmertrinity.o
 rg>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:15 AM 9/15/2004 -0400, William Stanard wrote:
>I help students manage a school intranet website on a machine running Red
>Hat 2.4.18-14 and Apache 2.0.40.
>
>How do I keep my student users with accounts on the machine from being
>able to access, via Putty, /home/bobo/public_html, the directory in which
>I keep all of the content for the site, including tests and quizzes for my
>students' online use?
>
>  I can password protect, using .htaccess, specific directories from
>"unauthorized" access, but I would like to provide similar protection for
>the /home/bobo/public_html/Prog/tests directory.  If I change permissions
>via chmod, however, then Apache will not be able to serve the pages to the
>intranet.

This is actually a tricky problem, taking you into one of the blurry areas 
of Unix/Linux permissions. One way to solve it: first check what userid 
apache is running under and what groups that userid is part of. Then make 
the relevant files and directories mode 640 (or 750, depending on the 
specifics ... possibly even 660 or 770 if you have cgi scripts that need to 
write to files or create new files), associating them with a group that the 
apache userid is in but the students are not in. That should do the job for 
you.

Doing this may require you to change the userid that apache runs under. And 
I am assuming in this (a) that you are "bobo"; (b) the students do not have 
root access to the host. If assumption (b) is wrong, then there is no way 
to accomplish what you want that I know of (since root access is, by 
definition, never "unauthorized"). If assumption (a) is wrong, the general 
idea I'm suggesting should still work, but you will have to adjust some 
details, depending on what the userid "bobo" actually is.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
