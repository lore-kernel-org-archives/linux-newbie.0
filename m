From: Heimo Claasen <hammer@revobild.net>
Subject: Re: how to assess occupied space
Date: 15 Sep 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209151843.g8FIhZPc006695@pegasus.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks for the hints; I didn't know some of the 'du' subtelties.
(BTW, is 'du' for _disk_ or for _directory_ use ?)

The question for "space occupied" is particularl important with the
Zip-disks, and sometimes 'du' or 'df' didn't seem to give reliable
answers.
(And in any case to know how much space is left demands some mental gym.)

The "weeding out" of needless stuff is linked to this - I'd like to
know which are the most (unused, space) wasters.
"Package", incidentally, was meant precisely as that:

> But since a package typically installs stuff in several separate places
> ... there is no good way, at
> least not that I know of, to figure out how much space a package takes up
> by examining directories in the filesystem.

The various package managers give some help, but it's not very
transparent. After I spent full days on de-installing not needed
packages (and some notes kept would indicate a considerable volume),
the final result was only a small diminuation of occupied disk space,
according to those 'du'/'df's.
Hmm.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-09-15
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
