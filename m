From: lawson_whitney@juno.com
Subject: Re: .so, .a and .o-files
Date: Thu, 15 Aug 2002 17:03:06 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020815.193207.134670320.1.lawson_whitney@juno.com>
References: <5.1.0.14.1.20020815112320.021158a0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020815112320.021158a0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: axel@hh59.org, linux-newbie@vger.kernel.org

On Thu, 15 Aug 2002, Ray Olszewski wrote:

> As I indicated in my message to Lawson, "static" is a tricky term, with an
> assortment of context-dependent meanings. It is messy enough that you
> should take what I write next with a grain of salt, since it is easy to get
> mixed up here.
>
> Both .a and .so libraries get linked at runtime. .a linking was called
> static, but not in the sense you mean (at least as best I can recall). In
> that context, static meant that a dedicated copy of the needed library was
> loaded into memory and used just with that process. The .so approach was an
> improbvement on this runtime linking, loading just one copy of the library
> memory into memory and sharing it among all the processes that need those
> routines.

IIRC, it was possible but difficult to make a shared .a library: each
shared library had to have the same dedicated address range in every
address space.  I don't think anybody does this any more.

ELF (.so) libraries are relocatable at runtime.

> But when the linker ld is used with the --static option, an actual copy of
> any needed library function is incorporated into the executable, allowing
> it to run standalone (without access to the .so libraries).
>
Exactly.

Lawson
---oops---



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
