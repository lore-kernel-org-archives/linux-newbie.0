From: "J." <mailing-lists@xs4all.nl>
Subject: Re: help with joining files
Date: Sat, 16 Apr 2005 21:15:24 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0504162003510.868-100000@hestia>
References: <Pine.LNX.4.61.0504161157300.5717@localhost.localdomain>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504161157300.5717@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, 16 Apr 2005, James Miller wrote:

> Thanks for your response, J. I'm faced with a fairly complex task here. I 
> suppose a more reasonable man would say, "heck with this. I'm gonna go buy 
> myself some CD's." But if I were a more reasonable man, I wouldn't be 
> using Linux, now would I? . . . :)

;-) That's the spirit.. !

> Some of what you're saying is a bit beyond me. I'd kinda like to get to 
> the point where I could understand it better, and understand the 
> philosophy better (at the link you provide). But I'm sort of an old hacker 
> (I use that term in its old-fashioned, non-technical sense), so at the 
> very least I'll have to get there very slowly and gradually.
> 
> Your assumption about movement numbers is wrong, unfortunately. I tried to 
> make that clear in my note to the list, but apparently did not succeed. So 
> the bash examples you give are not going to get me too far--at least not 
> that I can see. But I was able to use some things in your post to help 
> automate things a bit more: I'm now using the "ls -l partial_file_name 
> <tab>" to get the salient information in a more discrete place from which 
> I can copy and paste. I do have to do some "ls partial_file_name <tab>ing" 
> to even get to the point where I can use ls -l (-l gives me the time 
> information I need in order to cat things together in the right order), 
> but I've already reduced the number of steps to get full_piece.mp3.
> 
> Here's a more real world example of what I'm doing:
> 
> me@mymachine:~/radio/editing/classcl$ ls -l 
> Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_*
> -rw-r--r--  1 me me 9617922 2005-04-15 13:50 
> Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Adagio_-_Allegro.mp3
> -rw-r--r--  1 me me 5612894 2005-04-15 13:56 
> Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Andante_con_Variazioni.mp3
> -rw-r--r--  1 me me 8120985 2005-04-15 14:08 
> Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Finale-_Allegro_vivace.mp3
> -rw-r--r--  1 me me 2760026 2005-04-15 13:59 
> Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Minuetto.mp3
> me@mymachine:~/radio/editing/classcl$ cat 
> Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Adagio_-_Allegro.mp3 
> >~/radio/editing/Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4.mp3
> me@mymachine:~/radio/editing/classcl$ cat 
> Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Andante_con_Variazioni.mp3 
> >>~/radio/editing/Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4.mp3
> me@mymachine:~/radio/editing/classcl$ cat 
> Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Minuetto.mp3 
> >>~/radio/editing/Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4.mp3
> me@mymachine:~/radio/editing/classcl$ cat 
> Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Finale-_Allegro_vivace.mp3 
> >>~/radio/editing/Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4.mp3
> me@mymachine:~/radio/editing/classcl$ mv 
> Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_* 
> ~/radio/editing/parts-done/
> me@mymachine:~/radio/editing/classcl$
> 
> I don't really need file permissions information, so using the -l switch 
> is overkill. But so far I have not determined how I can get the time 
> information I need without the other, file permission info.

The essential problem is; That you are trying to cluster or group strings 
that share similaritys to some extend.

The best way is not to; have to sort at all. 8 times out of 10 people
can save sorting by storing the info in the right way the moment it has
arrived.

Ehmm.. but I guess, for tab completion these files you could use the 
wildcard `*' in combi with `cut' . I will give some examples later down
the e-mail .

Back to the `ls' and file information as time, group etc..
As with many situations on the command-line, there are several ways that
lead to Rome, e.g. that could achieve this , it boils down to what you
personal prefer usually.

Personally I would go for a program that takes a printf statement. That
enables more flexibility generating appropiate filenames with a
bit of luck that makes sorting & classifying entries easier. 

printf used with `find' takes an argument which refers to a file property.
For example:
~: find . -type f -name '*.mp3' -printf "%A@_%f\n"

Now `find' finds all regulare files with names ending on .mp3 
and then calls printf with the arguments %A@ which stands for 
last access UTC time then a `_' underscore
''octal \137'' as seperator and finally %f which stands for the filename
itself ''without prepended directory path'', and \n which stands for a
newline . There are many arguments `find' can take . `man find' .

