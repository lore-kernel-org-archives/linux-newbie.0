From: dashielljt <dashielljt@gmpexpress.net>
Subject: Re: how to launch downloaded files?
Date: Sat, 14 Dec 2002 22:41:56 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.50.0212142227230.261-100000@athame.gmpexpress.net>
References: <3DFBEA9E.9000704@look.ca>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DFBEA9E.9000704@look.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "R. Bal" <rbal@look.ca>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

You can't get anything you download to launch under linux without some
processing first.  This isn't windows and those who put Linux together
care lots more about your security than the people out of redmond
washington ever did.  If you downloaded files with an extension of .exe,
you'd have to move them over into the windows partition to execute them
unless you haven't got a windows partition.  Not having a windows
partition is a great way to run a linux system too.  If those files have
extensions like .tar.gz those linux can extract and probably build for
you.  Before I go into any of that procedure though most of the time you
should not run as root and when you do run as root never do so while
connected to the outside world.  That's a great way to have your linux
system knocked over by a hacker.  Let's say you have /home/joe on the
system and you're using that account to access the internet and that's
where what you downloaded is now.  you would do the command cp
filename.ext /tmp <cr> first.  Then the command cd /tmp <cr>.  then the
command tar zxvf filename.ext <cr>.  Now here's a trick.  try typing only
the first few letters of the filename.ext and then hit tab and look at the
name the machine offers.  If it's correct just hit enter and you'll do the
operation on that file.  That's tab completion for you.  Once the tar is
done, from the /tmp directory type cd <partial file name> then tab and if
the directory the file created under /tmp is correct hit return.  After
that ls -d <cr> and see what's in the directory.  readme files are a good
place to start if present and they usually are, so if there type less
readme or less README <cr> and read.  You'll probably be shown commands to
run to build your application on your system which if run as shown should
get you a working application.  Seriously though, you really want to
register and sign up with freshmeat.net and subscribe yourself to their
newsletters.  The reason is, the freshmeat.net newsletters come to your
email address and are better than windows update for linux because they're
not constantly nagging you to install stuff.  Linux takes the approach
that you're not 5 years old and can think for yourself.  Welcome aboard!

Jude <dashielljt(at)gmpexpress-dot-net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
