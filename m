From: Manish Regmi <regmi.manish@gmail.com>
Subject: Re: Query on SIGFPE handling
Date: Mon, 22 Nov 2004 15:11:10 +0545
Message-ID: <652016d3041122012643ea7ffe@mail.gmail.com>
References: <1101104772.4527.7.camel@myLinux>
	 <652016d3041121230031fe6094@mail.gmail.com>
	 <1101107755.4527.18.camel@myLinux> <1101111876.5382.8.camel@myLinux>
	 <01ca01c4d071$5b35f080$121aa8c0@ascindia.com>
	 <1101114324.5382.42.camel@myLinux>
Reply-To: Manish Regmi <regmi.manish@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1101114324.5382.42.camel@myLinux>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Cc: linux-newbie@vger.kernel.org, yogeshb@ascindia.com

On Mon, 22 Nov 2004 14:35:24 +0530, Jagadeesh Bhaskar P
<jbhaskar@hclinsys.com> wrote:
> On Mon, 2004-11-22 at 14:27, Yogesh Bute wrote:
> > hi,
> >     u need to inform the shell that the signal is handled - so u need to
> > SIG_IGN the singal ie. signal (signum, SIG_IGN) once u have done with
> > handling the signal
> >     or u could send SIG_DFL, so that default singal handler will handle the
> > signal, after your specific signal handler code.

Doing that will probably put you in infinite loop.

Infact, the is no way to go further unless you resolve the cause of
the exception.

For playing with Signals,
you can generate SIGUSR1 kill(pid, SIGUSR1)  and catch.

-- 
Manish Regmi
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
