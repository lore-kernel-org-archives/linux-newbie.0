From: "J." <mailing-lists@xs4all.nl>
Subject: Re: help with joining files
Date: Sat, 16 Apr 2005 14:31:06 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0504161353590.542-100000@hestia>
References: <Pine.LNX.4.61.0504151630540.5717@localhost.localdomain>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504151630540.5717@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 15 Apr 2005, James Miller wrote:

> Flemming's script did the job of getting wierd characters out of file 
> names for me, so that part of dealing with these recordings is nicely 
> resolved. Just run the comand in the dir where the files are, and in 
> about a second you have renamed 170 files. Now, if cat'ing them together 
> were even 1/10th as efficient. I'm discovering that this process really 
> needs to be automated, too. Maybe someone could offer advice on how to do 
> this?
> 
> Currently, I surf to the dir where the 170 files are, issue "cat" 
> followied by part of the beginning of a file's name and hit <tab>, which 
> gives me about 2/3's of the rest of the name. I then have to start looking 
> at names of files more closely in another window, look at their time 
> signatures (the most pertinent piece of info, really), choose the oldest 
> one, enter some letter from it where cat left off, and hit <tab> again to 
> get the complete name of the first file. Then, I copy that file's name and 
> paste it after >~/MyMusic/classical/ and strip off the more particluarized 
> parts so I have a more generic name for my full-piece file, then hit 
> enter. At that point, I have the beginning of the cat'd together piece, 
> and I follow a similar procedure--but using >>~/MyMusic/classical--to cat 
> the rest of the components of the piece together into one.
> 
> To give a more complete picture using fake names, I do something like 
> this:
> 
> cat Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement1.mp3 
> >~/MyMusic/classical/Snooty-Composer1-highflownsymphony-inGmajor-Op.89674.mp3
> 
> cat Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement2.mp3 
> >>~/MyMusic/classical/Snooty-Composer1-highflownsymphony-inGmajor-Op.89674.mp3
> 
> cat Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement3.mp3 
> >>~/MyMusic/classical/Snooty-Composer1-highflownsymphony-inGmajor-Op.89674.mp3

If I read your filenames correctly, the only thing that seperates them are
the movement numbers ? I am assuming that `[0-9]' would work than for
all your files this way ???

~: ls Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement[0-9].mp3
Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement1.mp3 
Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement2.mp3 
Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement3.mp3 

`ls' can take a number of options, underwich `sort' entrys by time .
~: ls -lt -c Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement[0-9].mp3
Now extract the targetname you want with `sed` [see bottom of email] and
fall into a loop dd'ing with notrunc or contactenating `like you did
above' all files to your target file.
done

> I then have the entire piece in a single file called 
> Snooty-Composer1-highflownsymphony-inGmajor-Op.89674.mp3. Incidentally, 
> there is alot more variation in the actual names than in these examples. 
> For example, not very many have the movements numbered (the numeral right 
> before .mp3). Rather, the movements are called by their more generic 
> titles like "Adagio," "Andante," and so forth. So, not much consistency 
> in that part of the name.
> 
> It seems like there should be a less labor-intensive way of doing this, 
> and, it seems to me, the salient factor in such a scheme is the time of 
> file creation rather than file name. 

Unix and GNU/Linux type systems do not store the file creation time as
static information. There are `three sorts of time` that are stored with
each file:

C time - changed time info of the corresponding inode,
M time - last modified time,
A time - last access time

These can be changed by other programs. For example `touch' . So be
careful how you implement this and how you group corrosponding files by
time .

Personally I would have renamed each file correctly according to the
task I wanted to preform right from the start, thus to include
the last modified UTC time in the filename. That way you can list each
file belonging to a certain group `sort -n' them by time and concat them
as appropiate. 

> Each file is written to the HD in the 
> order it finishes playing from the stream I am recording, so that's really 
> probably the easiest and surest way to join them. All movments of a given 
> piece are all going to have been written to disk within, say, 1/2 hr of 
> the beginning of the piece.
> 
> Problem is, I'm sort of at a loss for ideas about how this could be done. 
> Is there a way to feed cat file creation time rather than file name? 

No .

B.t.w. you could also use `dd', with the `notrunc' parameter . That is
more optimized for this task.

> It's 
> not really so important that the name of the file I am cat'ing be 
> preserved, so much as that the file being cat'ed to have an informative 
> name. So, I'm casting about for ways of automating this process of joining 
> movements together into the full pieces of which the movements are a part. 
> Suggestions?

This will....
~: echo 'Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement1.mp3' | \
 sed 's/^\(.*\)-movement\([0-9]*\).mp3$/\1_FULL.mp3/g'
result in: 
 Snooty-Composer1-highflownsymphony-inGmajor-Op.89674_FULL.mp3

Note the nonlinebreak after the pipe is done because of the linewidth in
e-mail.. 

> Thanks, James

The GLUE at the GNU/Linux , Unix type command-line provides was already
there long before. Pls. Have a look at the `UNIX philosophy' since I 
think it will give some more insight in the background of these tasks
you are trying to accomplish.

http://www.google.com/linux?hl=en&lr=&q=unix+philosophy&btnG=Search

Success, 
J.

--
Don't worry Ma'am. We're university students, - we know what we're doing.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
