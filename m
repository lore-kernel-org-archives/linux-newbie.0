From: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Subject: Re: Query on SIGFPE handling
Date: Mon, 22 Nov 2004 14:35:24 +0530
Message-ID: <1101114324.5382.42.camel@myLinux>
References: <1101104772.4527.7.camel@myLinux>
	 <652016d3041121230031fe6094@mail.gmail.com>
	 <1101107755.4527.18.camel@myLinux> <1101111876.5382.8.camel@myLinux>
	 <01ca01c4d071$5b35f080$121aa8c0@ascindia.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <01ca01c4d071$5b35f080$121aa8c0@ascindia.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Yogesh Bute <yogeshb@ascindia.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Mon, 2004-11-22 at 14:27, Yogesh Bute wrote:
> hi,
>     u need to inform the shell that the signal is handled - so u need to
> SIG_IGN the singal ie. signal (signum, SIG_IGN) once u have done with
> handling the signal
>     or u could send SIG_DFL, so that default singal handler will handle the
> signal, after your specific signal handler code.

How can I generate and send a signal from a function of mine? Is it
possible from a userlevel C program, using some functions like
signal()??

Please do help
-- 
With regards,

Jagadeesh Bhaskar P

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
