From: "Lee Chin" <leechin@mail.com>
Subject: cannot accept socket
Date: Thu, 06 Mar 2003 13:13:29 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030306181329.7358.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org
Cc: leechin@mail.com

Hi,
In my web server, when I run a stress test with many clients, after a long time I suddenly get an error on the accept system call and the error is "Too many open files".

When I do a socklist (or netstat), I see that there are only 400 sockets open (and I have 400 clients, so that is correct).

However when I "cat /proc/PID/fd" I see 1024 files.  I think accept failed because of this.  My web server is as simple as possible (it just serves up a static string compiled in with the server).  I know I am closing the sockets... what else could I be doing wrong?

Has anyone seen something similar to this before?

Thanks
Lee
-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
