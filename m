From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: stripping flies (was: Re: .so, .a and .o-files)
Date: Sat, 17 Aug 2002 10:02:56 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208170957360.8397-100000@Consulate.UFP.CX>
References: <NOMSGID_7223=3a9750=2f200_020815_085921__75f821c9@fidonet.org>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <NOMSGID_7223=3a9750=2f200_020815_085921__75f821c9@fidonet.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <lists@tcob1.net>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Ray.

>> Whats the use of stripping object files of their symbols.
>> Symbols reflect the functions in an object file, right?

> Stripping makes the files smaller, which matters in some
> cases. The symbols are valuable in debugging problems but
> are not needed simply to execute the object code.

I'm not sure you two are talking about the same thing, so can
I state what I think is being asked and answered.

 1. Axel asked about stripping OBJECT files. These are the
    intermediate files created by the compiler and fed to
    the linker, and I'm not sure that it's even possible
    to strip those.

    Also, the way he describes them, I think Axel is actually
    referring to LIBRARIES rather than object files as such.

 2. Ray replied about stripping BINARIES. These are the
    object files after they have been fed through the linker
    and the result is programs that can be run.

Ray: Can you clarify whether I have the situation right when
     I state that it is only the binaries that can be stripped?

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
