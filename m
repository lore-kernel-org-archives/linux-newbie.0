From: Ray Olszewski <ray@comarre.com>
Subject: Re: Process table dump
Date: Thu, 26 Feb 2004 07:50:36 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040226073948.0200b548@celine>
References: <6CE6A442029B3347890ED9FCA94FAE0701EEAD38@nsxmail.netscout.
 com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6CE6A442029B3347890ED9FCA94FAE0701EEAD38@nsxmail.netscout.
 com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:20 AM 2/26/2004 -0500, Gosselin, Mark wrote:
>Hi Everyone,
>
>I'm working on a problem we're seeing here running a program called 
>'snort'. It appears that when
>the is running, it starts to consume large amounts of memory. When the 
>process is killed, the
>memory, which should be released, is not. My theory is that the process 
>still hangs around in
>some process table or soething, although it does not show as a zombie process.
>
>Can someone tell me the best way to dump any process table so I can verify 
>that this is the case??

I assume you already know about the "ps" command. If not, that's what you 
want to use; probably as "ps aux".

If you are not satisfied with any of the variants produced by the "ps" 
command, you might want to look at the kernel's process records directly, 
by way of the /proc filesystem interface. There is a pseudo-directory entry 
there for each active process (using the pid as directory name).

But before you go too far down that road, you might want to post a followup 
here detailing the evidence you are seeing. I regularly see people, on this 
list and on others, misinterpret memory-usage reports to infer the presence 
of memory leaks where none exist. For example, if you are using "free" to 
check memory use, you should be using the second line of its output, not 
its first. And if you are using "top" ... don't; use "free" instead. As 
reported by "top" or the first line of "free", memory usage on any Linux 
system will always increase until almost 100% of real (not swap) memory is 
"in use" ... but that's just kernel buffering at work, not a real tying up 
of RAM, and does not indicate a system or application problem.







-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
