From: =?utf-8?B?TWljaGHFgiBOYXphcmV3aWN6?= <m.nazarewicz@samsung.com>
Subject: Re: mmap confusion
Date: Mon, 20 Sep 2010 11:14:21 +0200
Message-ID: <op.vjbql71x7p4s8u@pikus>
References: <220544EE49E5824C9DE242B5ACE58C300930E512@EMBX01-BNG.jnpr.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <220544EE49E5824C9DE242B5ACE58C300930E512@EMBX01-BNG.jnpr.net>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="macroman"; format="flowed	delsp=yes"
To: "kernelnewbies@nl.linux.org" <kernelnewbies@nl.linux.org>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, Rajat Jain <rajatjain@juniper.net>
Cc: "rajat.noida.india@gmail.com" <rajat.noida.india@gmail.com>

On Mon, 20 Sep 2010 07:33:05 +0200, Rajat Jain <rajatjain@juniper.net> =
wrote:

> 1) If the backing file is /dev/mem or a device file, then at the time=
 of mmap(),
> the page table entries / TLB entries are set up such that the virtual=
 address in
> the user space, maps to the actual physical address desired. And the =
thus job
> is done. This case is clear.

Page table entries don't need to be set immediately but essentially tha=
t is the
case.

> 2) The other case is that when the file is actually a datafile presen=
t in a file
> system lets say on a SATA disk. Now, for each load / store in the app=
lication,
> some driver code needs to trigger that will program the SATA controll=
er registers
> and do n number of thinks to initiate the diska read / write transact=
ion. How is
> this achieved? Because application is not making any System calls. It=
s just having
> load / store instructions.

When a "normal" file is mapped no page entries are set.  As an effect, =
when user
space refers to the mapped area a page fault is triggered.  This is han=
dled by
kernel which reads a page from the disk and adds a proper page table en=
try.

On writes, such a page is marked as dirty (either CPU supports that dir=
ectly,
or kernel simulates it by setting page read-only so that on write an pa=
ge fault
is generated again).  When process terminates all dirty pages are writt=
en back to
disk.

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
