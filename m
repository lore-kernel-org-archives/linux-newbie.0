From: simon <simon.guinot@laposte.net>
Subject: Re: linux box hacked ?
Date: Tue, 21 Sep 2004 03:11:51 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <414F7FD7.8060000@laposte.net>
References: <9765ac97d150.97d1509765ac@nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <9765ac97d150.97d1509765ac@nyu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Anshuman Singh Rawat <asr245@nyu.edu>, linux-newbie <linux-newbie@vger.kernel.org>

hello,

Anshuman Singh Rawat wrote:
> Hi, I want to know how one can know for sure if a linux box has been 
> hacked. This morning a linux box in our lab was behaving funny. More 
> clearly, i was executing some commands and on doing a 'grep', 'grep' 
> threw a segmentation fault!! Also, I saw (with a 'ps -A') there were 
> several processes running with names like'xscan', 'pscan'. There were
>  several 'cat' commands running; some of them were dead (if that's 
> what defunct means). Also, I noticed that the executables for 'cat', 
> 'grep' and a few others showed a modification date of today. I tried 
> to reboot the system, but that never happenned. The boot loader 
> complained about /etc/fstab being corrupted or missing, and ofcourse 
> as booting procedure uses the 'grep' command (which was throwing 
> segmentation faults), the machine couldn't boot.
> 
> We really couldn't figure out for sure what happenned but do any of 
> these symptoms indicate that somebody could have hacked into it?

check or change your ram...
else reinstall your system...

simon
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
