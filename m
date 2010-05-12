From: =?utf-8?B?TWljaGHFgiBOYXphcmV3aWN6?= <m.nazarewicz@samsung.com>
Subject: Re: wake_up_interruptible
Date: Wed, 12 May 2010 09:35:09 +0200
Message-ID: <op.vck0ovk47p4s8u@pikus>
References: <25990.28429.qm@web63403.mail.re1.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <25990.28429.qm@web63403.mail.re1.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="macroman"; format="flowed	delsp=yes"
To: Fundu <fundu_1999@yahoo.com>, linux-newbie@vger.kernel.org

On Tue, 11 May 2010 22:32:46 +0200, Fundu <fundu_1999@yahoo.com> wrote:
> what happen when you call wake_up_interruptible and there are no task=
 waiting on that wait queue right then.
>
> But say after some time a task comes along and start waiting (after t=
he wake_up_interruptible is called).
> Would that task be not wait at all because there was a pending wake u=
p

It will be waiting for another wake up.

> What i'm looking for is a mechanism where by any old wake if not acte=
d upon are lost.

Semahore may be a good option.

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
