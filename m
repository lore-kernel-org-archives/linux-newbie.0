From: James Miller <jamtat@mailsnare.net>
Subject: Re: Debian Sid startup problems
Date: Fri, 11 Jun 2004 23:36:12 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406112327150.1396@debian-emach>
References: <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach> <Pine.LNX.4.58.0406112204310.2201@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406112204310.2201@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 11 Jun 2004, James Miller wrote:

> PS I can still boot from a 2.4.x kernel on the system - though I'll be
> without mouse support.  Maybe I should try that?

This is really wierd.  Here I am, booted into a normally-working x
session, having started the computer with the 2.4.25 kernel.  I don't know
what to think of this.  I got to a command prompt, as I was getting to
under the 2.6.5 kernel after taking Ray's advice about renaming
/etc/rc2.d/S99xdm so it wouldn't boot into graphical mode.  When I logged
in and issued startx, the window manager fired up normally.  No blank
screen with "no signal" on it or anything.  Just the same old gui I've
been using these last few months (and the mouse even works!).  Maybe I'm
entering the twilight zone or something . . .  Anyway, enough for tonight.
I'm going to bed on this one.  Maybe tomorrow I'll try this again with the
2.6.5 kernel.  Maybe I'll upgrade xfree.  Suggestions welcome.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
