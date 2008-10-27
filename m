From: Jeremy Fitzhardinge <jeremy@goop.org>
Subject: Re: [PATCH 00/12] x86: Cleanup idt, gdt/ldt/tss structs
Date: Tue, 28 Oct 2008 10:02:25 +1100
Message-ID: <49064881.9040207@goop.org>
References: <1224904532-9586-1-git-send-email-ice799@gmail.com> <20081027105559.GA13895@elte.hu> <49062F87.4060307@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <49062F87.4060307@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Joe Damato <ice799@gmail.com>
Cc: Ingo Molnar <mingo@elte.hu>, linux-x86_64@vger.kernel.org, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, Vegard Nossum <vegard.nossum@gmail.com>

Joe Damato wrote:
>> Small detail, the syntactic form you chose:
>>
>> +       if (!cpu->arch.idt[num].p)
>>
>> is not very readable because it's not obvious at first sight that 
>> ".p" intends to mean "present bit". If then idt[num].present would 
>> have been the better choice - but it's even better to not do 
>> bitfields at all but an idt_present(desc *) helper inline function.
>>
>>   
>
> OK, I'll try to use more descriptive names. As hpa pointed out in his 
> email, 'p' is the name of the field in the intel x86 documentation. 
> That's why I chose that, but I agree it isn't particularly clear.

Using bitfields would be a lot more appealing if the x86 design weren't 
so batshit insane.  Given that the addresses and limits are split of 
multiple bitfields, you need to have a set of accessors for those at 
least.  If you're going to do that, it might be worth having them for 
all the fields, at least for consistency.  Perhaps this would be too 
ugly and clumsy, but there isn't much code which really does anything 
with descriptors in detail.

    J
>
> Thanks again for the feedback,
> Joe

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
