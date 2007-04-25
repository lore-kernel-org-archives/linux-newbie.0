From: John Aspinall <jgaspinall@rcn.com>
Subject: Re: Threading in linux
Date: Tue, 24 Apr 2007 20:48:51 -0400
Message-ID: <462EA573.8020509@rcn.com>
References: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>	 <8bd0f97a0704240308g6428f153n3bf4a2ae5518398a@mail.gmail.com> <7783925d0704240336i49e918dcm4d38e9bbc0310a39@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7783925d0704240336i49e918dcm4d38e9bbc0310a39@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Rick Brown wrote:
>
> Could you hint upon the kernel features required for NPTL? May be a link?

I know very little about this, but by coincidence (the application 
program I work on got a nice bugfix because of this) I can tell you one 
kernel difference on x86_64 kernels that support NPTL.

For NPTL on x86_64, the kernel reserves a register for thread-ID.  That 
register is swapped as part of the context switch the kernel does.  In 
the older LinuxThreads, thread-ID was established by looking up a stack 
address in a table.  In the LinuxThreads implementation, thread-ID was 
broken whenever a thread ran on the alt-stack.

John Aspinall
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
