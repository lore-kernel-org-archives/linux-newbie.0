From: joy <gracecott@sancharnet.in>
Subject: frequent kernel freezes
Date: Thu, 22 Jan 2004 09:41:25 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <400F4D6D.4070006@sancharnet.in>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: mailing list <linux-newbie@vger.kernel.org>

Hello,

I recently got X working thanks to you guys <bow and worship>,
but when I run X, everytime w/o fail I get a message -   Sound server 
fatal error: cpu overload, aborting.
I run on Alsa 1.0.1rc2 and have an athlon 2400+ with an nforce mobo and 
a geforce vga card.

from the time I changed to the 2.6 kernel, My comp hangs every other 
time I boot. Sometimes it hangs DURING BOOTING :-(
I wanted to to know the state of the computer when it hangs so that I 
could feed you guys that info (obviously ;-).
I checked in /var/log/messages, but as soon as I startx, the log reads 
unable to load  some charset ( which I assume is not fatal)
and followed by garbage until  the next bootup message starts( I hope 
Iam getting thru).I  run reiserfs ver 3.6 .is there any option to read 
the reiser journal
or a core dump or anything of  that sort to obtain the state of my 
machine after it hangs? Also if I enable Sysrq in my kernel, will I be 
able to get the kernel out of a hanging state?
(the doc staes that it makes the "kernel sit up and listen" or somthing 
of that sort....

Thanks a lot in advance,
Joy

> --------------------------------------------------------------------------------------------------------
> A life without purpose is like a bird that never learnt to fly.......
> I am the bird that regularly flies Lufthansa


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
