From: Markus Klotzbuecher <markus.klotzbuecher@creamnet.de>
Subject: Re: Switching between foreground and background
Date: Mon, 22 Sep 2003 13:55:51 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309221355.51014.markus.klotzbuecher@creamnet.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Monday 22 September 2003 12:48 pm, Silambu Chelvan wrote:
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

Hi 

Switching a task between forground and background is nothing else as 
suspending and restarting. What i would try to do is, when you get the signal 
you want to suspend on, call the pause() function (see pause(2) ). When you 
get the signal you want to restart on, just do nothing as this will let the 
pause() function return and continue doing what happend before suspend.

Try something like this:

***************************************
#include <signal.h>
#include <stdio.h>

void suspend()
{
        printf("Suspending...\n");
        pause();
}

void wake()
{
        printf("Woken up.\n");
}

int main()
{

        signal(SIGUSR1, suspend);
        signal(SIGUSR2, wake);

        while(1) {
                /* do whatever */
                printf("doing whatever...\n");
                sleep(1);
        }
}

Cheers

        Markus
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