This previous example results in:
1113653372_Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement1.mp3
1113653375_Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement2.mp3
1113653379_Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement3.mp3 

But let's leave find for a moment .

I recreated all the filenames you have listed above in my /tmp/ dir with:
~: while read LINE ; do touch ${LINE} ; done < filenames.txt

Looking at the filenames I note that each group shares the same first few
characters ? Is that true ? If that is the case you could cut those first
characters off, uniq them with `uniq` and create a directory for each so
that you can move the files into them . That way you sorted/grouped each
file into its own directory and you will only have to access that
directory to access each independent group of files.
Example:

~: ls -1 *.mp3 | while read LINE ; do echo ${LINE} | cut -c -15 ; done

Will result in the output:
Anton_Reicha-_A
Anton_Reicha-_A
Anton_Reicha-_A
Anton_Reicha-_A
Anton_Reicha-_A
Snooty-Composer
Snooty-Composer
Snooty-Composer

If we pipe this on to `uniq`; W'll get:

Anton_Reicha-_A
Snooty-Composer

Read this input, to create an new directory for each entry. The complete
command will become:
 
~: ls -1 *.mp3 | while read LINE ; do echo ${LINE} | cut -c -15 ; done |
uniq | while read DR ; do mkdir ${DR} ; mv ${DR}*.mp3 ${DR} ; done

Now the directory /tmp/ in which I previously created you filenames 
will list:
~: ls /tmp/
Anton_Reicha-_A/ 
Snooty-Composer/ 

With each directory holding the all the shared files:
ls /tmp/Snooty-Composer/
Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement1.mp3
Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement2.mp3
Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement3.mp3

`cd' into the directory and:
~: cat *.mp3 >> /my/target/file.mp3

That last step could be automated without to much effort with the 
knowledge given above.

As an addition:
If you really want to do fancy you can use the levenshtein algorithm
to calculate the distance inbetween strings and sort them accordingly.
This is a great way to for example match character sequences that share
similiarities without positional parameters being out of bound. It works
by calculating the number of steps that it takes to transform one string
into another .

~:  levenshtein
Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement1.mp3
Snooty-Composer1-highflownsymphony-inGmajor-Op.89674-movement2.mp3

will result in a score of 1

But again.. that's more off-topic.

> On Sat, 16 Apr 2005, J. wrote:
> 
> > Unix and GNU/Linux type systems do not store the file creation time as
> > static information. There are `three sorts of time` that are stored with
> > each file:
> >
> > C time - changed time info of the corresponding inode,
> > M time - last modified time,
> > A time - last access time
> >
> > These can be changed by other programs. For example `touch' . So be
> > careful how you implement this and how you group corrosponding files by
> > time .
> 
> I'm not doing anything with these files after they're saved to my HD other 
> than listing them (like, with ls) or looking at contents of directories 
> with mc. Could any of these change the time information ls -l gives me?

Good question. Only listing files, the answer is no. As long if you
don't access the content you shouldn't be to worried. Just don't `touch'
them or access them for example with an editor.

> > Personally I would have renamed each file correctly according to the
> > task I wanted to preform right from the start, thus to include
> > the last modified UTC time in the filename. That way you can list each
> > file belonging to a certain group `sort -n' them by time and concat them
> > as appropiate.
> 
> Good idea. I'm just technically-challenged enough that I have no idea how 
> to do this (or even where to start) where it concerns recording streaming 
> audio. I suppose I'd need to make streamripper run as part of a larger 
> script that would likewise invoke Flemming's remove_invalid, etc. Mind 
> boggling!

Indeed good suggestion, 8 times out of ten, sorting etc.. is done
because people don't store the information correctly as it arrives.

> > B.t.w. you could also use `dd', with the `notrunc' parameter . That is
> > more optimized for this task.
> 
> I'll look into this.

`dd' is a great tool, you can copy everything like whole partitions and 
easily created images from disks. It's very standard and included in 
every base system install.

> > The GLUE at the GNU/Linux , Unix type command-line provides was already
> > there long before. Pls. Have a look at the `UNIX philosophy' since I
> > think it will give some more insight in the background of these tasks
> > you are trying to accomplish.
> >
> > http://www.google.com/linux?hl=en&lr=&q=unix+philosophy&btnG=Search
> 
> Thanks for the link.
> 
> James

I hope I left you with some clou's and workable idea's & info... 
Good Luck, The other J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
