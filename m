From: Heimo Claasen <hammer@revobild.net>
Subject: Re: TFT display on Debian GNU/Linux
Date: 06 Sep 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309061134.h86BYOO8026092@gallantin.skynet.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

It was indeed the Debian setup script that posed the problem, Ray.
I think we tried just every combination of including/excluding any of
the specific modules; doctored the X-configuration files etc. That was
now some month ago (March/April); in the meantime I've thrown away most
of the notes on all this. (Guarded the ones on the dubious video RAM
entry: it's quite possible that the problem is there, as resolutions
from a certain threshold on nay need sufficient video memory to allow for
the corresponding mode-lines in the config.)

BTW, both Debian-3.0/Woody and Mandrake-8.2 used the generic "nv" driver.
Thus the difference wasn't there either.  We just couldn't find out where
the glitch was with Debian.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-09-05
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
