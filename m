From: Ray Olszewski <ray@comarre.com>
Subject: Re: (fwd) .so, .a and .o-files
Date: Thu, 15 Aug 2002 08:58:41 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020815083919.02181c50@celine>
References: <20020815153420.GA10981@prester.freenet.de>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020815153420.GA10981@prester.freenet.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Axel Siebenwirth <axel@hh59.org>, linux-newbie@vger.kernel.org

If you have not seen your mail on the list, then almost certainly something 
is wrong at your end. This is the *third* time I have seen this message 
this morning.

Are you sure you are subscribed?

Might your MTA or MUA be filtering out messages that are From: your own 
address?

At 05:34 PM 8/15/02 +0200, Axel Siebenwirth wrote:
>Sorry, I haven't seen my mail get to the list. So here goes it again.
>
>----- Forwarded message from Axel Siebenwirth <axel@hh59.org> -----
>
>Hi,
>
>I have some stupid questions.
>
>What makes the difference between .o and .so files? What is their use? Is it
>just a naming convention?

.o is an object file. It represents the intermediate step in the 
compile-and-link process for a program. .so is a shared object file (i.e., 
a library); their linking (at runtime) is managed by ld.so .

I'm not sure if the naming differences are actually required or if the use 
of .so is a naming convention (not "juet" a naming convention, though, 
since if it is one, it is well established, hence important).

>When I want to link libraries to a program I am compiling, of what format do
>the libraries have to be?

Depends on how you link. Modern linking is done dynamically (only one copy 
of the library is loaded into memory and shared by all apps that use it), 
using .so libraries. Older linking was done statically (each app loaded its 
own personal copy of the library into memory), using .a libraries.

Of course, you need the appropriate header files in /usr/include to do 
either of these things. How to get them depends on which Linux distro you 
use; in Debian, most every library_package_name.deb has a corresponding 
library_package_name-dev.deb with the needed headers.

>I have found out that .a files are archives created with ar. What is that
>for?

It's been so long since I used a .a libraries, I didn't recall how they 
were created. They are the old-format libraries I referred to above. They 
are kept around, at least on full-size Linux installs, mainly for legacy 
reasons. Don't use them unless you have *very* unusual requirements (I 
can't even think of an example).

>Many thanks and my best regards,
>Axel Siebenwirth




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
