From: James Miller <jamtat@mailsnare.net>
Subject: Re: right form for sources.list entries
Date: Tue, 7 Dec 2004 21:59:35 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0412072152280.6755@localhost.localdomain>
References: <Pine.LNX.4.21.0412080338310.623-100000@hestia>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0412080338310.623-100000@hestia>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 8 Dec 2004, J. wrote:

> After some Googling, I found this "reported" bug. The solution apparently
> lies in installing a lot of packages which weren't bundled on the
> distribution or apt sources (licensing issues), by uncommenting the two
> lines with repository "universe" on /etc/apt/sources.list (basically gives
> you access to software unsupported by the Ubuntu team and which may not be
> under a free license) and add

Adding universe to sources.list was actually the first thing I did after
installation.  I also installed WINE using those sources--the object of
the current attempt to edit sources.list.  But I've heard and read that
Debian, and thus Ubuntu, maintainership for WINE is faltering.  Someone on
the Ubuntu project is taking over maintaining WINE, and has made packages
temporarily available for download/apt-get in the interim until they work
their way into the package lists/repositories.  So, it's this package I'm
trying to get one, from a "backport" or unofficial repository.  That's the
one I need to figure how to add the URI for--i.e., to figure out how
Debian expects the URI to be formed.  Experimentation and doc reading have
thus far not produced the solution.  Anyone else on this?

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
