From: Heimo Claasen <hammer@revobild.net>
Subject: Re: RAM and swap partition
Date: 15 Dec 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212150239.gBF2d2iE023078@pyxis.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Ok, ok, Chuck - sure "it depends" ;)
(and oops, hwo do I use a swap _file_ instead of the "prescribed"
partition ?)

From your list, I conclude that it depends on all those six-and-a-half
factors, even if I'm not soooo convinced what for instance, "distro
AND version" (on top of the kernel number), the BogoMIPS or even the
HD speed, would have to do with it.

And then I have this experience with one (notabene experimental) sound
application which just doesn't care for how much swap there is - but
it is a darn memhog in itself: it crashes if the data file (or too many
together) loaded need too much _RAM_, regardless of how large I dimension
the swap.
So this real and practical example would tell me: no swap partition
needed (EXACTLY for this one app.)

Another real-life case is with that not-so-brandnew laptop and its
"small" HD of 2 GB and "poor" RAM (48 MB) installed, where Linux has
to share space with a windoze and a small DOS partition. This runs
vanilla apps in Linux - a GUI + a browser (including the connectivity
gears) + a plug-in pic viewer at most, simultaneously. Here, seen HD
space and RAM available (both hugely enormous, seen from my past-&-present
DOS uses; all real work, including almost all net-work needed, is done
in text mode and in the miniscule DOS compartment), the volume to set
aside for a swap partition is even a "critical" decision.

Then there is one factor which you did not mention but which might be
of decisive importance: if a unit is used by one person, it would most
probably have just one user (and a very few "user accounts" only) and
simultaneous use of different apps would be probably limited or rather,
the user-"system-owner-administrator" could be enabled to establish a
reasonable estimate of the real need for swap space on the perhaps
not-so-enormously-new/big-HD -- _if_ s/he had some ways or indications
for calculating it.

I think this is a reasonable demand, and I'm looking for some means to
answer to this.  So, how would I measure how much swap this kernel or
that application (in combination with what GUI, for instance) would
need, in fact ?

> it may be suggested EXACTLY how much swap space you will need.

Hmm, for that laptop for instance, running yet a much too FAT Mandrake 8.2
with kernel 2.4.18 (because Debian would not find the good video driver
for the trickish LCD). I would gladly dish the mem-(and how much swap-?)
hogging KDE and Nutsrape with it; though, regrettably, it must be able to
run X and a SSL-capable net connection.

I understood James' earlier questions quite similar to what I would ask
for this example; and feel the are still not answered:
> "if said user had less than X MB RAM, they will definitely need a swap
> partition"? And what about guidelines for swap partition size in such a
> case: can such be stated as well? Like, say, "if this individual has
> only 32 MB RAM, he should have a 64 MB swap partition" or "if he has 64
> MB RAM he'll only need a 64 MB swap partition"?

<besides>IMNSO too many of the posts especially on this list here -
where I suppose are precisely quite a lot of "single-users" listening,
and quite some who did or want to change away from Winno$ with their
existing, "old" PCs - are geared towards conditions of illimited means
(e.g., permanent/broadband net connection, units with huge mem and dito
HDs); which might well be a misconception.</besides>

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-12-14
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
