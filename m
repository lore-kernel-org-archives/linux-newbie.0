From: "John T. Williams" <jowillia@vt.edu>
Subject: Re: Switching between foreground and background
Date: Mon, 22 Sep 2003 11:37:05 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <003501c3811f$610395a0$ed64a8c0@descartes>
References: <20030922104825.81134.qmail@web20002.mail.yahoo.com>
Reply-To: "John T. Williams" <jtwilliams@vt.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Silambu Chelvan <silambu_mdu@yahoo.com>, linux-newbie@vger.kernel.org

I think part of the problem here might be conceptual.

If I understand what you want, you'd like, on a signal, for your program to
go into the background (still running but no longer blocking the terminal
input/output). On another signal you would like the program to come back to
the foreground.

If this is the case, the problem you're facing is that the program being in
the foreground and the background is actually part of the shell, not a
property of the program running.  Most Shells provide a way to switch
programs from the foreground to the background and back.
BASH for example I could type

$>./myprogram
(cntr + Z) //suspends the current program and prings the prompt back
$>bg  (runs the program in the background)

The only way that I know of to force a program to run in the background in
the code is to make it a daemon which is done by forking twice

int main(  ) {
   if(fork()==0)  {
            if( fork() == 0 )  {
                    program code starts here
             }
            exit(0);
    }
    exit(0);
}


----- Original Message ----- 
From: "Silambu Chelvan" <silambu_mdu@yahoo.com>
To: <linux-newbie@vger.kernel.org>
Sent: Monday, September 22, 2003 6:48 AM
Subject: Switching between foreground and background


> Hi all,
>
> I have written some program with signal handler. Is
> this possible, if
> one of the signals registered with my program is
> raised, my program
> should goto background and should come to foreground
> when some other of the
> registered signal is raised. how to do it?
>
> Any function available to switch a process between
> foreground and
> background at runtime?
>
> with regards,
> M. SilambuChelvan
>
>
> __________________________________
> Do you Yahoo!?
> Yahoo! SiteBuilder - Free, easy-to-use web site design software
> http://sitebuilder.yahoo.com
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
