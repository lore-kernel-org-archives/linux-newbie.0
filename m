From: Ray Olszewski <ray@comarre.com>
Subject: Re: right form for sources.list entries
Date: Tue, 07 Dec 2004 22:27:04 -0800
Message-ID: <5.1.0.14.1.20041207220544.01f98370@celine>
References: <Pine.LNX.4.21.0412080338310.623-100000@hestia>
 <Pine.LNX.4.21.0412080338310.623-100000@hestia> <Pine.LNX.4.58.0412072152280.6755@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0412072152280.6755@localhost.localdomain>
References: <Pine.LNX.4.21.0412080338310.623-100000@hestia>
 <Pine.LNX.4.21.0412080338310.623-100000@hestia>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:59 PM 12/7/2004 -0600, James Miller wrote:
>On Wed, 8 Dec 2004, J. wrote:
>
> > After some Googling, I found this "reported" bug. The solution apparently
> > lies in installing a lot of packages which weren't bundled on the
> > distribution or apt sources (licensing issues), by uncommenting the two
> > lines with repository "universe" on /etc/apt/sources.list (basically gives
> > you access to software unsupported by the Ubuntu team and which may not be
> > under a free license) and add
>
>Adding universe to sources.list was actually the first thing I did after
>installation.  I also installed WINE using those sources--the object of
>the current attempt to edit sources.list.  But I've heard and read that
>Debian, and thus Ubuntu, maintainership for WINE is faltering.  Someone on
>the Ubuntu project is taking over maintaining WINE, and has made packages
>temporarily available for download/apt-get in the interim until they work
>their way into the package lists/repositories.  So, it's this package I'm
>trying to get one, from a "backport" or unofficial repository.  That's the
>one I need to figure how to add the URI for--i.e., to figure out how
>Debian expects the URI to be formed.  Experimentation and doc reading have
>thus far not produced the solution.  Anyone else on this?


I cannot be certain of this, but I **think** the problem is with the site, 
not with your attempts to structure a URL. In Debian proper (I don't use 
Ubunto, but I think Ubuntu gets its apt-* implementation straight from 
Debian), the structure of an entry in sources.list (for binaries) is

deb URL distro_directory [optional added identifiers for subdirectories]

The man page (for sources.list) is NOT clear on this next part. But from 
looking at a bunch of Debian archives, it appears that apt-get expects to 
find a ./dists step in the path that is not present at the Sourceforge URL 
you are trying. That is, if your sources.list entry is (this is a real 
example, BTW) ...

         deb ftp://ftp.nerim.net/debian-marillat/ unstable main

... the files (including Packages.gz) will be found in ...

         ftp://ftp.nerim.net/debian-marillat/dists/unstable/main

(in this actual example, in subdirectories below this level that separate 
source and binaries).

To check more on this, look at some of the sites listed at this directory 
of unofficial Debian package repositories:

         http://www.apt-get.org/

The couple I checked followed the pattern I illustrate above.

It seems to me that I've run into the same problem as you're having before, 
and I wasn't able to fix it. That is, I had to resort to the workaround of 
downloading the packages I wanted in some ordinary way (http or ftp), 
putting them someplace sensible on the target system, and using dpkg 
instead of apt-get to install them.

Lousy solution, but better than none at all. If you find a better one, 
please post it.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
