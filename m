From: "James Miller (office)" <jamtat@mailsnare.net>
Subject: Re: Advice about packages
Date: Wed, 1 Oct 2003 16:42:56 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0310011629280.14821@veclin.office>
References: <002901c38861$8ef4d0c0$0da16389@hyperion2>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002901c38861$8ef4d0c0$0da16389@hyperion2>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: Phillip Ames <phillip.ames@uconn.edu>

On Wed, 1 Oct 2003, Phillip Ames wrote:

> Hi,
> I'm relatively new to using Linux on a daily basis and I was looking for
> some information about what the "trends" are for production Linux
> machines.  I installed RedHat 9, and have mucked about with rpm and
> thought that packages were the greatest thing since sliced bread.
> However, in the course of my reading and playing I've noticed that many
> places recommend that the binary executables actually be compiled by
> your machine (with all its kernel options, etc.) which is sensible.
> Everything is well when I ./configure them and then "make install" but
> if there is an update to a particular product it seems very inconvenient
> to upgrade versions.  An example is the Apache httpd server - 1.3.xx
> stores its served files in /var/www/html/ and the actual httpd daemon in
> /usr/bin.  Apache 2, however, sets the DocumentRoot as
> /usr/local/apache2/htdocs/ and the binaries in /usr/local/apache2/bin/.
> I know it's just a simple matter of changing the DocumentRoot entry in
> the httpd.conf file for served documents but is there a better/easier
> way to go about upgrading the binaries?  Or is the de facto standard to
> simply run ./configure --with-prefix=/usr/bin?  Any advice would be
> appreciated.  Thanks,
>
I'm prolly even newer than you to running Linux on a daily basis.  But I
wonder if, based on your questions, you might not want to have a look at
Gentoo?  It has some sort of scripting system that builds packages on the
local machine after downloading them from an up-to-date repository of
source packages.  It's supposed to resolve dependencies and such, much
like Debian's apt-get.  Sort of a cross between apt-get and compiling from
source, if I understand correctly.  You download a package list when you
get a base system installed, then issue certain commands ("emerge
mozilla-browser" - something like that) and it retrieves the source and
any dependency sources it may have that are not on your system, and
compiles them for you (you can input options to the compile process
someplace, I think).  Hefty system resources (lots of RAM, fast processor)
seems sort of a prerequisite - at least if you want to get all this done
within reasonable time limits. They say it's the greatest thing since
sliced butter . . . ok, sliced bread. whatever.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
