From: "Ray Olszewski" <lists@tcob1.net>
Subject: Re: .so, .a and .o-files
Date: Thursday, 15 Aug 2002 12:28:57 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_020815_122857__0201a8e5@fidonet.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All


As I indicated in my message to Lawson, "static" is a tricky term, with an 
assortment of context-dependent meanings. It is messy enough that you 
should take what I write next with a grain of salt, since it is easy to get 
mixed up here.

Both .a and .so libraries get linked at runtime. .a linking was called 
static, but not in the sense you mean (at least as best I can recall). In 
that context, static meant that a dedicated copy of the needed library was 
loaded into memory and used just with that process. The .so approach was an 
improbvement on this runtime linking, loading just one copy of the library 
memory into memory and sharing it among all the processes that need those 
routines.

But when the linker ld is used with the --static option, an actual copy of 
any needed library function is incorporated into the executable, allowing 
it to run standalone (without access to the .so libraries).

At 07:31 PM 8/15/02 +0200, Axel Siebenwirth wrote:
>Hi Ray!
>
>On Thu, 15 Aug 2002, Ray Olszewski wrote:
>
> > Depends on how you link. Modern linking is done dynamically (only one copy
> > of the library is loaded into memory and shared by all apps that use it),
> > using .so libraries. Older linking was done statically (each app loaded 
> its
> > own personal copy of the library into memory), using .a libraries.
>
>Does this mean what I think? that when an executable is linked statically
>all the libraries are in the executable? So none of the required libraries
>are required when executing?
>
>Is there a difference between statically linking object files to a library
>and statically linking libraries to an executable?
>I'm really sorry about such fundamental questions but I want to get
>clarity about all that.


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
