From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: How do you apply patches to source code?
Date: Mon, 26 May 2003 21:36:54 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0305262106020.4973@reg_kipling>
References: <bass5l$5fk$1@main.gmane.org> <Pine.LNX.4.53.0305261333460.3342@reg_kipling>
 <bat3v0$6md$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <bat3v0$6md$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Robert <robert_schmidli@hotmail.com>
Cc: linux-newbie@vger.kernel.org

On Mon, 26 May 2003, Robert wrote:

> Many thanks.
>
> I want to compile the package links with graphics and java enabled.  They
> aren't in most RPMs.
>
> I've got a spec file.  How do I actually use it?  Is it possible to use it
> to automatically add the patches or do I just need to apply the patches (as
> you've specified) in the order that they are listed in the spec file?
>
> Robert.
>

 Well, as others have replied, the specfile has rules.  I haven't looked
at a specfile for about 2 years, but I imagine there is something within
it that runs the package's configure script *after* applying the
patches.  For sure the specfile will have commands to cause the patches
to be applied.

 Before trying to build it, untar the main archive and read any README
or INSTALL files to see what you will need to do.

Either the ./configure script enables graphics and java
because it finds the required headers and libraries (in which case you
would have nothing more to do),

or you need to give it some extra options
(e.g. --with-java-package=/usr/local/java) : for this you will need to
edit how ./configure is invoked by the specfile to add, remove, or
alter options,

or it doesn't use autoconf and you need to edit a Makefile or an
Imakefile (the latter is used by xmkmf, common with older packages that
install into the /usr/X11R6 hierarchy) : in these cases you need to read
the comments in the file and edit it appropriately - you might even find
that some of the patches are altering the file to turn options off.

 If you have to edit the specfile, other than to remove patches, you
might find it useful to do a test run (and watch what gets built, and
where).  Assuming that the specfile invokes `make' and `make install'
by name (as I say, I haven't seen a specfile in ages), you could edit
the latter to `make -n install' (so that it does try to build but
does a dummy install : see `man make') then run rpm something like

 rpm --whichever-options 2>errors 1>buildlog

to put the output into files you can read in `less'.

HTH,

Ken
-- 
Live Long or Prosper! No, wait, that wasn't it...
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
