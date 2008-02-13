From: Brandon Philips <brandon@ifup.org>
Subject: Re: Copy-on-Write
Date: Tue, 12 Feb 2008 21:44:11 -0800
Message-ID: <20080213054411.GA30574@plankton.ifup.org>
References: <7783925d0802052149g125a6497rabf866130edbaf78@mail.gmail.com> <f284c33d0802070730s7dcc2735o77fe1d655e4220cc@mail.gmail.com> <20080207234612.GB22488@plankton.ifup.org> <5f9618380802071809v24f2be47xc9aea8664a8f8488@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5f9618380802071809v24f2be47xc9aea8664a8f8488@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?iso-8859-1?Q?Ren=EA?= <rene@grad.icmc.usp.br>
Cc: linux-newbie@vger.kernel.org

On 00:09 Fri 08 Feb 2008, Ren=EA wrote:
> What kernel version did you get this code?

It exists in 2.6.23+ IIRC.  Poke around at the git-log for
kernel/sched.c

Cheers,

	Brandon

> On Feb 7, 2008 9:46 PM, Brandon Philips <brandon@ifup.org> wrote:
> > On 22:30 Thu 07 Feb 2008, Mulyadi Santosa wrote:
> > > On Feb 6, 2008 12:49 PM, Rick Brown <rick.brown.3@gmail.com> wrot=
e:
> > > > So in linux, is a child run first or the parent? Can we rely on=
 this
> > > > information?
> > >
> > > Hm, this might be the answer:
> > > http://lxr.linux.no/linux/kernel/sched.c#L1663
> > >
> > > it says:
> > > unsigned int __read_mostly sysctl_sched_child_runs_first =3D 1;
> > >
> > > and I guess it has relationship with certain /proc or /sys entry.
> >
> >  $ sysctl -w kernel.sched_child_runs_first=3D0
> >
> > Also available here: /proc/sys/kernel/sched_child_runs_first
> >
> > Cheers,
> >
> >        Brandon
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
