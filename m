From: Ray Olszewski <ray@comarre.com>
Subject: Re: cannot accept socket
Date: Thu, 06 Mar 2003 12:46:58 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030306124055.01e69ce8@celine>
References: <5.1.0.14.1.20030306115211.01e91058@celine>
 <5.1.0.14.1.20030306115211.01e91058@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030306202252.SSIT8575.mta06-svc.ntlworld.com@there>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: bilbo@waitrose.com
Cc: linux-newbie@vger.kernel.org

I assume you meant to send this to the list, not just to me personally, so 
I've added it back in.

/proc/sys/fs/file-max contains, according to the man page for "proc", the 
*total* number of files the kernel will open at one time. I quickly checked 
a half-dozen Linux systems I have access to, and the value for this was 
4096 on the older ones, 8192 on the newer ones ... not the 1024 the man 
page mentions for this setting.

I **think** the 1024 limit Lee is running into is on files for a *single* 
process, not for all processes together. (Full-size Web servers like apache 
handle high loads by spawning children, so each process opens only a few 
filehandles, making your solution work fine in real-world situations.)

At 08:26 PM 3/6/2003 +0000, bilbo wrote:
>On Thursday 06 March 2003 8:02 pm, Ray Olszewski wrote:
> > At 01:13 PM 3/6/2003 -0500, Lee Chin wrote:
> > >Hi,
> > >In my web server, when I run a stress test with many clients, after a long
> > >time I suddenly get an error on the accept system call and the error is
> > >"Too many open files".
> > >
> > >When I do a socklist (or netstat), I see that there are only 400 sockets
> > >open (and I have 400 clients, so that is correct).
> > >
> > >However when I "cat /proc/PID/fd" I see 1024 files.  I think accept failed
> > >because of this.
> >
> > Yes. 1024 is the usual Linux limit on filehandles for a single process. I
> > believe you can change this limit during kernel compilation, but offhand I
> > do not remember how.
> >
>
>All the webservers in my old place of work had a line in rc.local which wrote
>a value to /proc/sys/fs/file-max. eg something like:
>
>echo 8192 > /proc/sys/fs/file-max
>
>You might want to have a look at /proc/sys/fs/file-max on your machine and
>increase it if necessary.
>
>regards,
>
>John Kelly


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
