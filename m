From: Ray Olszewski <ray@comarre.com>
Subject: Re: debugging a Segmentation fault
Date: Thu, 07 Oct 2004 00:05:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041007000122.0207f680@celine>
References: <Pine.LNX.4.44.0410062117530.13932-100000@legolas.personal.
 engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0410062117530.13932-100000@legolas.personal.
 engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:43 AM 10/7/2004 -0400, Karthik Vishwanath wrote:
>Hello,
>
>I develop a monte-carlo code written in standard C. I recently decided to
>"add features" to the previous stable version and now the code aborts with
>a Segmentation fault. I suspect the code is executing different parts of
>the code before crashing, on different runs (and therefore crashing at
>different points?).  There is no core dumped either.
>
>Can I discover which source-line caused the program to abort (or get
>information about which function it was, etc.), or trap the signal
>within the code and print out details -- how?
>
>Please excuse me if this post is off-topic for this list -- can some one
>please point me to a list where such questions are not, otherwise/as well?

The usual tools for debugging Linux/Unix C and C++ programs are gdb and 
strace. Do you need more specific direction than that? I haven't used gdb 
all the much myself, bu I have used strace to track down segfaults in the 
past ... messy output, hard to read, but tells you just about everything 
the program is doing.

You do want to compile the program with debugging support in ... basically, 
that means maintaining the symbol table (not "stripping" the executable), 
which I believe is the default behavior of gcc anyway.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
