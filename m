From: Ray Olszewski <ray@comarre.com>
Subject: Re: cannot accept socket
Date: Thu, 06 Mar 2003 12:02:05 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030306115211.01e91058@celine>
References: <20030306181329.7358.qmail@mail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030306181329.7358.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:13 PM 3/6/2003 -0500, Lee Chin wrote:
>Hi,
>In my web server, when I run a stress test with many clients, after a long 
>time I suddenly get an error on the accept system call and the error is 
>"Too many open files".
>
>When I do a socklist (or netstat), I see that there are only 400 sockets 
>open (and I have 400 clients, so that is correct).
>
>However when I "cat /proc/PID/fd" I see 1024 files.  I think accept failed 
>because of this.

Yes. 1024 is the usual Linux limit on filehandles for a single process. I 
believe you can change this limit during kernel compilation, but offhand I 
do not remember how.

>My web server is as simple as possible (it just serves up a static string 
>compiled in with the server).  I know I am closing the sockets... what 
>else could I be doing wrong?

Depends on what the files are.

Are you really seeing them with "cat /proc/PID/fd"? (This gives me an 
error.) And not "ls -l /proc/PID/fd"? (This works here.) Whatever. Use the 
second choice to see what the filehandles listed in the pseudo-directory 
actually point to, and you (or we, if you report a meaningful subset of 
that info in a followup here) may be able to offer a suggestion.

Depending on details you haven't told us, you may be doing nothing wrong 
except underestimating the number of filehandles needed per connection 
("client").



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
