From: Ray Olszewski <ray@comarre.com>
Subject: Re: Reinstallation
Date: Tue, 30 Mar 2004 12:19:40 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040330115239.01f82bc8@celine>
References: <200403302101.44326.pa3gcu@zeelandnet.nl>
 <200403301320.10936.wheds8@ms66.hinet.net>
 <200403310253.54429.wheds8@ms66.hinet.net>
 <200403302101.44326.pa3gcu@zeelandnet.nl> <200403310313.33596.wheds8@ms66.hinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403310313.33596.wheds8@ms66.hinet.net>
References: <200403302101.44326.pa3gcu@zeelandnet.nl>
 <200403301320.10936.wheds8@ms66.hinet.net>
 <200403310253.54429.wheds8@ms66.hinet.net>
 <200403302101.44326.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:13 AM 3/31/2004 +0800, S. Barret Dolph wrote:
>I redid the partitions and then formatted them with Reiserfs. I then selected
>the packages to be installed. None of the packages could be installed. After
>waiting quite a while I got messages saying, for example, xxx program had
>problems do you want to continue. There was a message for every package
>apparently.

Sorry to jump into this late, but I'm about as confused as Richard is (and 
since I live 8 time zones west of Richard, perhaps it's time for me to pop 
in so he can go to dinner).

"xxx program had  problems do you want to continue" is not an example. It 
is a paraphrase, and rather an uninformative one. Does the message really 
say nothing more informative than "had problems"? Does it really call each 
a "program", not a "package"? I doubt it ... I recall Knoppix as a Debian 
derivative, and the Debian style of messages is very different from what 
you are reporting ... but the best way to tell is to see an actual, 
complete example.

I haven't installed Knoppix here, so I'm fishing a bit to think of what 
might be causing problems.

Does the install kernel support Reiserfs out of the box? Might the root (/) 
partition need to be ext2 or ext3, for example? Or might you need to load a 
kernel module before doing package installation?

Technically, Linux users do not "format" partitions ... we create 
partitions with fdisk (or a relative) and put filesystems on them with 
mke2fs (or the one appropriate for your filesystem type). Did you do both 
steps?

Please describe the steps you are taking a bit more exactly, provide actual 
examples of error messages, and give us the structure of the system (such 
as the output of "df" and "uname -a" and "ls -l /" ... at this point, the 
description is so vague that I'm not really sure what else to ask for).

PS - Kernels have names like 2.6.4 and 2.4.x, not 2.64 and 2.4x.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
