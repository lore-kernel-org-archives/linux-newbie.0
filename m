From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: reason for code like this: "do { something } while (0)"
Date: Mon, 15 May 2006 15:18:41 +0530
Message-ID: <b115cb5f0605150248s1444b7c1wf43a1517eb96130e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi,

I'm asking a pretty amateur question.

I've come accross code like this huge number of times in the kernel:

#define __set_task_state(tsk, state_value)              \
        do { (tsk)->state = (state_value); } while (0)

What is the reason to use do while loop if it is only meant to be
executed just once? Why not a simple:

#define __set_task_state(tsk, state_value)              \
        { (tsk)->state = (state_value); }

TIA,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
