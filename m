From: Heimo Claasen <hammer@revobild.net>
Subject: Re: further debian questions
Date: 26 Dec 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212260504.gBQ53pSP012114@pyxis.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I feel quite confused when reading this:

> The main lesson is to stick to a single archive ... even mixing Woody and
> Sid packages is not for the inexperienced.

What, then, would be the use of "upgrades" at all" ?

And the conclusion would not be that general for installing packages
from "earlier" distributions (or their versions) either - I regularly
install a quite "old" application, which is rather demanding in its X
(server) use, with all sorts of "modern" distributions and hitherto
never had a problem with it.

The reason for that "main lesson" given then, seems rather questionable:
> Actually, missing dependencies are commonplace on all full-size Linux
> systems, because, increasingly, packages use a wide mix of libraries, far
> too many possibilities to install them all in a base install.

Commonplace indeed, and "absolutely", as they would say in a BBC
interview.

It appears to me that a response to this condition rather would be,
(a) an advice to authors (or packagers) to join clear indications of
needed third components [ - and I work with one rather experimental
development where this is done exemplarly - ], and
(b) hints about how to best handle "complicated" cases; most probably,
these would be conflicts _among_ "dependencies".

In respect to the latter, the Debian "deselect" package installation
does a good job in offering choice directly (i.e., to install a
"conflicting" component - which would then delete the earlier
installed other component it would be in conflict with -) but it is
not at all very verbose. While the Mandrake "Package Manager", for
instance, is quite better in informing what the conclict/s is/are but
leaves it to "manual" work to delete the other compondetn first in order
to install the first. And both can put a user - not only a newbie - in
a dilemma with the sametimes arcane terminology.

Though I find the most irritating types of "dependencies" being those
_on_ which a specific programme/application is built - sometimes I had
to go through four or five levels (or steps, if you want) in such a
chain only to detect that all the other dependencies are with
superfluous or obsolete progs. But to throw these out - without
playing havoc with the whole "system" - and guarding precisely what's
really needed, is enormously tiresome.

Some of the "full size" Linux installations came up to more than 90 000
files here; together with some confusing traditions (put this thing in
/bin/usr but not in /usr/bin, the other thingy precisely the other way
round, etc) and the permissions djungle, this results in quite an
invitation to intransparency and trouble potential.

(BTW, I seriously question the commonly affirmed advantages of
especially libraries sharing - in reality, quite some of them are so
highly specific that already a small change in a new version of a
programme which depends on one of them needs a new library; to be
"shared, of course.  Question is, by whom.  The whole handling of the
"system", and certainly in most cases its sheer volume, would be easier
with a more balanced judgement of program authors on what to include and
what to be "outsourced".)

((And BTW2, please don't thrash this ideological verbosity of the
"powerful" nature of the "system" in this context - it's easy enough to
show how the n! possible combinations of trouble increase with n.))

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-12-25
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
