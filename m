From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: Retrieving deleted files
Date: Sat, 10 Apr 2004 23:29:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4078E5BE.8030803@bcgreen.com>
References: <GNEPLLCIIBHICCOGIAKPEEGLCJAA.eatley@wow-corp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPEEGLCJAA.eatley@wow-corp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Eve Atley <eatley@wow-corp.com>, linux-newbie@vger.kernel.org

Eve Atley wrote:
> Thanks so much for your help, Ray.
> 
> I have tried the instructions at:
> http://recover.sourceforge.net/unix/
> (one of the first things I did try)
> ...and I got a whole lot of garbage spit back to my screen; so much so, I
> had to quit.
> 
> I am attempting to do something along these lines:
> 
> 	grep -a -B10000 -A0 "wowerpresumes" /dev/hdfb
> 
> ...and since I'm not sure what to put for B and A, I may be doing something
> wrong here. I don't recall how large the directory was 'before' things were
> deleted.

What you're doing is using the grep command to find some
relatively unique string of data in  your file, and then
printing the data before, and after, that string.

-A and -B signiy the number of lines after (-A) and before (-B)
tthe matched string to print...

The 'string' is actually a grep pattern, to look for, not a
fixed string (unless you use fgrep instead of grep).

so, as an example -- if you'r trying to find a deleted /etc/passwd ,
you might look for the entry for root, with:

   grep -A200 -B2 'root:[^:]*:0:0:'  /dev/hda3

(presuming that the /etc/ driectory is on /dev/hda3)

note that I'm presuming that you understand grep regular
expressions... It looks for  'root:' followed by any
number of characterss other than colons ('[^:]*) followed
by :0:0:  which are the userid and groupid of the root user.

Since, for most incarnations of the /etc/passwd file the
root entry is the first, I'm only printing 2 lines before (just in case),
and 200 lines after (presuming I'm expecting the file to be
less than 200 lines long.


if you're lucky, you'll only find one copy of the file on
your partition.

The upshot is that the ext3 filesystem does a pretty thorough
job of deleting any residual metadate when it removes your
files. (Unlike dos, which just zeroes the first byte of the name).

Zherefore you're left hunting thru the raw disk, hoping that the
file you're looking for hasn't been fragmented into 2 or
more pieces (if it has, then you're going to have to do more
searching for the second and subsequent pieces).

you basically want to look for a string/pattern that will
(hopefully) uniquely identify your file..  You want something
that is guaranteed to be in the file, and something unlikely
to be found in any  other random file.

I guess, if somebody wanted to be really fancy, it might be
possible to create a bitmap of allocated blocks on the disk,
and only search in the unallocated space for your string

I'll leave that as an exercise for the reader :-).


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
