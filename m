From: Ray Olszewski <ray@comarre.com>
Subject: Re: File Management
Date: Thu, 19 Sep 2002 23:28:23 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020919230550.024a6be0@celine>
References: <200209200556.g8K5uPv06117@ev6.be.wanadoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209200556.g8K5uPv06117@ev6.be.wanadoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"; 
To: Heimo Claasen <hammer@revobild.net>, linux-newbie@vger.kernel.org

I'm having a bit of trouble following your question, so let me first tr=
y to=20
restate it, so we can see if I 'm getting it right.

Right now, the "ldd" program is able to examine a single executable and=
=20
determine which shared libraries it depends on.

I believe you are suggesting that it would be desirable to have an=20
application that works like this:

         1. Do an "ldd" examination of every executable on the system.
         2. From the output of (1), compile a union list of all shared=20
libraries currently used on the system.
         3. Compare (2) to the actual collection of shared libraries on=
 the=20
system.
         4. (Optionally) remove any shared libraries that are not used =
by=20
any executable present.

This is an interesting idea, and it is in principle doable. As far as I=
=20
know, no one has actually done it; the most likely candidate for someon=
e to=20
be interested in doing this is one of the big Linux distributors (who m=
ight=20
find it most useful to tie it in with its own package-management system=
, as=20
a way to gain a competitive edge). Actually, any decent package-managem=
ent=20
system can do this much more easily, by extending a bit the way it hand=
les=20
dependencies (though there are "gotcha" risks with this approach if the=
=20
system contains *any* applications installed outside the package manage=
r);=20
I think this is how Windows handles its analogous problem with managing=
 DLLs.

Whichever way it were done, getting the details right would be a good b=
it=20
of work. And in practice, though the idea is interesting, I doubt the=20
actual utility of the application. The core set of .so libraries is pre=
tty=20
stable, and the few specialized ones tend to be associated with=20
sufficiently specialized sorts of apps that someone who installs them w=
ould=20
know what was there.

These comments only address your concern about "the (sometimes quite la=
rge)=20
"libxxxx" packages". You also worry about "some rather "inevident" name=
d=20
things". For these, the straightforward way to learn what the command d=
oes=20
is to consult its man page (the usual form of this suggestion is the=20
familiar "RTFM", but I'm far too polite to give you advice in that form=
) or=20
consult any of the many beginner's guides that exist in electronic and =
book=20
form. Once you know what a command does, you can decide whether or not =
to=20
leave it on the system.

In practice, distribution bloat has become something of a problem in Li=
nux.=20
Naive installs of every distro I've looked at recently (including Debia=
n,=20
alas) tend to lard up a system with a lot of unneeded stuff (not in the=
=20
form of surplus .so libraries, though -- this is really an applications=
=20
issue, not a shared-library problem). Today's bigger hard disks make it=
=20
less costly to put up with the bloat, but a more interactive install sy=
stem=20
(Slackware used to have a nice one in the old days, around Slack 3.2 or=
 so;=20
any chance it still does?) that made it easier to fine-tune an install=20
would be a help.

At , Heimo Claasen wrote:
>Indeed I do/did not really understand the effects of "make clean" and
>"make distclean", Richard (this _is_ a newbie list, isn't it?).
>Your explanation helps a bit, thanks.
>
>Thus "make distclean" would do the job like "uninstall", if I
>understand that right.
>And it depends on the individual programs/source-packages which one
>would work, right ?
>
>Now, on this other aspect of weeding out things that had been
>installed not by (what I would remember as "admin" or rather, root
>user) some specific intention or attention with installing/compiling
>one specific source "tar(gz)"-pack; but rather of what has been placed
>there when a "distro=8E" more or less automatically had installed say,
>"groups" of packages, e.g. "text tools".
>
>Sure the package manager of _that_ distro ould be of help for
>uninstalling too. That works simply enopugh with some "evident"
>packages - e.g., if you use one mailer and like it, it's evident that
>other mailer-packages could go.
>
>That hoever, is different with the (sometimes quite large) "libxxxx"
>packages, or some rather "inevident" named things.
>
>Not being a programmer, nor a systems professional, it is not at all
>evident, from the (sometimes arcane) short desciptions those package
>managing tools offer, to conclude to the package's meaning and
>usefulness or even necessity.
>
>"ldd" there, could give a hint - though, oh! sure!, only if all those
>"ldd" outputs then are cross-checked. Which is what I meant with "a
>hassle", doing exactly that, manually.<bg>
>
>But couldn't there be some kind of "sorting" prog/algorythm (please
>take "sorting" as quite large a term) which could do just that ?
>
>There should be, or at least it's thinkable to be do-able, a "listing"
>of "non-shared", so to say "singular" files (or even packages), at whi=
ch
>you could then look at more in detail in order to decide if to delete
>them or not.



--
-------------------------------------------"Never tell me the odds!"---=
-----
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-----------------------------------------------------------------------=
--------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
