From: "Ray Olszewski" <lists@tcob1.net>
Subject: Re: (fwd) .so, .a and .o-files
Date: Thursday, 15 Aug 2002 10:45:32 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_020815_104532__b3f411ac@fidonet.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All


At 12:17 PM 8/15/02 -0400, lawson_whitney@juno.com wrote:
>On Thu, 15 Aug 2002, Ray Olszewski wrote:
>
> > It's been so long since I used a .a libraries, I didn't recall how they
> > were created. They are the old-format libraries I referred to above. They
> > are kept around, at least on full-size Linux installs, mainly for legacy
> > reasons. Don't use them unless you have *very* unusual requirements (I
> > can't even think of an example).
>
>In case you want to make a static executable (one that does not require
>dynamic linking.  Nost distro's link /sbin/ldconfig static so you can
>use it to recover when you mess up your libraries and nothing woorks,
>say when you try to upgrade libc and don't know how.

I don't really want to argue with you, Lawson, but I do want to ask how 
certain you are of this interpretation. "static" is a word that means 
different things in different contexts, and I think you and I may have 
crossed two of its meanings.

The ld option "--static" links in an actual copy of any needed library code 
to the executable during linking (instead of at runtime, via ld.so). But 
does ld use (or need) .a libraries to do this? Or does it just override the 
normal (dymanic) use of the .so libraries? I'd always assumed the latter.

While the man page for ld doesn't clear this up, the Makefile for busybox 
includes a static option (for the exact reason you suggest above -- it's 
basically a rescue-disk app), but its docs only mention compiling against 
glibc, uClibc, and libc5, with no explicit mention of .a libraries.

I could easily be the one here who is mixed up. But we should get it clear 
and correct on the list to protect the innocent victims, no?


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
