From: Ray Olszewski <ray@comarre.com>
Subject: RE: FW: Perl
Date: Wed, 04 Dec 2002 12:03:01 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021204114638.022408c0@celine>
References: <5.1.0.14.1.20021204111950.022398d0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <01bb01c29bcd$3eba1a60$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:42 PM 12/4/02 -0500, Paul Kraus wrote:
>Odd we looked at the same problem and came up with completely opposing
>conclusions. My attempt to combine them was for the sake of readability.
>I know Perl has a 1000 ways to write the same statement. I thought there
>would be a better more readable way. Sort of like Paul = + 1 can be
>written Paul += Paul. The second of which is easier for me to look at.

Not in Perl. These two operations do different things, and neither does 
what I suspect you think they both do (increment Paul by 1). Example below:

#!/usr/bin/perl

$paul = 23      ;

#!/usr/bin/perl

$paul = 23      ;
$paul = +1      ;

$paul2 = 23     ;
$paul2 += $paul2        ;

print "paul=$paul but paul2 =$paul2\n"  ;
#EOP

ray@waverly:~$ ./testme2.pl
paul=1 but paul2 =46

This offers a nice illustration of why I dislike most "shortcut" syntax. I 
even usually prefer to write $paul = $paul + 1 rather than its equivalent 
$paul++, except in highly conventionalized uses like "for" statements. 
YMMV, of course.

BTW, Alan's suggestion won't work either (either exactly as proposed or in 
the easy variants I could try ... though Perl is wonky enough that *some* 
variation on his idea might work). Two reasons:

1. $5 is a read-only variable so you can't apply the =~s operator to it.

2. In general, $a = $b = $c assigns to $a the return code from the 
operation $b = $c --  either 1 for success or 0 for failure -- not the 
value in $c.

Another nice example of why I hate "shortcut" syntax. Boring is better.


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
