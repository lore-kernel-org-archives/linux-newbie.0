From: Guru Prasad <gurupras@buffalo.edu>
Subject: Disallow process from being scheduled for specific duration
Date: Mon, 30 Jun 2014 11:44:47 +0530
Message-ID: <CAMefCkAqpSb9x-uncxwr=7r0B-ms+w9M6X3DgV2rfe2in3NBYA@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-pm-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:content-type;
        bh=Op3hM/485N9ctgrTq5cR6J1Q1zVM0UTMcsZLDK1l5uE=;
        b=SfJhiC4HAgyzMPu/dshS/XWsooqe+VtSbjRl9uwurS3gzShcY+hMfuJk00THP1VnZo
         ozOiExcsXfesLEjml26oizKXVz6C6+BWo22WXaPhW+RtQlaYrmXQg43pLV/hqLAbW91X
         QVJOSnIi9N1BVhE0U52zw2gIU6iSI0wwO8/+AM0lZMQXd9htxF5SY+bmHTYuuaRbTZvs
         QSy8283J944edO0Vi1ZGSFgWVOKUR/T5lP62aNY8JIJlxbet58K2SFGNbE3uHXMVuqJq
         DS5+PjdpSVtKTahIhZhEKqBh8WsYSQctzf685fY7CiRdyGHC9LnYVK+wwRVPZAv3FgZf
         FwsA==
Sender: linux-pm-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-pm@vger.kernel.org, linux-newbie@vger.kernel.org

Hi all,

First, I would like to establish that I'm fairly new to the scheduler
portion of kernel code.

I'm trying to implement a crude form of the rate limiting approaches
described in:
Currentcy - http://cseweb.ucsd.edu/~vahdat/papers/usenix03.pdf
Pixie - http://www.eecs.harvard.edu/~mdw/papers/pixie-sensys08.pdf

My current design is as follows ('task' refers to the current process'
task_struct):
    - I have augmented a hardware simulator(Gem5) with registers that
keep track of energy usage.
    - Upon every call to __schedule(), subtract the register value
from 'task->available_energy'
        - If 'task->available_energy' is negative:
            - Compute 'replenish_time' as time taken to replenish energy
            - Call schedule_timeout(msecs_to_jiffies(replenish_time))
        -  Reset energy registers

I'm primarily looking to disallow scheduling of the current task for
the period defined as 'replenish_time'.

I can see how it might be wrong to call schedule_timeout() from within
__schedule().
If so, what would be the right way of designing such a mechanism?


Regards
