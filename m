From: Heimo Claasen <hammer@revobild.net>
Subject: Re: debian install question
Date: 27 Sep 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209272147.g8RLlHv21041@ev6.be.wanadoo.com>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> What you will need to be careful about is not the root partition but LILO.
Quite correct, Ray, but I'd say the "even more" should go to the
(DEBIAN!) install in the first hand:

> During the installation process, you will be given the option to select the
> root (/) partition for your system ...
> as well as to select (and if necessary create) other
> partitions that you can mount where you will (the Debian installer makes
> suggestions here but does not mandate mount points).

The very wording of that installation step there (I had just the
experience with the newly distributed "Debian 3.0") is highly
confusing and almost inevitably induces to wrong decisions: Because it
gives as _one and only_ first selection to install a root(/)
partition, and _only_ such.  Only later, and afterwards, is there any
possibility to intall /boot partition too (and others).
AND IT WILL PUT THE BOOTING THERE.
But then it's a hell of a trouble to correct this later.

Any next time I go through this I'll note it down literally - for me
this was a prototype example of "programmers blindness": those who
wrote that (and quite some other, likewise confusing passages) never
tried to look at it as someone without already a highly trained,
insider's knowledge.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-09-26
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
