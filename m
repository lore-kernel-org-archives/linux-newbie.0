From: Simon Valiquette <v.simon@ieee.org>
Subject: Re: Query regarding Copy-on-write
Date: Sat, 20 Nov 2004 08:59:03 -0500
Message-ID: <419F4DA7.1070606@ieee.org>
References: <1100947162.4038.43.camel@myLinux>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <1100947162.4038.43.camel@myLinux>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

Jagadeesh Bhaskar P a =E9crit :
> Hi,
>=20
>  When a process forks, every resource of the parent, including the
> virtual memory is copied to the child process. The copying of VM uses
> copy-on-write(COW). I know that COW comes when a write request comes,
> and then the copy is made. Now my query follows:
>=20
> How will the copy be distributed.

   If a child modify a page that is shared with his parent, this page=20
will be copied to a new page.  Then his page table will be modified to=20
point to this new page and reloaded in the MMU.  Only then the running=20
process will normally modify his own copy of that page.

   It works the same way if it is the parent that modify the page.=20
Otherwise we would have a problem if the parent have many childs. It=20
also simplify things a lot for SMP systems.


   Be carefull: "page" and "page table" are 2 very different things.

   "Page table" will point to a page struct
   "page" is a struct that point to a physical page, or to a swap area=20
(if I remember well).
   Virtual memory is the address seen by the program.  Two identical=20
virtual adresses will normally point to different physical locations.


   Note that each process have his own copy of his memory page table=20
since the fork.  And the page table will typically point to many memory=
=20
pages.

   The shared pages pointed by the 2 page tables are only thoses where=20
the data are still unmodified since the fork.


 > Whether giving the child process a new
 > copy of VM be permanent or whether they will be merged anywhere?

   Its permanent at the page level.  Anyway, once modified, it is very=20
unlikely that the page will ever be identical again.

   Also, they never really shared the same virtual memory space since=20
they each have their own page tables.  Their pointers use the same=20
virtual addresses, but they are resolved to the same physical pages onl=
y=20
for the pages that are still identicals.


   I'm not sure if you understand properly how the virtual memory is=20
working at the processor level, but it is very important if you want to=
=20
understand how COW is working.

> And
> shouldn't the operations/updations by one process be visible to the
> other which inherited the copy of the same VM?
>=20

   No, it must be completelly transparent for the process and they=20
should not be able to see the modifications (otherwise we have a=20
security bug).

   You must know that the processor use the MMU to resolve the memory=20
page physical address.  Since each process have his own memory table, a=
=20
pointer to an identical virtual adress usually point to a different=20
physical address.  So it means that once a shared page is copied and=20
unlinked by modifying the page table of one of the process, the same=20
pointer with the same pointing adress will now point to 2 different=20
physical memory location.  All of that magic is done thanks to the MMU.


   I don't know if the kernel is doing COW at all in the case of a=20
MMU-less processor (usually a microcontroler).

> How can this work? Can someone please help me on this regard?
>=20

   I think I gave a good overview of the question.  I tried to keep=20
things as simple as I could, at the cost of not giving an exact=20
description of how Linux handle COW.  For example, there is in fact 3=20
levels of page table indirections in Linux, but it was not necessary to=
=20
understand COW.


Simon Valiquette

---
Often, the source contains important documentation
  - Slackware FAQ, 1993


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
