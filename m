From: Amin <raihan@citech-bd.com>
Subject: Re: How do you apply patches to source code?
Date: Mon, 26 May 2003 19:40:22 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1043.1053956422@localhost.localdomain>
References: <ken@kenmoffat.uklinux.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Message from Ken Moffat <ken@kenmoffat.uklinux.net> 
   of "Mon, 26 May 2003 13:42:35 +0100." <Pine.LNX.4.53.0305261333460.3342@reg_kipling> 
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

In message <Pine.LNX.4.53.0305261333460.3342@reg_kipling>, Ken Moffat writes:
> On Mon, 26 May 2003, Robert wrote:
> 
> > I have recently obtained the source code to an application as a .src.rpm
> > file.  I have unbundled the code into /usr/src/RPMS/SOURCES.  There are a
> > whole lot of .patch.bz2 files in the directory, as well as the main .tar.bz
> 2
> > file.
> >
> > How do I compile the program with the patches?
> >
> > I realise this is probably an easy one, but I can't find any documentation
> > about applying patches.
> >
> > Robert.
> >
> 
>  I believe that every .src.rpm has a file telling rpm how to build it,
> maybe called specfile, and there is some option you give to rpm to build
> this (see `man rpm').

On slightly older systems, this command is

   rpm --rebuild package.src.rpm

On newer systems, it's

   rpmbuild --rebuild package.src.rpm

Try the latter first.  Notice that you never have to see the
contents of the source rpm file.  You only need to run the
above commands on it.  Everything is automatically taken
care of.

>  Of course, if you _want_ to build it by hand for some reason, you
> first need to unpack the .tar.bz2 (probably with
> tar -xvjf filename.tar.bz2), then cd into the directory it creates and
> run `bzcat ../patchname.patch.bz2 | patch -p1' for each patch, then
> build it as normal (typically ./configure ; make ; make install) -
> you'll want to see what options configure will support or need.
> 
>  But, you probably still need the specfile or whatever to tell you in
> what order the packages should be applied.

Logically, the specfile should specify rules for
automatically applying patches, or what would be the
convenience (to the user) of having the patches?

> 
>  Sorry I can't be more help, but `rpm' has broken on the only box I've
> got it on.
> 
> Ken

HTH,
Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
