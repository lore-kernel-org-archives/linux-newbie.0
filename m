From: Ray Olszewski <ray@comarre.com>
Subject: Re: FW: Perl
Date: Wed, 04 Dec 2002 11:33:35 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021204111950.022398d0@celine>
References: <01a701c29bc2$cd5a19b0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <01a701c29bc2$cd5a19b0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:27 PM 12/4/02 -0500, Paul Kraus wrote:
>Its perl hence the subject :)

Like (apparently) ichi, I missed this in the Subject: line when you first 
posted it. Perhaps there's a lesson there ... it pays to write a few more 
words than the bare minimum your message needs, to make it *easy* (not just 
*possible*) for people to understand your question. This is not IRC, after 
all ... we can tolerate the extra space for a few more words fairly easily.


>$5 is the 5th memory of a regular expression. The second statement then
>uses a regular expression to replace " " with "\ " to correct paths.
>
>$5=Somefolder/some secondfolder
>$path would get Somefolder/some\ secondfolder.
>
>I want to condsense this into one statement.

Why? This is not nagging, but a real question. I ask because while it 
should be possible to combine these two statments into one (just search on 
"obfuscated Perl" to see both how easy this is and how unreadable the 
resulting code can be), doing so probably will not make the program run any 
faster, and it will almost surely make it harder to read (and, hence, 
maintain).

So it would help to know your purpose in wanting to combine these 
statements. If you are looking to save time or memory, I doubt that 
modifying the source will help, at least not as long as you need $5 to 
continue to hold the unedited version of thestring while $path contains the 
edited version. As it is, you've written it just the way I would.

>I am probably off topic
>here but I have seen others post about basic programming issues.

Not off topic at all; these sorts of questions come up regularly, as you've 
noted.


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
