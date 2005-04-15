From: James Miller <jamtat@mailsnare.net>
Subject: help with joining files
Date: Fri, 15 Apr 2005 17:55:28 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504151630540.5717@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Flemming's script did the job of getting wierd characters out of file 
names for me, so that part of dealing with these recordings is nicely 
resolved. Just run the comand in the dir where the files are, and in 
about a second you have renamed 170 files. Now, if cat'ing them together 
were even 1/10th as efficient. I'm discovering that this process really 
needs to be automated, too. Maybe someone could offer advice on how to do 
this?

Currently, I surf to the dir where the 170 files are, issue "cat" 
followied by part of the beginning of a file's name and hit <tab>, which 
gives me about 2/3's of the rest of the name. I then have to start looking 
at names of files more closely in another window, look at their time 
signatures (the most pertinent piece of info, really), choose the oldest 
one, enter some letter from it where cat left off, and hit <tab> again to 
get the complete name of the first file. Then, I copy that file's name and 
paste it after >~/MyMusic/classical/ and strip off the more particluarized 
parts so I have a more generic name for my full-piece file, then hit 
enter. At that point, I have the beginning of the cat'd together piece, 
and I follow a similar procedure--but using >>~/MyMusic/classical--to cat 
the rest of the components of the piece together into one.

To give a more complete picture using fake names, I do something like 
this:

cat Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement1.mp3 
>~/MyMusic/classical/Snooty-Composer1-highflownsymphony-inGmajor-Op.89674.mp3

cat Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement2.mp3 
>>~/MyMusic/classical/Snooty-Composer1-highflownsymphony-inGmajor-Op.89674.mp3

cat Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement3.mp3 
>>~/MyMusic/classical/Snooty-Composer1-highflownsymphony-inGmajor-Op.89674.mp3

I then have the entire piece in a single file called 
Snooty-Composer1-highflownsymphony-inGmajor-Op.89674.mp3. Incidentally, 
there is alot more variation in the actual names than in these examples. 
For example, not very many have the movements numbered (the numeral right 
before .mp3). Rather, the movements are called by their more generic 
titles like "Adagio," "Andante," and so forth. So, not much consistency 
in that part of the name.

It seems like there should be a less labor-intensive way of doing this, 
and, it seems to me, the salient factor in such a scheme is the time of 
file creation rather than file name. Each file is written to the HD in the 
order it finishes playing from the stream I am recording, so that's really 
probably the easiest and surest way to join them. All movments of a given 
piece are all going to have been written to disk within, say, 1/2 hr of 
the beginning of the piece.

Problem is, I'm sort of at a loss for ideas about how this could be done. 
Is there a way to feed cat file creation time rather than file name? It's 
not really so important that the name of the file I am cat'ing be 
preserved, so much as that the file being cat'ed to have an informative 
name. So, I'm casting about for ways of automating this process of joining 
movements together into the full pieces of which the movements are a part. 
Suggestions?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
