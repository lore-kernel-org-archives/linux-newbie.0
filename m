From: caszonyi@rdslink.ro
Subject: Re: longstanding Linux irritants: suggested solutions?
Date: Wed, 14 Apr 2004 00:42:58 +0300 (EEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0404140037100.382@grinch.ro>
References: <Pine.LNX.4.58.0404121355350.673@debian-emach> <407B2158.6070702@jpl.nasa.gov>
 <Pine.LNX.4.58.0404122152500.688@debian-emach> <407B7EE3.4000206@comcast.net>
 <Pine.LNX.4.58.0404130954380.1012@debian-emach> <Pine.LNX.4.58.0404131215470.743@debian-emach>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0404131215470.743@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Tue, 13 Apr 2004, James Miller wrote:

> Moral of the story: man with 2 kernels kills one mouse (an ancient Incan
> proverb :) ).  At least for now, it is not possible for me to boot between
> 2 kernels and have a working mouse: I must use either one or the other.
> And I'll have to determine what further conjuring I'll need to do to get
> gpm working again under 2.6.4.
>
> Further input welcomed.
>
> Thanks, James
>
> PS Just noted that the console beep has ceased working under 2.6.4 as
> well:  another module loading problem?  We'll see . . .
> -

lol :-)))
my gpm uses /dev/mouse which is a symlink to /dev/psaux. X uses
/dev/psaux. My configuration works in 2.4 and in 2.6. I think is an error
on your side.

To enable console beep in 2.6 you must have PC speaker support in your
kernel. Since you are using a vendor kernel you should complain to them.


--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
