From: cr <cr@orcon.net.nz>
Subject: More about Linux xbasic(s)
Date: Tue, 22 Oct 2002 20:24:53 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021022082132.8F42B71179@smtp.orcon.net.nz>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I've lost the original of the thread, but I asked on the Xbasic list and got 
a reply from Steve Gunhouse, one of the maintainers, as follows:

----------  Forwarded Message  ----------


On Mon, 21 Oct 2002 21:42:29 +1300 cr <cr@orcon.net.nz> writes:
> I've been following a discussion on Linux basics on the Linux-newbie
> list,
> and Xbasic has come up, and a non-Xbasic user has said that they
> have the
> impression that  "even in Xbasic, the engine (the interpreter) can
> be distinguished from the GUI".
>
> My impression is that this is incorrect, and that Xbasic can only
> run under X
> (or Windows) as applicable.    Before I make a comment on the Linux
> list, can anyone here confirm that?

Most likely, he isn't talking about our XBasic.

There's an interpreted BASIC which is compatible with the old Atari
ST-based GFA-BASIC which goes under the name xbasic. I've mentioned us to
the author and discussed our separate projects, in the end we decided
that we'd both been using the name for some time and that there was no
real conflict - his executable is actually xbasic while ours is xb, for
example.

First clue, our XBasic isn't interpreted, there is no interpreter.
Second, in fact his xbasic can even be used as a scripting language and
yes, doesn't require X (though it does support X, which is why he named
it xbasic).

Our XBasic does require X, isn't interpreted, and can't be used for
scripts (though actually that's redundant).

(If you read a history of BASIC, it turns out there was a prior XBASIC
which was a BASIC with built-in matrix operations, so neither of us can
be said to have originated the name.)

[End of quote]

It looks as if *maybe* the 'other' xbasic might do what was asked for and be 
capable of running non-GUI.

cr
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
