From: Ray Olszewski <ray@comarre.com>
Subject: Re: disabling X display Manager
Date: Wed, 18 Jun 2003 08:13:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030618080843.02f62d10@celine>
References: <5.1.0.14.1.20030618072219.02f42c60@celine>
 <5.1.0.14.1.20030617061959.0201dcd0@celine>
 <5.1.0.14.1.20030611133014.01f97628@celine>
 <5.1.0.14.1.20030617061959.0201dcd0@celine>
 <5.1.0.14.1.20030618072219.02f42c60@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0306180950440.312@veclin.office>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:01 AM 6/18/2003 -0500, James Miller (office) wrote:
>[...]
>Just a clarification on the ctrl-alt-F7 bit.  I have understood, and have
>proven in practice, that only alt-F7 is necessary to get back to whatever
>x session is running in whichever virtual console.  In other words, I can
>do ctrl-alt-F3 and log in.  Providing no other x session is running in any
>other console, I can type "startx" and have Xwindows open up in that
>console.  Should I switch to another virtual console by, say, pressing
>ctrl-alt-F1, the way I get back to the console where X is running is to
>press alt-F7 (wihtout using the ctrl key) - no matter on which virtual
>console I've started it.  I'm rehearsing this from memory, but I'm pretty
>sure that's the way I handle virtual consoles and Xwindows.  Of course
>ctrl-alt-F7 does also get you back to that running x session but,
>according to my experience, the ctrl key has no role in effecting this.
>Anyway, I'm not trying to be nit-pickey here, just curious about the way
>this works and whether I'm doing and understanding things correctly.  Can
>you comment further on this ctrl key aspect, Ray?


This is exactly correct. You *need* the CTRL key as part of the chord only 
when *leaving* the X display. Otherwise, ALT-F* is sufficient. But 
CTRL-ALT-F* does always work, and I was trying to simplify the explanation.

I'm sorry ... one correction. If resources allow, it is perfectly possible 
to run multiple X sessions on a system. The first one will land (usually) 
on F7, the second on F8, and so on ... though I'm not actually sure how 
many VTs are defined on typical setups, I do know that they usually go 
through F8 at least.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
