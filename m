From: "Lee Chin" <leechin@mail.com>
Subject: debate on 700 threads vs asynchronous code
Date: Thu, 23 Jan 2003 18:19:13 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030123231913.26663.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

Hi
I am discussing with a few people on different approaches to solving a scale problem I am having, and have gotten vastly different views

In a nutshell, as far as this debate is concerned, I can say I am writing a web server.

Now, to cater to 700 clients, I can
a) launch 700 threads that each block on I/O to disk and to the client (in reading and writing on the socket)

OR

b) Write an asycnhrounous system with only 2 or three threads where I manage the connections and stack (via setcontext swapcontext etc), which is progromatically a little harder

Which way will yeild me better performance, considerng both approaches are implemented optimally?

Thanks
Lee
-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

Meet Singles
http://corp.mail.com/lavalife

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
