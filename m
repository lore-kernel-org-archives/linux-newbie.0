From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Reentrant code / Critical section / Atomic Section
Date: Thu, 3 Aug 2006 11:42:40 +0530
Message-ID: <292693080608022312x710233f5w4545f223fa00f27f@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-Disposition: inline
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi,

Can some body please confirm my understanding?

"Reentrant code" is a piece of code that could be simultaneously
running by multiple threads of execution. (either via SMP, or via
preemption on uniprocessor machines)

"Critical Section" is a piece of code that can be running by only one
thread of execution at a time ( If one thread enters critical section
on one processor, no other thread will enter critical section, even on
another processor).

"Atomic Section" is a piece of code that if starts running on a
processor, then it can't be preempted untill the atomic section is
exited. (it is however possible that the same atomic section is being
run simultaneously on a different processor by a different thread).

In that sense "Reentrant Code" seems to be just the opposite of
"Critical Section". Is this right?

Thanks,

Dan

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

