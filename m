From: "John T. Williams" <jowillia@vt.edu>
Subject: Re: About PID...???!!!
Date: Wed, 10 Sep 2003 15:15:53 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <00ae01c377cf$f54f5ae0$ed64a8c0@descartes>
References: <20030910142344.8594.qmail@web20008.mail.yahoo.com> <5.1.0.14.1.20030910084359.01f35750@celine> <008501c377c5$f92db210$ed64a8c0@descartes>
Reply-To: "John T. Williams" <jtwilliams@vt.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "John T. Williams" <jtwilliams@vt.edu>, linux-newbie@vger.kernel.org

Alright Alright, I concede it does loop, I should have used the word never.
I'll change it to rarely and be done with it, in any case I think Silambu
got his answer which briefly is:

No PID = 412 doesn't mean there are 412 process currently running on your
machine.
Read the man page for ps to learn how to identify processes that are
currently running.

----- Original Message ----- 
From: "John T. Williams" <jowillia@vt.edu>
To: <linux-newbie@vger.kernel.org>
Sent: Wednesday, September 10, 2003 2:04 PM
Subject: Re: About PID...???!!!


> definitely higher then 2^16, I've got a process with the PID of 69917
> I would guess MAX_INT which is 2^32 -1 = 4294967295
>
> ----- Original Message ----- 
> From: "Ray Olszewski" <ray@comarre.com>
> To: <linux-newbie@vger.kernel.org>
> Sent: Wednesday, September 10, 2003 11:58 AM
> Subject: Re: About PID...???!!!
>
>
> > At 11:21 AM 9/10/2003 -0400, John T. Williams wrote:
> > >They are assigned linearly, however once a pid is used, it is never
> reused
> > >until the machine reboots.
> >
> > This is not quite correct. The pid assignment process wraps, I *think*
at
> > 32767 (or maybe 65535). Next time around, the kernel skips over any pids
> > that are still in use from the last round of assignment.
> >
> > >A pid of 413 means that when that process was fork()'ed there had been
> 412
> > >other processes already created. But remember every time you type ls,
> you've
> > >run a process.
> > >
> > >413 isn't a large pid at all. My linux box which I very rarely reboot
is
> at
> > >PIDs that start at 20000
> > >
> > >I'm surprised that any program you start after the boot process is as
low
> as
> > >412.
> >
> > Whether that is surprising or not depends on what he uses the host for
> and,
> > naturally, on how recently it was rebooted. While my workstation is way
up
> > there (30180), my Linux-based router, which does not start new processes
> > very much, is only at pid 828.
> >
> > And, of course, there are persistent processes on any Linux host that go
> > back to the boot/init process ... starting with init itself (always pid
1)
> > and including long-lived daemons such as syslogd, klogd, and portmap;
> > pseudo processes that are actually run in the kernel (mostly [k*]
process
> > names); and getty proceses listening on VTs that never get logins.
> >
> >
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
