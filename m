From: "Lee Chin" <leechin@mail.com>
Subject: Re: usleep
Date: Thu, 12 Jun 2003 15:43:05 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030612204306.7450.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: hahn@physics.mcmaster.ca
Cc: linux-newbie@vger.kernel.org

Mark,
Two questions

1) Do threads inherrit the schedule priority?  Or do I need to set this for every thread

2) If there is nothing else runnable in my system, will this help? or is it effectively the same?

Thanks
Lee
----- Original Message -----
From: Mark Hahn <hahn@physics.mcmaster.ca>
Date: Wed, 11 Jun 2003 21:02:17 -0400 (EDT)
To: Lee Chin <leechin@mail.com>
Subject: Re: usleep

> > Any way... what is setrealtime?  I dont have it on my linux machine
> 
> it's a simple tool I wrote a long time ago, code below.
> ***** N O T E *******
> it can effectively freeze your machine, since it gives you a process
> which will not be prempted!  it *is* useful, though, if you know
> what you're doing...
> ***** N O T E *******
> 
> #include <unistd.h>
> #include <stdlib.h>
> #include <stdio.h>
> #include <sched.h>
> /* setrealtime: run procs in realtime.
>    author: Mark Hahn <hahn@mcmaster.ca> */
> 
> int main(int argc, char *argv[]) {
>     static struct sched_param sched_parms;
>     int pid, wrapper=0;
> 
>     if (argc <= 1)
>         return 1;
> 
>     pid = atoi(argv[1]);
> 
>     if (!pid || argc != 2) {
>         wrapper = 1;
>         pid = getpid();
>     }
>     if (!pid)
>         return 1;
>  
>     sched_parms.sched_priority = sched_get_priority_min(SCHED_FIFO);
>     if (sched_setscheduler(pid, SCHED_FIFO, &sched_parms) == -1) {
>         perror("cannot set realtime scheduling policy");
>         return 1;
>     }
>     if (wrapper) {
>         setuid(getuid());
>         execvp(argv[1],&argv[1]);
>         perror("exec failed");
>         return 1;
>     }
>     return 0;
> }
> 

-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
