From: Heimo Claasen <hammer@revobild.net>
Subject: Re: File Management
Date: 20 Sep 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209200556.g8K5uPv06117@ev6.be.wanadoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="macroman"
To: linux-newbie@vger.kernel.org

Indeed I do/did not really understand the effects of "make clean" and
"make distclean", Richard (this _is_ a newbie list, isn't it?).
Your explanation helps a bit, thanks.

Thus "make distclean" would do the job like "uninstall", if I
understand that right.
And it depends on the individual programs/source-packages which one
would work, right ?

Now, on this other aspect of weeding out things that had been
installed not by (what I would remember as "admin" or rather, root
user) some specific intention or attention with installing/compiling
one specific source "tar(gz)"-pack; but rather of what has been placed
there when a "distro=8E" more or less automatically had installed say,
"groups" of packages, e.g. "text tools".

Sure the package manager of _that_ distro ould be of help for
uninstalling too. That works simply enopugh with some "evident"
packages - e.g., if you use one mailer and like it, it's evident that
other mailer-packages could go.

That hoever, is different with the (sometimes quite large) "libxxxx"
packages, or some rather "inevident" named things.

Not being a programmer, nor a systems professional, it is not at all
evident, from the (sometimes arcane) short desciptions those package
managing tools offer, to conclude to the package's meaning and
usefulness or even necessity.

"ldd" there, could give a hint - though, oh! sure!, only if all those
"ldd" outputs then are cross-checked. Which is what I meant with "a
hassle", doing exactly that, manually.<bg>

But couldn't there be some kind of "sorting" prog/algorythm (please
take "sorting" as quite large a term) which could do just that ?

There should be, or at least it's thinkable to be do-able, a "listing"
of "non-shared", so to say "singular" files (or even packages), at whic=
h
you could then look at more in detail in order to decide if to delete
them or not.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-09-20
The WebPlace of ReRead - and much to read  =3D=3D>  http://www.revobild=
=2Enet

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
