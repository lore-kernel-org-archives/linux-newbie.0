From: John Kelly (bilbo) <bilbo@waitrose.com>
Subject: Re: [OT] Development workflow
Date: Wed, 2 Jul 2003 19:47:07 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030702184108.GRUV2652.mta03-svc.ntlworld.com@there>
References: <3EFFE4A0.1070800@shaw.ca>
Reply-To: bilbo@waitrose.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EFFE4A0.1070800@shaw.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chris Rose <offline@shaw.ca>, linux-newbie@vger.kernel.org

On Monday 30 June 2003 8:20 am, Chris Rose wrote:
> Can any of the linux users on here who still develop on the console
> (preferably w/ vi, since i'm not really an emacs fan {/me ducks}) weigh
> in with tips on how their workflow actually runs?  How do you organize
> things, what programs do you need, etc...  Note that i'm thinking
> specifically of c++ here, and i'll probably be using the gcc compiler
> toolkit.  At this stage of my development, while i can read individual
> snippets of c++ code and understand them, i'm still not very good at
> figuring out how they fit into the larger context of a program.  (this
> last bit of self-description is by way of showing how little i know so
> you'll use small words and write slowly ;)
>
> I'm totally unfamiliar w/ development like that, having only ever worked
> in IDEs, and it happens that i'm gonna have to learn how to do it next
> year, so i want to get a jump on it.  Incl. debugging.
>
> Thanks in advance.
Hi,
I am not sure if I should answer this or not as:
1) My favourite statement was 'I am not a developer'  when I was working in 
IT  and 
2) I only 'don't develop' in perl C and bash.
But  as my last employer is still running many things I wrote and/or modified 
on my 486 laptop - to slow running a window manager, here goes:

The only things you really need are an editor and a compiler ie vi and gcc.

Make (man make) is useful for larger projects.
gdb (the GNU debugger) is useful but I normally just compiled the stuff and 
either got it to print or log lots of debugging or I used strace (man strace).

Getting to know vi very well also helps. I used vim - an improved vi which is 
used as vi on many systems and there are many tricks which help. 
The syntax options that come with vim can make writing code easier. See the 
vim documentation under /usr/share or /usr/local/share.
  
If you need to keep track of what you are doing then you need a versioning 
system. I used to use RCS (man -k rcs) as it was used at work. But cvs (man 
cvs) is probably better and more common 
The next thing I would look at is ctags ( man ctags), a program which helps 
to find the source file containing a specific function.

Other programs I used were:
gprof	Tells how long a program spends in each function
time	How long a program takes to run 

Other useful, but more advanced programs which I havn't used  but I  took 
from the Linux in a  Nutshell book are:
ar 	Create amd update library files
as 	Generate object files  
bison 	Generate parsing tables
ld	Link editor
flex	Lexical analyzer
m4	Macro processor
yacc	Generate parsing tables. 

One of the developers at work thought electric fence (checks memory 
allocation) was the most useful tool ever but I never used it.

As for workflow, I never wrote anything big or complex so I may not be the 
best person to advise. 
If I were modifying something, I would download the original source code to a 
new directory. Try to figure out how it worked and then go through a cycle of 
edit, compile and test. until I was happy with what I got. 

When writing something from scratch, I would start with skeleton code 
complete with dummy functions. I would go through my edit, complie and test 
routine and flesh it out as I went. 

Not very scientific but it worked for me. 

Where I worked nearly everything was custom written or heavily modified. Some 
people's code was logically laid out with useful comments and was very easy 
to read and modify if necessary. The real 'geniuses' wrote code which worked 
but was totally unintellible. I spoke to the chief developer there recently 
and he has the task of fixing some perl code, 35,000 lines long written by a 
guy, who didn't' know about comments, scoping variables or modules. 
Not nice.  

My advice would be:-
Comment your code, lay it out logically and don't be too clever.

Hope all this helps.

regards,

John Kelly
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
