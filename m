From: Ray Olszewski <ray@comarre.com>
Subject: Re: Emacs ????
Date: Tue, 03 Dec 2002 10:56:29 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021203104748.02231b70@celine>
References: <012401c29afa$bb287ed0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <012401c29afa$bb287ed0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:35 PM 12/3/02 -0500, Paul Kraus wrote:
>I don't get it. Sometimes it will highlight text and color things and
>other times it does not. Some times it will indent the way it is
>supposed to (at least from how I understand it) if I enter either {}
>then it should line it up with the next one. All text After a curly
>brace that is indented then when I got to a new line and add the ; it is
>supposed to line back up with the line above it. Sometimes this works
>sometimes it does not. Using fundamental and perl-mode it doesn't
>matter. It appears almost completely random. This is using emacs from a
>terminal screen.

Not being an emacs user, I can't help here very much ... but is there 
really NO pattern whatsoever to when emacs does and does not perform as you 
expect? The kinds of things I would look for are

         it works one way with some uids, another with others (different 
env settings or different user-specific config settings)
         it works one way if you log in as root, another if you su to root 
(the env settings are not being reset)
         it works one way from some terminals, another from others (might 
be a different env setting for TERM=)
         it works one way for some file extensions, another for others
         it works one way if a shebang (#!) line is present, another if it 
is not

These are the kinds of things that I see affecting other console apps, so 
they might be relevant to emacs behavior as well.

Paul ... I doubt there is any way to diagnose a problem with your setup if 
you cannot associate it with *something*. I doubt emacs grabs a value from 
/dev/urandom to decide how to initialize.


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
