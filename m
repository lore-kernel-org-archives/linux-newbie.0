From: Heimo Claasen <hammer@revobild.net>
Subject: Re: striking X server
Date: 10 Nov 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211100419.gAA4Jpq08040@ev6.be.wanadoo.com>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Now I got at the root of that problem; and it is indeed bizarre:
somewhat/something(*) must have done a "new" copy of the XFree86-
"Config-4" file(**), where there was the single line _not_
commented out which is there by _default_, namely the valid line

  FontPath 'unix/:-1'

(**) I quote from mem; Lawson's hint made me search a bit in this direction
and in the docs.

Indeed, the queer logic in the pertinent "man" has it that the -
correct and meaningful - default behaviour for looking at the usual
places for font and other files (indicated precisely there, in the
"man") with this config-file, is set out of play if the default format of
this very config-file is used.

Got it ?

(Now tell a Linux/Unix newbie that something like "unix:/-1" is sheer
nonsense when s/he sees it in the highly original and sacrosanct default
version of a configuration file.)

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-10-09
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

(*) Bizarrery is and no-one had done a trial for a re-installation or
change of the X server at that install (on an exchangeable HD), before a
respective (config-4-)".old" and a (")new(") one were created -- and BOTH
of them have that ominous line _un_commented.

There should have been just a very first, well-working config-4-file
from the very first, and at the time immediately successful, install,
as the back-up "old" file, because there was one single and
uninterrupted/unrepeated attempt to re-install up the X server on
Oct.28th: the date when it suddenly striked to succeed with "startx"
(after impeccable behaviour all the time before).

AND - I almost forgot - there was indeed a nearly 600 M(!)B large
"core.nnnn" file somewhere on that HD's system ... only that, as far
as I could remember, THERE HAS NOT BEEN ANY program crash I _remember_
of with that system in the time preceding the sudden strike of the
X server.
And I had run "du" tediously with all the total HD without getting
aware or attent of the monster (Ok., the human eye is unreliable;
better do not believe what you see onscreen.)

-hc

All answers questioned here.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
