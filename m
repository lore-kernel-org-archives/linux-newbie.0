From: lawson_whitney@juno.com
Subject: Re: (fwd) .so, .a and .o-files
Date: Thu, 15 Aug 2002 16:49:47 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020815.193207.134670320.0.lawson_whitney@juno.com>
References: <5.1.0.14.1.20020815093422.02118d50@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020815093422.02118d50@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: axel@hh59.org, linux-newbie@vger.kernel.org

On Thu, 15 Aug 2002, Ray Olszewski wrote:

> At 12:17 PM 8/15/02 -0400, lawson_whitney@juno.com wrote:
> >
> >In case you want to make a static executable (one that does not require
> >dynamic linking.  Nost distro's link /sbin/ldconfig static so you can
> >use it to recover when you mess up your libraries and nothing woorks,
> >say when you try to upgrade libc and don't know how.
>
> I don't really want to argue with you, Lawson, but I do want to ask how
> certain you are of this interpretation. "static" is a word that means
> different things in different contexts, and I think you and I may have
> crossed two of its meanings.
>
No, I mean the same by static as you do, if I understand you aright.

> The ld option "--static" links in an actual copy of any needed library code
> to the executable during linking (instead of at runtime, via ld.so). But
> does ld use (or need) .a libraries to do this? Or does it just override the
> normal (dymanic) use of the .so libraries? I'd always assumed the latter.
>
The way I read the section of info ld on the subject, you need .a
libraries to make a static executable.

File: ld.info,  Node: Options,  Next: Environment,  Up: Invocation

`-Bdynamic'
`-dy'
`-call_shared'
     Link against dynamic libraries.  This is only meaningful on
     platforms for which shared libraries are supported.  This option
     is normally the default on such platforms.  The different variants
     of this option are for compatibility with various systems.  You
     may use this option multiple times on the command line: it affects
     library searching for `-l' options which follow it.

`-Bstatic'
`-dn'
`-non_shared'
`-static'
     Do not link against shared libraries.  This is only meaningful on
     platforms for which shared libraries are supported.  The different
     variants of this option are for compatibility with various
     systems.  You may use this option multiple times on the command
     line: it affects library searching for `-l' options which follow
     it.
Viewing line 503/1103, 45%

> While the man page for ld doesn't clear this up, the Makefile for busybox
> includes a static option (for the exact reason you suggest above -- it's
> basically a rescue-disk app), but its docs only mention compiling against
> glibc, uClibc, and libc5, with no explicit mention of .a libraries.

I bet you can find libc.a in the glibc-dev package, along with a
/usr/lib/libc.so that reads as follows:

/* GNU ld script
   Use the shared library, but some functions are only in
   the static library, so try that secondarily.  */
GROUP ( /lib/libc.so.6 /usr/lib/libc_nonshared.a )
>
> I could easily be the one here who is mixed up. But we should get it clear
> and correct on the list to protect the innocent victims, no?
>
I'm not the sort to start an argument I can't win.

> -------------------------------------------"Never tell me the odds!"--------
> Ray Olszewski					-- Han Solo
> Palo Alto, California, USA			  ray@comarre.com
> -------------------------------------------------------------------------------
>
Lawson

No offense meant.



________________________________________________________________
GET INTERNET ACCESS FROM JUNO!
Juno offers FREE or PREMIUM Internet access for less!
Join Juno today!  For your FREE software, visit:
http://dl.www.juno.com/get/web/.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
