From: Ray Olszewski <ray@comarre.com>
Subject: Re: partitioning drive
Date: Tue, 23 Mar 2004 13:48:01 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040323133331.01fdbaa0@celine>
References: <20040323180912.GC25879@panix.com>
 <20040323130248.GA10357@panix.com>
 <200403231539.55433.pa3gcu@zeelandnet.nl>
 <20040323180912.GC25879@panix.com> <200403232210.53732.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403232210.53732.pa3gcu@zeelandnet.nl>
References: <20040323180912.GC25879@panix.com>
 <20040323130248.GA10357@panix.com>
 <200403231539.55433.pa3gcu@zeelandnet.nl>
 <20040323180912.GC25879@panix.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

At 10:10 PM 3/23/2004 +0100, pa3gcu wrote:\
[...]
>Ok then considering unix dates back to 1970 and was given the name by Brian
>Kernighan and that unix as such only got a name in 1973 when Dennis Ritchie
>invented C, i guess you must have worked for Bell Labs back then or a
>development group composed of at least the above 2 named persons.
>Anyway, Unix is AFAIK 24 years old i am 53 (for what its worth) and claim to
>have used most operting systems out there for some or little lenth of time
>which is why i choose to say what i going to.

You need to brush up on your arithmetic, Richard.

         2004 - 1970 != 24
         2004 - 1970 = 34

I first used a Unix system around 1981 myself. There were some (PDP-11s, I 
think ... for me, just whatever was at the other end of the terminal's 
serial line)  at Stanford, where I was doing graduate work.

And at about the same time, I had a friend at Tymshare who did development 
work on Unix systems, implementing some ideas of Doug Englebart's under the 
name Augment.

So 20 years of Unix experience is, while no doubt rare, not implausible.

BTW, on the partitioning question .. I find I prefer to partition my boot 
drives, at least the big ones we use these days, into four partitions:

         hda1 = /boot, a small partition
         hda2 = /, usually around 10 GB
         hda3 = swap, size varies
         hda4 = /home, whatever is left

Set up this way, it means I can do a complete Linux reinstall without 
worrying about accidental overwriting of anything on the /home partition 
(since I don't mount it until after the system is installed on /). It also 
simplifies recovery after a crash, in that I can "cheat" and just fsck 
hda2, or I can run hda2 as ext2 and hda4 as a journaling filesystem.

But all that is just personal preference ... there is no single right 
answer to the partitioning question.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
