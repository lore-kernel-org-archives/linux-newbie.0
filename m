From: Ray Olszewski <ray@comarre.com>
Subject: Re: MSN Messenger clones keep failing
Date: Tue, 04 Nov 2003 07:41:45 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031104073149.02010830@celine>
References: <3FA79E82.3080204@siriusbb.com>
 <3FA79E82.3080204@siriusbb.com> <Pine.LNX.4.58.0311040913500.1488@box>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0311040913500.1488@box>
References: <3FA79E82.3080204@siriusbb.com>
 <3FA79E82.3080204@siriusbb.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:23 AM 11/4/2003 +0100, James Miller (office) wrote:
>On Tue, 4 Nov 2003, Amin wrote:
> >
> > Recently I got my internet connection up at home again and
> > downloaded the latest versions of Alvaro's MSN Messenger for
> > Linux and Ayttm for Linux.  These are clones meant to get me
> > into MSN Messenger chat.  But they keep failing, saying my
> > username and/or password are incorrect.
> >
> > I can easily sign in with MSN Messenger 6 on the same
> > machine---I dual boot with Win98---but I'd much rather use
> > Linux :-)
> >
> > Does anybody have any experience with this?  And can anyone
> > lend a  hand?  Thanks.
> >
>Well, I don't have direct experience with any of those clients, nor with
>trying to chat on MSN from Linux.  But I do read some computer news, and
>have seen articles recently (within the last month?) that talk about an
>impending M$ plan to cut off their network from other chat clients.  I
>understood that this was to apply to all non-M$ clients as well as to
>earlier versions of M$'s client as well.  Maybe this explains the trouble
>you're having?

If the original poster is referring to the Sourceforge project

         http://amsn.sourceforge.net/

it purports to work with the "new" (post-Oct 15)  MSN standards ... that 
is, version 0.83 does. So if that (or something later) is what he means by 
"latest version", this is *probably* not the problem.

ayttm, OTOH, does appear to be too old (at least in its Debian incarnation 
- I can't seem to find the upstream home of this project) to support the 
new protocol.

It would be easier to diagnose the problem if we had a better description 
of what it was. "But they keep failing, saying my username and/or password 
are incorrect" is inexact. Please post again, this time including exactly 
what you enter (conceal ONLY a password with Xs, nothing else) and exactly 
how each program responds. Details always count. Could this be simply a 
(local) permissions problem, for example?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
