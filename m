From: Ray Olszewski <ray@comarre.com>
Subject: Re: Bash Scripts
Date: Thu, 10 Oct 2002 14:16:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021010140547.020c2800@celine>
References: <003301c2709c$7ac11b00$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003301c2709c$7ac11b00$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 04:34 PM 10/10/02 -0400, Paul Kraus wrote:
>[...]
>A couple of easy questions I can't seem to find answers to.

Assuming we are talking about standard shell scripts (in practice, ones 
that run using bash) ...

>1. How can I pass in parameters from the command line to use as
>variables.
>         myscript value1 value2

These command-line arguments are accessed as $1 and $2 (and so forth).

>2. How can I have it dump a message to a log file if something fails and
>then cease running the script.
>         if mount fail append to end of log1.txt "mounting failed",
>terminate script.
>
>I was under the impression that you could have a script terminate if a
>command failed by having && separate the commands but this just
>generates an error.

If it generates an error, you have the details wrong, because this is the 
correct (or at least the common) way to to do it. It is basically a 
programmers's trick ... it works because && is the logical AND operator, 
and, in bash (and most Unix/Linux interpreters), it is evaluated left to 
right. So ... first it evaluates whatever is on the left side of &&. If 
that part is TRUE, then it evaluates the right side, but if it is FALSE it 
does not evaluate the right side (since it knows without doing so that the 
combined boolean expression evaluates to FALSE).

If the two parts are commands, then it executes the one on the left. If 
execution returns a TRUE value (basically, this means that it does not 
return an error), it executes the rifht-hand command, which might be

                 echo "something or other"
or
                 exit 0

If you look in your init-script directory (I forget where RH keeps this), 
you'll find a ton of examples of how to do this.

BTW, you can find all this stuff in the man page for bash. It is about the 
most difficult man page I've ever tried to read, though (the information 
needed about bash is just too long for the man-page mechanism to handle), 
so you'd do better to find a tutorial (use the usual search strategies) or 
a book ... or look at the many examples on your system.


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
