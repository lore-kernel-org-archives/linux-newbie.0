From: Joshua Lee <yid@softhome.net>
Subject: Re: Linux distributions
Date: Sun, 17 Nov 2002 18:59:48 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021117235948.GA7927@softhome.net>
References: <20021117233427.GA7757@softhome.net> <Pine.LNX.4.44.0211171842150.1411-100000@athame.gmpexpress.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44.0211171842150.1411-100000@athame.gmpexpress.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: dashielljt <dashielljt@gmpexpress.net>
Cc: Frank Roberts - SOTL <sotl155360@earthlink.net>, Linux Newbie <linux-newbie@vger.kernel.org>

On Sun, Nov 17, 2002 at 06:50:35PM -0500, dashielljt wrote:
> I'm going to talk in terms of redhat since that's what I had used
> previously and also in terms of slackware since that's what I use now.
> redhat had wvdial included along with a support package for finding dial
> up modems.  Slackware has minicom but no additional package built in for
> this purpose.  It's true one can download and install ezsetup but again

wvdial is a nice program, but all it does behind the scenes is replace
chat with a better redialing system, and call pppd just like any other
ppp connection.

> that wvdial will work on slackware if properly installed since I didn't
> get that done.  On the other hand, ethernet is set up by the same program
> on slackware and redhat and I suspect other linux versions; ifconfig.
> That's because ifconfig has become a standard of sorts.  Standards get
> there when things get built into the genes of operating systems.  When

This is apples and oranges, wvdial is just a user-friendly dialer. pppd
is what goes on behind the scenes and that is not only standardized,
it's built-in to the Linux kernel.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
