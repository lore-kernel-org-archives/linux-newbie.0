From: Jim Nelson <james4765@verizon.net>
Subject: Re: Fwd: Re: clock cycles
Date: Wed, 13 Oct 2004 16:55:33 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <416D9645.6080707@verizon.net>
References: <20041013131206.67214.qmail@web52902.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041013131206.67214.qmail@web52902.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>


>First of all Thanks a lot for help
>
>see inline
>
> --- Jim Nelson <james4765@verizon.net> wrote: 
>  
>
>>Not exactly.  The processor speed is an indication
>>of how fast it can 
>>carry out instructions, but on CISC (complex
>>instruction set computing) 
>>computers (x86, x86-64) some instructions take more
>>than one clock cycle 
>>to complete.  Intel has pushed the clock speed (as
>>much for marketing as 
>>for any other reason - AMD produces processors that
>>can do comparable 
>>work at a lower clock speed) 
>>    
>>
>
>Sorry could not understand this. What is making AMD
>processors work faster than Intel processors at a
>lower clock cycle. also i want to know how to prove
>this that AMD 64 bit processors will work faster than
>Intel 32 bit processor even if they have clock cycles
>like 3.6 GHz....
>
>  
>

Say it takes an Intel processor 5 cycles to perform an instruction.  If 
AMD figures out how to do the same thing in 4 cycles, the Intel 
processor would have to be 20% faster in clock speed to keep up with the 
AMD. 

There are benchmarks done by some reputable companies that have proven 
some performance gains.  To be fair, the Intel processors can beat the 
Opterons in some situations, but they pay for it in others.  Processor 
design is one of those areas that involve trade-offs - a good processor 
design for one situation will be beat by another processor design made 
for a different situation.

Best way to prove the performance gains on a 64-bit platform - 
benchmarks.  There are plenty out there - both the software and the results.

>>just about as far as it
>>can go - they are 
>>having severe problems with manufaturing the 3.6 GHz
>>chips.
>>It is only an accurate speed comparison between
>>chips in the same 
>>processor family - the last of the Pentium 3 chips
>>were actually faster 
>>than the higher-clocked early Pentium 4 releases -
>>and it's been that 
>>    
>>
>
>Hows that? /is it due to higher clock cycles in P3 and
>less no. of transistor in early P4?
>
>  
>

Part of it had to do with larger L2 cache on the last P3's.  Part of it 
was just that the first P4's were not all that good.  Par for the course 
for Intel - the Itanium 1 chip was pretty much just an 
engineering/developement prototype - but the Itanium 2 is a good, if 
rather expensive, processor, and the Itanium 3 promises to be pretty 
damn good, if Intel's track record stays firm.

>Well definately PowerPC's are faster than Intel. i do
>agree. Some what i feel a day will come when CISC
>processors will find difficult to servive...
>
>  
>

All modern CISC processors have a RISC core.  There is an interpreter 
built in to the processor that breaks down the instruction set into the 
simpler language of the processor core.  We could get rid of all that 
CISC crap if it wasn't for legacy applications - that's why PC's are 
pretty much the only holdout in the RISC/CISC wars, since there's a 
whole bunch of binary-only x86-only Microsoft-only applications out 
there that too many companies use.  So long as there are proprietary 
programs for a Microsoft platform, there will be CISC processors.

>Thanks again
>
>ANkit Jain
>
>
>________________________________________________________________________
>Yahoo! Messenger - Communicate instantly..."Ping" 
>your friends today! Download Messenger Now 
>http://uk.messenger.yahoo.com/download/index.html
>  
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
