From: Joe Damato <ice799@gmail.com>
Subject: Re: [PATCH 00/12] x86: Cleanup idt, gdt/ldt/tss structs
Date: Mon, 27 Oct 2008 14:15:51 -0700
Message-ID: <49062F87.4060307@gmail.com>
References: <1224904532-9586-1-git-send-email-ice799@gmail.com> <20081027105559.GA13895@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=CjZxIxgbYkNnIR4CyBoxdqxagnkpAPd96vuRgiBMAPc=;
        b=NPa5/fksrWvbugU8htq22TDjvRrUZrAQZciBv+BVU4tqOUZUTAT9GF9kghSQxA6TmG
         b+LVnmqYDyA/VHVqj8JBG/zUkdus9jvkLPTRSKisaJZ0ZYibtmDJ04fMU4yUqLjT1Z4Q
         3DF7tduEuvZZdhN/UjdVvLsvkgqtlCjoUo13E=
In-Reply-To: <20081027105559.GA13895@elte.hu>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ingo Molnar <mingo@elte.hu>
Cc: linux-x86_64@vger.kernel.org, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, Jeremy Fitzhardinge <jeremy@goop.org>, Vegard Nossum <vegard.nossum@gmail.com>

Ingo Molnar wrote:
> * Joe Damato <ice799@gmail.com> wrote:
>
>   
>> Hi -
>>
>> This is my first submission to the kernel, so (beware!) please let 
>> me know if I can make any improvements on these patches.
>>
>> I attempted to clean up the x86 structs for 32bit cpus that store 
>> IDT/LDT/GDT data by removing the fields labeled "a" and "b" in favor 
>> of more descriptive field names. I added some macros and went 
>> through the kernel cleaning up the various places where "a" and "b" 
>> were used.
>>
>> I tried building my kernel with my .config and then also did a make 
>> allyesconfig build to help ensure I found everything that was using 
>> the old structure names. I also tried a few grep patterns. Hopefully 
>> I got everyone out.
>>     
>
> hm, a couple of comments.
>   

Thanks for your very useful comments and feedback. I've included a few 
questions/comments below.

> Firstly, a patch logistical one: we moved all the x86 header files 
> from include/asm-x86/ to arch/x86/include/asm/ in v2.6.28-rc1 - your 
> patchset is against an older kernel. Should be easy enough to fix up.
>   

Ah, sorry about that. Should be easy enough to fix with git.

> Secondly, i'm not that convinced about the expanded use of bitfields 
> that your patchset implements. Their semantics are notoriously fragile 
> so we'd rather get _away_ from them, not expand them.

Out of curiosity what exactly do you mean when you say "fragile"? Sorry 
for my ignorance here...

>  _But_, this area 
> could be cleaned up some more - just in a different way. I'd suggest 
> you introduce field accessor inline functions to descriptors.
>
> I.e. instead of:
>
>         if (!idt_present(cpu->arch.idt[num].a, cpu->arch.idt[num].b))
>
> we could do a more compact form:
>
> 	if (!idt_present(cpu->arch.idt + num))
>
> and get away from the open-coded use of desc->a and desc->b fields, 
> with proper inlined helpers.
>   

That sounds reasonable, I will play around, write a few, and probably 
resubmit in a few days.

> Small detail, the syntactic form you chose:
>
> +       if (!cpu->arch.idt[num].p)
>
> is not very readable because it's not obvious at first sight that ".p" 
> intends to mean "present bit". If then idt[num].present would have 
> been the better choice - but it's even better to not do bitfields at 
> all but an idt_present(desc *) helper inline function.
>
>   

OK, I'll try to use more descriptive names. As hpa pointed out in his 
email, 'p' is the name of the field in the intel x86 documentation. 
That's why I chose that, but I agree it isn't particularly clear.

> Thirdly, as you can see it form my comments, this is not something 
> that is really a best choice for a newbie, as it's a wide patchset 
> that impacts a lot of critical code, wich has very high quality 
> requirements.
>
> But if you dont mind having to go through a couple of iterations to 
> get it right (with the inevitable feeling of ftrustration about such a 
> difficult process) then sure, feel free to work on this!
>   

I will probably continue to play around with it and try to resubmit 
something in a few days that incorporates your feedback. I've done some 
x86 stuff before (never with linux, though) and I enjoy crawling though 
the intel docs and pushing bits around =].


Thanks again for the feedback,
Joe
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
