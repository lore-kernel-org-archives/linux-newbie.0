From: Ray Olszewski <ray@comarre.com>
Subject: Re: further debian questions
Date: Thu, 26 Dec 2002 09:24:32 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021225230121.020b1130@celine>
References: <200212260504.gBQ53pSP012114@pyxis.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212260504.gBQ53pSP012114@pyxis.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At , Heimo Claasen wrote:
>I feel quite confused when reading this:
>
> > The main lesson is to stick to a single archive ... even mixing Woody and
> > Sid packages is not for the inexperienced.
>
>What, then, would be the use of "upgrades" at all" ?

Well ... are you and I using "upgrade" in the same way? In the context of 
the Debian apt-* system, the "upgrade" command tells apt-get to check which 
installed packages are not the current versions in the archive, and replace 
any that are not current with the current ones (with some minor 
exceptions). It is NOT the command one uses when (for example) moving a 
system from Woody to Sid ... that is a "dist-upgrade", whihc addresses 
dependencies a bit differently. The "upgrade" options is properly, and 
quite usefully, used only *within* a version to keep it current (to get 
security upgrades and bugfiles, mainly).

>And the conclusion would not be that general for installing packages
>from "earlier" distributions (or their versions) either - I regularly
>install a quite "old" application, which is rather demanding in its X
>(server) use, with all sorts of "modern" distributions and hitherto
>never had a problem with it.

You describe your experience here too vaguely for me to be able to comment 
intelligently. Except to note that dependency problems usually relate to 
libraries, not X servers (does this "quite 'old' application" use libc6, 
for example, and how did it cope with the change from glibc2.0.x to 
glibc2.1.x?).

>The reason for that "main lesson" given then, seems rather questionable:
> > Actually, missing dependencies are commonplace on all full-size Linux
> > systems, because, increasingly, packages use a wide mix of libraries, far
> > too many possibilities to install them all in a base install.

[...]

>It appears to me that a response to this condition rather would be,
>(a) an advice to authors (or packagers) to join clear indications of
>needed third components [ - and I work with one rather experimental
>development where this is done exemplarly - ], and

Were this a list that gave advice to package developers (or authors or 
packagers), I might agree with you. But offering such advice *here* is 
pointless, since the people who come here for advice are beginners trying 
to get Linux to work., not developers and others trying to improve their 
packaging practices. Advice *here* should help those people cope with 
reality, not focus on how packaging might be better.

>(b) hints about how to best handle "complicated" cases; most probably,
>these would be conflicts _among_ "dependencies".

These problems need to be handled on a case-by-case basis. Perhaps others 
can suggest useful "hints" that are not specific to a particular problem, 
but I have none to offer, especially since (apparently) I use sufficiently 
well-behanved apps that Debian-Sid (or Debian-Woody, for older, more stable 
apps) can handle dependencies properly for me.

One option you don't mention ... though you hint at it in a part of your 
message that I deleted here ... is static compilation. A developer (or a 
user who compiles from source) can bypass dependency issues completely by 
doing a static compile against the library versions he or she wants the 
program to use. The price is bigger code (both on disk and in memory), but 
for the highly specialized applications you focus on in your comments, it 
might be worth considering. But again, this though too is more useful to 
experienced users and developers than to true beginners.

[remainder deleted]


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
