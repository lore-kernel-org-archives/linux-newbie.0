From: Daniel Rodrick <daniel.rodrick@gmail.com>
Subject: Questions about linux scheduler
Date: Thu, 29 Oct 2009 20:38:31 +0530
Message-ID: <292693080910290808x69f25f6fgc49cb646c1c00466@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755116AbZJ2PIa@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=otyaInsg7RaWgbNsRVF3g4Dfx6YcI2PQlM9dZFvLqLI=;
        b=QAc/yCVwhdhkFUfaetGwZpKy+sazrl8Y0AxBvSfETE7pEenh/ueKNUkdYhMaFSuPxY
         YS+lmGhEidQO8TUogeCXoPFOIsXZIaUGELb1TpPFo8FA1qb5Hz4u1jL0UlNREodViYfG
         PB9p1IHtEM6PiLSv4QKEaOoFspLGHyP4HMCiQ=
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>, linux-kernel@vger.kernel.org

Hi list,

I'm following the Robert Love's book and am trying to understand the
Linux O(1) scheduler. So here is my understanding. The kernel allows
the applications to specify two types of priorities

* Realtime Priorities: Range from 0 to 99
* Non-realtime priorities: Also called "nice" values range from -20 to +19.

(The above are mutually exclusive)


Over all Scheduling algo
=================
* A total of 140 priorities (100 RT + 40 non-RT) - these priorities
are static - do not change over time.
* A lower priority process will run only if there are no runnable
processes in priority above it - this automatically means that all RT
processes get to run before non-RT processes.
 * tasks on the same priority level are scheduled round robin

Is my above understanding correct? Where my understanding doesn't fit
is the conncept of dynamic timeslice calculation. IMHO, the dynamic
timeslice calculation applies only to Non-RT processes, right? Because
a higher priority RT process should always get to run.

Thanks,

Dan
