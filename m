From: Carl <carl@anexia.co.uk>
Subject: Re: cannot accept socket
Date: Fri, 07 Mar 2003 09:52:56 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20030307094327.01f05088@pop3.demon.co.uk>
References: <20030306181329.7358.qmail@mail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030306115211.01e91058@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: leechin@mail.com, linux-newbie@vger.kernel.org



See the proc.txt file in the Documentation dir that comes with the kernel source.

It says per process limits are set at compile time and are in include/linux/limits.h

Here's the relevant bit in my kernel source:


   However, there is still a per process limit of open files, which
   unfortunatly can't be changed that easily. It is set to 1024 by
   default. To change this you have to edit the files limits.h and
   fs.h in the directory /usr/src/linux/include/linux. Change the
   definition of NR_OPEN and recompile the kernel.

My limits.h has the following defined:

#define NR_OPEN         1024


Regards
Carl


At 12:02 06/03/2003 -0800, Ray Olszewski wrote:
>At 01:13 PM 3/6/2003 -0500, Lee Chin wrote:
>>Hi,
>>In my web server, when I run a stress test with many clients, after a long time I suddenly get an error on the accept system call and the error is "Too many open files".
>>
>>When I do a socklist (or netstat), I see that there are only 400 sockets open (and I have 400 clients, so that is correct).
>>
>>However when I "cat /proc/PID/fd" I see 1024 files.  I think accept failed because of this.
>
>Yes. 1024 is the usual Linux limit on filehandles for a single process. I believe you can change this limit during kernel compilation, but offhand I do not remember how.
>
>>My web server is as simple as possible (it just serves up a static string compiled in with the server).  I know I am closing the sockets... what else could I be doing wrong?
>
>Depends on what the files are.
>
>Are you really seeing them with "cat /proc/PID/fd"? (This gives me an error.) And not "ls -l /proc/PID/fd"? (This works here.) Whatever. Use the second choice to see what the filehandles listed in the pseudo-directory actually point to, and you (or we, if you report a meaningful subset of that info in a followup here) may be able to offer a suggestion.
>
>Depending on details you haven't told us, you may be doing nothing wrong except underestimating the number of filehandles needed per connection ("client").
>
>
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
