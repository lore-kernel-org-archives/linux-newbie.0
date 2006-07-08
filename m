From: Robert Hancock <hancockr@shaw.ca>
Subject: Re: Commenting out out_of_memory() function in __alloc_pages()
Date: Sat, 08 Jul 2006 12:06:13 -0600
Message-ID: <44AFF415.2020305@shaw.ca>
References: <fa.AmXizdwfdZtqgKFSMcRp3U0QZXI@ifi.uio.no>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S964933AbWGHSGn@vger.kernel.org>
In-reply-to: <fa.AmXizdwfdZtqgKFSMcRp3U0QZXI@ifi.uio.no>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Abu M. Muttalib" <abum@aftek.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

Abu M. Muttalib wrote:
> Hi,
> 
> I am getting the Out of memory.
> 
> To circumvent the problem, I have commented the call to "out_of_memory(),
> and replaced "goto restart" with "goto nopage".
> 
> At "nopage:" lable I have added a call to "schedule()" and then "return
> NULL" after "schedule()".

Bad idea - in the configuration you have, the system may need the 
out-of-memory killer to free up memory, otherwise the system can 
deadlock due to all memory being exhausted.

> 
> I tried the modified kernel with a test application, the test application is
> mallocing memory in a loop. Unlike as expected the process gets killed. On
> second run of the same application I am getting the page allocation failure
> as expected but subsequently the system hangs.
> 
> I am attaching the test application and the log herewith.
> 
> I am getting this exception with kernel 2.6.13. With kernel
> 2.4.19-rmka7-pxa1 there was no problem.
> 
> Why its so? What can I do to alleviate the OOM problem?

Please see Documentation/vm/overcommit-accounting in the kernel source tree.

-- 
Robert Hancock      Saskatoon, SK, Canada
To email, remove "nospam" from hancockr@nospamshaw.ca
Home Page: http://www.roberthancock.com/
