From: =?utf-8?B?TWljaGHFgiBOYXphcmV3aWN6?= <m.nazarewicz@samsung.com>
Subject: Re: linux process stack
Date: Mon, 17 May 2010 12:08:04 +0200
Message-ID: <op.vcug3qed7p4s8u@pikus>
References: <AANLkTinGWVASo9TpS-zcfChdWziezqIZAbxpaxlXsYmw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <AANLkTinGWVASo9TpS-zcfChdWziezqIZAbxpaxlXsYmw@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="macroman"; format="flowed	delsp=yes"
To: ratheesh k <ratheesh.ksz@gmail.com>, linux-newbie@vger.kernel.org

On Sat, 15 May 2010 11:11:09 +0200, ratheesh k <ratheesh.ksz@gmail.com>=
 wrote:
> 1. All process and kenel thread has their own task_struct  structure
> and kernel mode stack . Kernel itself maintain its own stack .

I'm not sure about kernel's own stack but otherwise it's correct.

> 2. Whenever a process, say A, switch to kernel (on system call),
> registers will be stored in its own kernel mode stack ?

Yes.

> 3. On interrupt, process  A's process context will be saved on
> process A's own kernel mode stack?

No.  On interrupt context is not switched.  Interrupt is run in
a context of a task that was running so only registers are saved same
as with system call.

> 4. Kernel thread will also use its own kenel mode stack on interrupt?

As far as I know, kernel threads are in no way special from user tasks
in this regard.

> 5. Where is the SP (stack pointer) is saved?  How it it retrieved bac=
k?

It is saved on the kernel mode stack and is retrieved from there.

Note also that this may vary from architecture to architecture and
I'm not an expert.

--=20
Best regards,                                        _     _
| Humble Liege of Serenely Enlightened Majesty of  o' \,=3D./ `o
| Computer Science,  Micha=C5=82 "mina86" Nazarewicz       (o o)
+----[mina86*mina86.com]---[mina86*jabber.org]----ooO--(_)--Ooo--
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
