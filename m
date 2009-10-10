From: vinit dhatrak <vinit.dhatrak@gmail.com>
Subject: Re: preempt_disable() as synchronization tool
Date: Sat, 10 Oct 2009 22:37:14 +0530
Message-ID: <edf0f34e0910101007jd9faeddhec53b9e6403c09b0@mail.gmail.com>
References: <292693080910082043v74114d6dvbe3c39f166a59e1b@mail.gmail.com>
	 <edf0f34e0910091900v305ec56u44913503cc8689dd@mail.gmail.com>
	 <1255150012.7925.6.camel@linux-k65f.site>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=5GTn75BZlS0TATlk+b3jRhp1UhEs59zAty/l7MwQeh4=;
        b=Hn5pOmgPvTek0/gGNRxd2Nv6+Xw7hN9Vu/kRBKL8dXGdRfy0XYFKRYiQPLSpVUa4Yp
         TlSAAWyvjVoNqvNy2rJ3Ec8oMCDvemKd7J1FnCudrknrGpIxJfmmRFXjR3eynY/3cSeK
         au11yOFfiGxpfs1aLRiF/wpQINIiFixF8PrKY=
In-Reply-To: <1255150012.7925.6.camel@linux-k65f.site>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: askb <askb23@gmail.com>
Cc: Daniel Rodrick <daniel.rodrick@gmail.com>, Kernel Newbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

On Sat, Oct 10, 2009 at 10:16 AM, askb <askb23@gmail.com> wrote:
>
>> >
>> > Lastly, is it allowable to schedule / sleep immediately after a call
>> > to preempt_disable()?
>>
>> No I guess kernel will panic with some error like , "scheduling while
>> in Atomic Context".
>
> Sorry, I somehow missed out reading this. Can you let me know why its
> not possible to schedule within preempt_disable() and preempt_enable()?
> >From the code the schedule functions starts by disabling preemption?
> Thanks in advance. - Anil
>
>

Because, preempt_disable increments the preempt count and before
scheduling the next task, schedule() function checks for the preempt
count for the previous task. If its greater than 0 then it will throw
an error "BUG: scheduling while atomic:"

-Vinit
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
