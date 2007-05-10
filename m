From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: Multithreaded debugging of kernel using kgdb
Date: Thu, 10 May 2007 18:11:25 +0530
Message-ID: <7783925d0705100541y596991fbo6e99090753421cbe@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=LLhVUAXEgKTuJitOUyloS/81NBb6Ho/UB3Sk4Ero7dDdQ/PjS+ptVUbsuI5YeLosg2icyWsSF0GBqnogDQMXCpni12krHOhzE1NXYQMbGfDcepQ2pycck1Lb8WE6+5zeiHjGW7cEbu5h5mqZclwIg0Pjqz0Dr3o8dRYfTP3kVHk=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi List,

I am debugging Linux kernel using gdb (KGDB patch). I am successsfully
able to set breakpoints in the kernel and step though the code as far
as a single thread of execution is concerned.

However, I was curious so as to how can I simulate and debug a race
condition that involves multiple threads?

For e.g., I want to simulate and analyse the state of some data structures when:

Process P1 takes a semaphore S.
......
(At certain time) Process P2 becomes runnable and preempts P1

How do I perform a context switch and simulate that "while P1 is
executing this instruction, P2 preempts it". Is it possible?

Thanks,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
