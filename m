From: James Miller <jamtat@mailsnare.net>
Subject: Re: help with joining files
Date: Sat, 16 Apr 2005 12:27:21 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504161157300.5717@localhost.localdomain>
References: <Pine.LNX.4.21.0504161353590.542-100000@hestia>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0504161353590.542-100000@hestia>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks for your response, J. I'm faced with a fairly complex task here. I 
suppose a more reasonable man would say, "heck with this. I'm gonna go buy 
myself some CD's." But if I were a more reasonable man, I wouldn't be 
using Linux, now would I? . . . :)

Some of what you're saying is a bit beyond me. I'd kinda like to get to 
the point where I could understand it better, and understand the 
philosophy better (at the link you provide). But I'm sort of an old hacker 
(I use that term in its old-fashioned, non-technical sense), so at the 
very least I'll have to get there very slowly and gradually.

Your assumption about movement numbers is wrong, unfortunately. I tried to 
make that clear in my note to the list, but apparently did not succeed. So 
the bash examples you give are not going to get me too far--at least not 
that I can see. But I was able to use some things in your post to help 
automate things a bit more: I'm now using the "ls -l partial_file_name 
<tab>" to get the salient information in a more discrete place from which 
I can copy and paste. I do have to do some "ls partial_file_name <tab>ing" 
to even get to the point where I can use ls -l (-l gives me the time 
information I need in order to cat things together in the right order), 
but I've already reduced the number of steps to get full_piece.mp3.

Here's a more real world example of what I'm doing:

me@mymachine:~/radio/editing/classcl$ ls -l 
Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_*
-rw-r--r--  1 me me 9617922 2005-04-15 13:50 
Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Adagio_-_Allegro.mp3
-rw-r--r--  1 me me 5612894 2005-04-15 13:56 
Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Andante_con_Variazioni.mp3
-rw-r--r--  1 me me 8120985 2005-04-15 14:08 
Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Finale-_Allegro_vivace.mp3
-rw-r--r--  1 me me 2760026 2005-04-15 13:59 
Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Minuetto.mp3
me@mymachine:~/radio/editing/classcl$ cat 
Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Adagio_-_Allegro.mp3 
>~/radio/editing/Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4.mp3
me@mymachine:~/radio/editing/classcl$ cat 
Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Andante_con_Variazioni.mp3 
>>~/radio/editing/Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4.mp3
me@mymachine:~/radio/editing/classcl$ cat 
Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Minuetto.mp3 
>>~/radio/editing/Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4.mp3
me@mymachine:~/radio/editing/classcl$ cat 
Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_Finale-_Allegro_vivace.mp3 
>>~/radio/editing/Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4.mp3
me@mymachine:~/radio/editing/classcl$ mv 
Anton_Reicha-_Albert_Schweitzer_Quintett__-_WInd_Quintet_No.22_in_E_minor_Op.100_No.4-_* 
~/radio/editing/parts-done/
me@mymachine:~/radio/editing/classcl$

I don't really need file permissions information, so using the -l switch 
is overkill. But so far I have not determined how I can get the time 
information I need without the other, file permission info.

On Sat, 16 Apr 2005, J. wrote:

> Unix and GNU/Linux type systems do not store the file creation time as
> static information. There are `three sorts of time` that are stored with
> each file:
>
> C time - changed time info of the corresponding inode,
> M time - last modified time,
> A time - last access time
>
> These can be changed by other programs. For example `touch' . So be
> careful how you implement this and how you group corrosponding files by
> time .

I'm not doing anything with these files after they're saved to my HD other 
than listing them (like, with ls) or looking at contents of directories 
with mc. Could any of these change the time information ls -l gives me?

> Personally I would have renamed each file correctly according to the
> task I wanted to preform right from the start, thus to include
> the last modified UTC time in the filename. That way you can list each
> file belonging to a certain group `sort -n' them by time and concat them
> as appropiate.

Good idea. I'm just technically-challenged enough that I have no idea how 
to do this (or even where to start) where it concerns recording streaming 
audio. I suppose I'd need to make streamripper run as part of a larger 
script that would likewise invoke Flemming's remove_invalid, etc. Mind 
boggling!

> B.t.w. you could also use `dd', with the `notrunc' parameter . That is
> more optimized for this task.

I'll look into this.

> The GLUE at the GNU/Linux , Unix type command-line provides was already
> there long before. Pls. Have a look at the `UNIX philosophy' since I
> think it will give some more insight in the background of these tasks
> you are trying to accomplish.
>
> http://www.google.com/linux?hl=en&lr=&q=unix+philosophy&btnG=Search

Thanks for the link.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
