From: Heimo Claasen <hammer@revobild.net>
Subject: Re: File Management
Date: 26 Sep 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209260252.g8Q2qR6J017434@pyxis.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: "e.a./CC" <linux-newbie@vger.kernel.org>

Thanks, Steven and others who replied to this thread.

I suspect I have to go with this indeed:
> Your best bet would probably be to just rely on your package manager.
Hmm.

Interesting, nevertheless:
> This initially sounds like a good idea.  In fact, I once went as far as
> actually writing such a script.  Unfortunately, you quite quickly
> hit a problem: ldd doesn't actually report all of the libraries
> used by a particular program.  You've said you're not a programmer, so
> I'll spare you the details, but it is possible for a program to
> specify while it's running that additional libraries should be linked
> in. This is used by most programs which support plug ins, for instance.
> Unfortunately, it isn't possible in general to get a complete list of
> such libraries just by looking at the program in question, and so you
> can't build an accurate list of which libraries are in use.

Which latter condition explains some of the never-ending troubles with
installing (application) programs.

Understandable, sure, that one wouldn't like to re-invent all those
wheels.
Less understandable that there is no (at least, moral) obligation to
"declare" used bits and pieces from somewhere else in a/the "system".
Result is lots of newbie frustration.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
