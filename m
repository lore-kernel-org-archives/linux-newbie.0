From: Markus Klotzbuecher <markus.klotzbuecher@creamnet.de>
Subject: Re: Switching between foreground and background
Date: Mon, 22 Sep 2003 16:37:13 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309221637.14000.markus.klotzbuecher@creamnet.de>
References: <20030922123822.71099.qmail@web20003.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030922123822.71099.qmail@web20003.mail.yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Silambu Chelvan <silambu_mdu@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On Monday 22 September 2003 02:38 pm, Silambu Chelvan wrote:
> Hi,
>
> Thanks for your information.
>
> The method you suggested works fine but I still have a
> requirement. The control is still in the process and
> could not see the command prompt. The thing is that I
> should get the command prompt whenever the process is
> put into background so that I can issue some other
> command on the prompt.

Hi

hmm, I see. You will have to actually stop the process to get the command 
prompt, instead of letting it sleep as I suggested earlier. You can do this 
by sending the SIGSTOP signal to it:

#include <signal.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

void suspend()
{
        printf("Suspending...\n");
        pid_t pid = getpid();
        kill(pid, SIGSTOP); /*send SIGSTOP to itself */
}
...

The problem arises, when you need to start it again. The stopped process needs 
to be sent a SIGCONT signal, which will cause it to continue. Obviously a 
stopped process can't catch any signals and can't start itself again. The 
only way I see is to have a second process catch the signals and send the 
appropriate SIGSTOP and SIGCONT signals to the, lets call it main process.

I hope this helps...

Cheers

	Markus


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
