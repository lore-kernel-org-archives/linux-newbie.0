From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: FW: Perl
Date: Wed, 4 Dec 2002 14:42:38 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <01bc01c29bcd$4dcfa510$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Odd we looked at the same problem and came up with completely opposing
conclusions. My attempt to combine them was for the sake of readability.
I know Perl has a 1000 ways to write the same statement. I thought there
would be a better more readable way. Sort of like Paul = + 1 can be
written Paul += Paul. The second of which is easier for me to look at. 

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Ray Olszewski
Sent: Wednesday, December 04, 2002 2:34 PM
To: linux-newbie@vger.kernel.org
Subject: Re: FW: Perl


At 01:27 PM 12/4/02 -0500, Paul Kraus wrote:
>Its perl hence the subject :)

Like (apparently) ichi, I missed this in the Subject: line when you
first 
posted it. Perhaps there's a lesson there ... it pays to write a few
more 
words than the bare minimum your message needs, to make it *easy* (not
just 
*possible*) for people to understand your question. This is not IRC,
after 
all ... we can tolerate the extra space for a few more words fairly
easily.


>$5 is the 5th memory of a regular expression. The second statement then
>uses a regular expression to replace " " with "\ " to correct paths.
>
>$5=Somefolder/some secondfolder
>$path would get Somefolder/some\ secondfolder.
>
>I want to condsense this into one statement.

Why? This is not nagging, but a real question. I ask because while it 
should be possible to combine these two statments into one (just search
on 
"obfuscated Perl" to see both how easy this is and how unreadable the 
resulting code can be), doing so probably will not make the program run
any 
faster, and it will almost surely make it harder to read (and, hence, 
maintain).

So it would help to know your purpose in wanting to combine these 
statements. If you are looking to save time or memory, I doubt that 
modifying the source will help, at least not as long as you need $5 to 
continue to hold the unedited version of thestring while $path contains
the 
edited version. As it is, you've written it just the way I would.

>I am probably off topic
>here but I have seen others post about basic programming issues.

Not off topic at all; these sorts of questions come up regularly, as
you've 
noted.


--
-------------------------------------------"Never tell me the
odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
------------------------------------------------------------------------
-------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in the body of a message to majordomo@vger.kernel.org More majordomo
info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
