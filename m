From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Process table dump
Date: Thu, 26 Feb 2004 21:13:44 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200402262113.44025.pa3gcu@zeelandnet.nl>
References: <6CE6A442029B3347890ED9FCA94FAE0701EEAD38@nsxmail.netscout.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6CE6A442029B3347890ED9FCA94FAE0701EEAD38@nsxmail.netscout.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Gosselin, Mark" <gosselinm@netscout.com>, "Linux Newbie (E-mail)" <linux-newbie@vger.kernel.org>

On Thursday 26 February 2004 16:20, Gosselin, Mark wrote:
> Hi Everyone,
>
> I'm working on a problem we're seeing here running a program called
> 'snort'. It appears that when the is running, it starts to consume large
> amounts of memory. When the process is killed, the memory, which should be
> released, is not. My theory is that the process still hangs around in some
> process table or soething, although it does not show as a zombie process.

It would be more courtious to say;

I am using slackware 9.1 (full install) with kernel xx.xx.xx
Replace with your own details of course.
options used when starting 'snort' (as there are SO MANY).
AND the version of snort used.
'snort -V'

I have snort installed and do not see anything like what you describe.

> Can someone tell me the best way to dump any process table so I can verify
> that this is the case??

Tell us just what you have, as per above example, how you start snort, with 
what options, show us output of free before and after snort is used and 
possably the output of top during snort's use. (just the line concerning 
snort will do, + cpu usage).

>
> Thanks,
> Mark Gosselin
> NetScout Systems

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
