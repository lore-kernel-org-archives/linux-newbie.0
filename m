From: Guru Prasad <gurupras@buffalo.edu>
Subject: Tracking process program counter in kernel
Date: Thu, 25 Sep 2014 01:49:17 -0400
Message-ID: <CAMefCkDp4D+K8fMKx+bDzA5SsOiRaK3F_ACkHkOX+yOnFZKrSQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:content-type;
        bh=dNb2k8gNfxzLCLWSnNGoedQmKy8sSqFPrdlphExlhP8=;
        b=GrtHUyFBYueS6XBC2vZN19b4++9zvqxEeuwnLtRqQ0FmLFYFJZ8UotSIFA9YZDE3mY
         WBlnCKQPjGcHRZMRXXYneqz6XDpwXCRRjKQGtURBb1UyXs/vcVicTQawurwwqo4vqIun
         F7AlvFX5HguMAcIGzk2oRiqdrl56Dxb6hjrvDkq5wGS7ATcKyOuBOcbITflg6qAqIF0N
         duuJcSrq2iYgV0eWgKWvLwnhKleIMT0w4n7p4fIMhMFLgELo5qhwgYl21Vw7+59US9Kj
         KSyCp7LSd5OIHKGV0pFX6ojqotZK/xW/CUZagjWWLYGlwsgHeNVM0RJYTEp55W92XBIF
         0F5g==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm trying to track the value of the PC of a particular process within
the kernel.
To do this, I looked at the kernel source and figured out that the pc
is being stored inside task_struct->stack and that to make sense of
the stack, I need to type cast it into struct thread_info *.
Therefore, in in gdb, I set a breakpoint b scheduler_tick (called every 10ms).
However, when I printed out p/x ((struct thread_info
*)curr->stack)->cpu_context.pc, I received the value as `$4 =
0x804d19d8`.

I expected the PC to be below 0x80000000 given that addresses above
0x80000000 are configured to be kernel-space in my kernel. Upon
looking at the objdump output of the kernel, I see that the pc was
pointing to __schedule.

Correct me if I'm wrong, but isn't the PC supposed to be pointing to
user-space instructions for a process that I started from user-space?
My understanding was that, when an interrupt is triggered, the
register state is saved, the interrupt is serviced, and then the
register state is restored so the program continues as though
'nothing' happened.

How can I find the current instruction that is being executed in user-space?
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
