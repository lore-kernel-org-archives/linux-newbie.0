From: Heimo Claasen <hammer@revobild.net>
Subject: Re: Strange Boot Behavior (cont.)
Date: 22 Aug 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200308222147.h7MLlKsw481258@www2.wanadoo.be>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="windows-1252"
To: linux-newbie@vger.kernel.org

That gets really interesting - for weeks now I had to wrestle with
similar symptoms in a slighly different setup, namely a CF-card adapter
as slave on the second IDE channel: the moment a flash-card is inserted
there (and duely recognized by the BIOS), Linux does not want to see th=
e
Secondary Master (again: correctly seen by the BIOS) on that 2nd IDE
channel any more.
The kernel used is 2.4.18. Another prefix: That box does boot well from
the first HD in any condition.

We did not find any explanation yet; however, someone [in another
discussion group] remembered that there _was_ an IDE channel
recognition problem for a while with more recent kernels (2.4.x) for a
while which came alight specificly with those CF-cards. (They behave
"like" IDE-disks according to specifications but apparently with still
some differences); the same poster said that this would have gone
since - but he couldn't give more precise references.

At the moment I'm stuck with this (on that machine) - when I want to re=
ad
out a CF-card, I cannot access the second HD ("secondary master" on the
second IDE MoBo connector) at the same time. Note that DOS boots well
on/from any of the drives connected and present (there's a small DOS on
on of the CF-cards too.)

In the course of this search it became clear, BTW, that the _kernel_
(thus, not LILO or GRUB) quite well reads out the BIOS data but then
sets its own IDE definitions and routines - which is where the drive
suddenly vanishes mysteriously (eysy to be seen in the bootup messages.=
)

=46inally, a CDROM drivde as slave either on the first or second IDE bu=
s
has never been of a problem.

So back to initial problem of Christophers', that the box doesn't stat
up at all:

A jumper problem should be visible in the way the BIOS messages come up
(or not at all) - if it's stuck before the end of the normal=94 suite o=
f
BIOS messages, then there's weither a connection (cable) or jumper
conflict. If it's stuck thereafter - when the kernel takes over and
runs its test, or at or before loading Linux, there's a good
probability that it doesn't find the MBR, for whatever reason

(With LILO this is evident when booting stops with a "LI..." [no "...LO=
"]
message.)

Still another question, Christopher: did you try to connect the second =
HD
to the second IDE connector on the _Motherboard_ ? (It should be
jumpered as "master" then but "cable select" should work too, if no
other IDE device is on that second cable.)

A very last problem source could be the band-cable itself: there are
two types, one with 40, the other with 80 leads; but both have the
same 40-pin connectors. (Hmm - anyone who knows how _that_ goes about ?=
)
Seems that some "modern" (E)IDE controllers need the latter cable type
with some specific - "E(nhanced)IDE" ?  - drives.

(Maybe that's the explanation too for the "temporary 2.4.x" symptom -
that it reads too specificly some control line there which is not serve=
d
with the most common 40-lead cable ?)

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-08-22
The WebPlace of ReRead - and much to read  =3D=3D>  http://www.revobild=
=2Enet

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
