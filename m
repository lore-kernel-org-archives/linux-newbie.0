From: Om Narasimhan <om.nara@bluehatsoft.com>
Subject: Re: linux process stack
Date: Mon, 17 May 2010 09:55:54 -0700
Message-ID: <AANLkTil9cZWKCwNcDB1Or_dtUCF76yJEE9GZxRF6XRoD@mail.gmail.com>
References: <AANLkTinGWVASo9TpS-zcfChdWziezqIZAbxpaxlXsYmw@mail.gmail.com>
	 <op.vcug3qed7p4s8u@pikus>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <op.vcug3qed7p4s8u@pikus>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="macroman"
To: =?ISO-8859-2?Q?Micha=B3_Nazarewicz?= <m.nazarewicz@samsung.com>
Cc: ratheesh k <ratheesh.ksz@gmail.com>, linux-newbie@vger.kernel.org

2010/5/17 Micha=C5=82 Nazarewicz <m.nazarewicz@samsung.com>:
> On Sat, 15 May 2010 11:11:09 +0200, ratheesh k <ratheesh.ksz@gmail.co=
m>
> wrote:
>>
>> 1. All process and kenel thread has their own task_struct  structure
>> and kernel mode stack . Kernel itself maintain its own stack .
>
> I'm not sure about kernel's own stack but otherwise it's correct.
If thread_info size is 8k, then kernel does not have a separate stack.
If it is 4k(1page), then kernel has exception and interrupt stacks,
which are not a part of thread_info.

>
>> 2. Whenever a process, say A, switch to kernel (on system call),
>> registers will be stored in its own kernel mode stack ?
>
> Yes.
>
>> 3. On interrupt, process  A's process context will be saved on
>> process A's own kernel mode stack?
>
> No.  On interrupt context is not switched.  Interrupt is run in
> a context of a task that was running so only registers are saved same
> as with system call.
Unless thread_info is 4k.
>
>> 4. Kernel thread will also use its own kenel mode stack on interrupt=
?
>
> As far as I know, kernel threads are in no way special from user task=
s
> in this regard.
>
>> 5. Where is the SP (stack pointer) is saved?  How it it retrieved ba=
ck?
>
> It is saved on the kernel mode stack and is retrieved from there.
Correct. But it can be more complex than that when exceptions occur
and exception handler is to be run in user mode.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
