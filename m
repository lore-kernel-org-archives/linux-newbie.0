From: =?utf-8?B?TWljaGHFgiBOYXphcmV3aWN6?= <m.nazarewicz@samsung.com>
Subject: Re: C question
Date: Thu, 08 Oct 2009 10:48:01 +0200
Message-ID: <op.u1g32byw7p4s8u@localhost>
References: <7783925d0910071912u5e4f4a2au8442cb6537cd35ed@mail.gmail.com>
 <ea11fea30910071952x58720190r9fef930ff524c849@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <ea11fea30910071952x58720190r9fef930ff524c849@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="macroman"; format="flowed	delsp=yes"
To: Manish Katiyar <mkatiyar@gmail.com>, Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

> On Thu, Oct 8, 2009 at 7:42 AM, Rick Brown <rick.brown.3@gmail.com> w=
rote:
>> As far as I recall from K&R, isn't pointer arithmetic on a void
>> pointer banned? And any effort to do that results in an error -
>> because the compiler won't know by how much size to increment the
>> pointer for a statement like "ptr++"?

On Thu, 08 Oct 2009 04:52:31 +0200, Manish Katiyar <mkatiyar@gmail.com>=
 wrote:
> But in the program, you aren't actually trying to dereference the
> value. Just adding means it becomes normal arithmetic and that is why
> you get result as 1. You will see the error if you try to dereference
> it.

This comment is a bit misleading.  The standard does not define behavio=
ur
of pointer arithmetic on pointer to void.  What one need to realise is =
that
undefined behaviour means compiler's documentation may well define how =
such
a construct is evaluated and gcc (with proper options) decides to treat
pointer to void as if sizeof(void) =3D=3D 1.

So the thing it's true pointer arithmetic on a pointer to void is undef=
ined
behaviour as far as C standard is concerned however because Linux is
compiled with gcc kernel's developers tend to make use of gcc's extensi=
ons
and one of it is arithmetic on a pointer to void.

--=20
Best regards,                                           _     _
  .o. | Liege of Serenely Enlightened Majesty of       o' \,=3D./ `o
  ..o | Computer Science,  Micha=C5=82 "mina86" Nazarewicz     (o o)
  ooo +---<mina86@mina86.com>---<mina86@jabber.org>---ooO--(_)--Ooo--

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
