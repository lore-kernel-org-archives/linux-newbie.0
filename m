From: Jim Nelson <james4765@verizon.net>
Subject: Re: clock cycles
Date: Tue, 12 Oct 2004 16:57:05 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <416C4521.9010207@verizon.net>
References: <20041012091552.11876.qmail@web52904.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041012091552.11876.qmail@web52904.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:

>well this is a very basic question but somewhat myu
>concept is not clear
>
>i am looking at system like before they were very slow
>but in last few years in systems clock cycle has
>increased at a rapid rate i.e system used t ocome with
>speed of 350MHz then it raised 700 MHz and slowly 1
>GHz now it is all in GHz
>
>what actually this speed does ? what happens by making
>this clock fast. does it say how many instruction it
>can have in a clock cycle or something
>
>  
>
Not exactly.  The processor speed is an indication of how fast it can 
carry out instructions, but on CISC (complex instruction set computing) 
computers (x86, x86-64) some instructions take more than one clock cycle 
to complete.  Intel has pushed the clock speed (as much for marketing as 
for any other reason - AMD produces processors that can do comparable 
work at a lower clock speed) just about as far as it can go - they are 
having severe problems with manufaturing the 3.6 GHz chips.

It is only an accurate speed comparison between chips in the same 
processor family - the last of the Pentium 3 chips were actually faster 
than the higher-clocked early Pentium 4 releases - and it's been that 
way ever since the 486 days.  The 486DX4-100 was faster and more 
reliable than the Pentium-60 and Pentium-66 - that first Pentium design 
was actually scrapped because it was plagued with unresolvable heat and 
performance issues.

Clock speed is an indication of instructions per second only on RISC 
(reduced instruction set computing) hardware (PPC, SPARC, MIPS), since 
the goal of RISC is to have all instructions execute in one clock 
cycle.  It makes the processor less difficult to design and manufature, 
since there is less silicon required for a smaller instruction set, but 
it makes the job of the compiler more difficult, since there are less 
instructions available to implement a program.

To be fair, a lot of the instructions in the x86 family involve legacy 
application support - the 8086 processor, the ancestor to all of the PC 
processors in existence today, was designed in the late 1970's - early 
1980's.  DOS has a lifespan only 10 years shorter than UNIX - and it's 
still in use in cash registers and industrial automation to this day, 
and modern processors still need to support those legacy applications.

So, processor speed is an indication of how fast the processor can do 
work, but it is only a fair comparison within a single processor 
family.  After all, my 67 MHz POWER1 RS-6000 will blow the doors off a 
Pentum-133 in byte-for-byte math work - it's a toy compared to modern 
processors, but the comparison carries through.  The POWER4 chip in the 
newest IBM pSeries is a rocketship - 1.9GHz dual-core chips that, 
processor-for-processor, can compete with the Opterons, and, especially 
in hard-core math, eat Xeons for lunch.

*sigh* if only there was enough room in my apartment for one of those 
babys -
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
