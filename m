From: "Robert" <robert_schmidli@hotmail.com>
Subject: Re: How do you apply patches to source code?
Date: Mon, 26 May 2003 23:16:13 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <bat3v0$6md$1@main.gmane.org>
References: <bass5l$5fk$1@main.gmane.org> <Pine.LNX.4.53.0305261333460.3342@reg_kipling>
Reply-To: "Robert" <robert_schmidli@hotmail.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


"Ken Moffat" <ken@kenmoffat.uklinux.net> wrote in message
news:Pine.LNX.4.53.0305261333460.3342@reg_kipling...
> On Mon, 26 May 2003, Robert wrote:
>
> > I have recently obtained the source code to an application as a .src.rpm
> > file.  I have unbundled the code into /usr/src/RPMS/SOURCES.  There are
a
> > whole lot of .patch.bz2 files in the directory, as well as the main
.tar.bz2
> > file.
> >
> > How do I compile the program with the patches?
> >
> > I realise this is probably an easy one, but I can't find any
documentation
> > about applying patches.
> >
> > Robert.
> >
>
>  I believe that every .src.rpm has a file telling rpm how to build it,
> maybe called specfile, and there is some option you give to rpm to build
> this (see `man rpm').
>
>  Of course, if you _want_ to build it by hand for some reason, you
> first need to unpack the .tar.bz2 (probably with
> tar -xvjf filename.tar.bz2), then cd into the directory it creates and
> run `bzcat ../patchname.patch.bz2 | patch -p1' for each patch, then
> build it as normal (typically ./configure ; make ; make install) -
> you'll want to see what options configure will support or need.
>
>  But, you probably still need the specfile or whatever to tell you in
> what order the packages should be applied.
>
>  Sorry I can't be more help, but `rpm' has broken on the only box I've
> got it on.
>
> Ken
> --
> Live Long or Prosper! No, wait, that wasn't it...
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
Many thanks.

I want to compile the package links with graphics and java enabled.  They
aren't in most RPMs.

I've got a spec file.  How do I actually use it?  Is it possible to use it
to automatically add the patches or do I just need to apply the patches (as
you've specified) in the order that they are listed in the spec file?

Robert.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
