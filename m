From: James Miller <jamtat@mailsnare.net>
Subject: Re: no working Mozilla after Sid dist-upgrade: suggestions?
Date: Fri, 16 Jul 2004 11:20:49 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407161100510.1363@debian-emach>
References: <5.1.0.14.1.20040716075506.01f20c68@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040716075506.01f20c68@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks for your reply,  Ray.  So, I guess my assumption that these
problems are products of the beta-nature of Sid is correct in your view?

On Fri, 16 Jul 2004, Ray Olszewski wrote:

> I can't comment on your specific problem, but at least I should clarify
> what I meant by "promptly". I didn't mean instantly. Realistically, it
> takes a day or so for the bug to be identified, and another day or so for
> it to be fixed ... assuming it is routine, not a serious upstream problem,
> or a major incompatibility related to a shared-library change. These
> routine bugs are often just delayed recompiles, situations in which the
> source needs no actual changes, but the binary simply needs to be
> recompiled against a new set of library headers.

I thought I recalled you saying at some point that you had a problem with
something one day and next morning it was already fixed.  This is probably
what I had in mind when I said "promptly."

> At the Debian site (start at www.debian.org and follow obvious links), I
> don't see any new "important" or "grave" bugs reported for mozilla-browser.
> Segfaults usually mean library mismatches in practice, so I'd wait a day or
> so and try another update/upgrade. (There was an old, reportedly fixed,
> problem with mozilla and E-Bay, but it looks different from yours.)

Ok.  Thanks for checking that for me.

> You might consider, in circumstances like this, filing bug reports at the
> Debian site.

I looked into doing that using the reportbug program.  Though they
obviously try to make it as easy as possible for new users, having to look
through 576 bug reports (the number of reports for mozilla-browser) to see
if any match my problem exceeds the level of engagement I can offer to the
Debian project at the moment (I'll look into more active involvement when
I retire from my main work in a few decades though).  Unless there's some
simpler, less involved way of submitting bug reports, I'm afraid I'll have
to let them discover and fix the problem without my input.  I'll just hope
that's soon.  Maybe meantime I guess I could always boot Knoppix when I
need to do some graphical browsing (yes, sort of a sad jest).

> PS - the current version of firefox-mozilla is 0.9.1-4, not (as you write
> it) 9.1-4. The leading 0. part indicates, as is customary, that it is an
> alpha package, not yet version 1.0. So its being buggy should be no
> surprise, and is at least partly an upstream issue, not a Debian one.

Yeah.  I guess I was assuming everyone knew that Firefox was still in
beta, so I left off the 0.  Prior to 0.8, I had few stability problems
with Firefox/Firebird/Phoenix.  Some keyboard input problems in 0.6 IIRC,
but I think that's about as bad as it got.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
