From: Kari Hurtta <hurtta+linux-newbie@leija.mh.fmi.fi>
Subject: Re: chmod u+s confusion
Date: Mon, 24 Apr 2006 16:48:13 +0300 (EEST)
Message-ID: <200604241348.k3ODmDej009155@leija.fmi.fi>
References: <1144402873.8482.14.camel@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1144402873.8482.14.camel@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: largret@gmail.com
Cc: linux-newbie <linux-newbie@vger.kernel.org>

> Hey,
> 
> I've used chmod to set suid for a file before and thought I had a good
> grasp of how it worked. Recently I've found myself trying to set it for
> a script. Here's what I see ($ denotes user account, # is root):
> 
> $ echo -e '#!/bin/sh\n\nwhoami'>whoami.sh
> # chown root:root whoami.sh
> # chmod 4755 whoami.sh
> $ ./whoami.sh
> chris
> # chmod u+s `which whoami`
> $ whoami
> root
> 
> [Note: u+s is equivalent to 4xxx, sorry for the change-up]
> 
> So... why doesn't this make whoami.sh run the 'whoami' program as root?
> It's worked for the programs whoami, and is a common mode set on
> cdrecord.
> 
> Thanks for your help (and enlightenment).
> 

Bash (/bin/sh) may be own check if it is run on root.

But there is also another problem with running setuid scripts.

It is following:

Lets assume that script is  named as "Script"

and file Script have first line

#!/bin/interpreter


When kernel gets execve("Script", ... ) system call, it check what
loader it should use. When program start with #! kernel instead
runs program given on that line and giving script file name as argument.
So it is like
	/bin/interpreter Script

is called.


Now there is problem (perhaps also other problems). If Script
is replaces with another file between /bin/interpreter is started
and when  /bin/interprete opens file given as argument, then
/bin/interpreter is opened and interpreting wrong file.

This is specially problem if Script is setuid root. Then /bin/interpreter
is execured as root.  Then it is better that file, what /bin/interpreter
is opened, is same than for which kernel started /bin/interpreter as root.


I do not know how linux hanles that. My impression that many systems
do not honor setuid bit on scripts because of this.


/ Kari Hurtta




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
