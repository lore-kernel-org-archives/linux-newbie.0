From: Tzahi Fadida <Tzahi.ML2@gmail.com>
Subject: Re: Need for a new spinlock API?
Date: Thu, 22 Mar 2007 01:07:35 +0200
Message-ID: <200703220107.35575.Tzahi.ML2__3608.72123060307$1174520748$gmane$org@gmail.com>
References: <b115cb5f0703202053n1b8bfd4bo39cd046e04fb15a2@mail.gmail.com> <623132dc0703211159n3781bfbdu6ffd43743a6fe377@mail.gmail.com> <1174511009.1158.150.camel@laptopd505.fenrus.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1174511009.1158.150.camel@laptopd505.fenrus.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: kernelnewbies@nl.linux.org
Cc: Arjan van de Ven <arjan@infradead.org>, anubhav rakshit <anubhavrocks@gmail.com>, Rajat Jain <rajat.noida.india@gmail.com>, newbie <linux-newbie@vger.kernel.org>

On Wednesday 21 March 2007 23:03, Arjan van de Ven wrote:
> On Thu, 2007-03-22 at 00:29 +0530, anubhav rakshit wrote:
> > On 3/21/07, Arjan van de Ven <arjan@infradead.org> wrote:
> > > On Wed, 2007-03-21 at 09:23 +0530, Rajat Jain wrote:
> > > > Hi,
> > > >
> > > > We often have a case where a driver wants to access its data
> > > > structure in process context as well as in interrupt context (i=
n its
> > > > ISR). In such scenarios, we generally use spin_lock_irqsave() t=
o grab
> > > > the lock as well as disable all the local interrupts. AFAIK,
> > > > disabling of local interrupts is required so as to avoid runnin=
g your
> > > > ISR (which needs the lock) while process context is holding the=
 lock.
> > > > However, this also disables any other ISRs (which DO NOT need t=
he
> > > > lock) on the local processor.
> > > >
> > > > Isn't this sub-optimal? Shouldn't there be a finer grained lock=
ing?
> > >
> > > actually it's optimal.
> >
> > how is it optimal,when all  you require is to disable just one part=
icular
> > IRQ?
>
> because if you don't disable all you increase hold times, which
> increases contention. Contention is BAD.

Newbie advice:
Well, looking at LDD3 -> interrupt handling, there are a few functions
void disable_irq(int irq);
void disable_irq_nosync(int irq);
void enable_irq(int irq);

But you cannot use them if you share an irq and your hardware must not=20
generate another interrupt while you are handling this one. This is usu=
ally=20
the case (i think) since many devices have some kind of "handled" regis=
ter.

--=20
Regards,
=A0=A0=A0=A0=A0=A0=A0=A0Tzahi.
--
Tzahi Fadida
Blog: http://tzahi.blogsite.org | Home Site: http://tzahi.webhop.info
WARNING TO SPAMMERS: =A0see at=20
http://members.lycos.co.uk/my2nis/spamwarning.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
