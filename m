From: James Miller <jamtat@mailsnare.net>
Subject: Re: grub doesn't load
Date: Fri, 18 Jun 2004 21:11:01 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406182100400.1112@debian-emach>
References: <7ca9db7c8818.7c88187ca9db@homemail.nyu.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7ca9db7c8818.7c88187ca9db@homemail.nyu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 18 Jun 2004, Anshuman Singh Rawat wrote:

> I have a dual boot system with grub as the loader.
> I wanted to change the default from WinXP to linux.
> So I changed the 'default' from 1 to 0 in grub.conf.
> 1 = Win (the second entry in grub.conf. linux was the first).
>
> Now the big problem is grub doesn't load any of the 2 OSes. Infact,
> it doesn;t even reach that startup screen. It just freezes!!
>
> Any clue how to fix this without a rescue disk (this PC doesn't have a floppy drive) ?
>
> A quick help will really be appreciated!

One word: Knoppix.  Well, actually a few more.  Yes, Knoppix is a rescue
disk of sorts, so I've given an answer you don't want (because I don't
know any other).  With a Knoppix bootable CD, you could get a pretty full
Linux gui you could then use to locate and edit the file you changed, in
hopes that changing it back would fix the problem.  Note that I have
little expereince with grub, so I'm only guessing changing it back would
fix things.  DamnSmallLinux could work too, and is a much smaller
download.  This all presumes you can somehow access the 'net and download
and burn a CD though.  I don't know how possible that might be for you
with a non-working computer.  If you do manage to do this, note that
you'll need to get to a root console and mount your machine's HD manually:
the automated method Knoppix gives you (i.e., an icon on the desktop)
mounts the drive read only.  You need it mounted read/write, so the manual
method from a root console is the way to do it.  Don't know offhand how
DamnSmall mounts (i.e., whether read only or not).  Hope that helps.

James

PS  Then, there are things like Tom's rtboot (or whatever it's called),
that run from floppy.  A smaller download yet, but no nice gui.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
