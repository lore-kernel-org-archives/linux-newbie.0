From: Ray Olszewski <ray@comarre.com>
Subject: Re: bash scripting
Date: Sat, 14 Aug 2004 16:13:51 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040814155510.01f9a050@celine>
References: <411E779D.6060209@dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <411E779D.6060209@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:35 PM 8/14/2004 -0800, dave wrote:
>OK I installed Mandrake 10 official and all things seem to be normal.  I 
>still get the same message when I try to run a bash script.
>
>#!/bin/env
>bash
>
>
>shopt -s -o nounset
>
>declare LINE
>
>exec 3< /home/dave/scripts/test.dat
>
>while read LINE <&3 ; do
>  printf "%s\n" "$LINE"
>done
>
>exit 0
>
>and here is the error message I get.
>
>[dave@dave scripts]$ ./new.sh
>: bad interpreter: No such file or directory
>[dave@dave scripts]$
>
>Anyone have any ideas.  I used whereis bash and it returned /bin/bash.
>  Everything seems normal and I guess I'm over my head.  Anyone with any 
> suggestions?

You made two changes, not one. You both changed the distro install 
("installed Mandrake 10") -AND- changed the shebang line in the script 
("#!/bin/env"). The second change is definitely wrong.

Go back to the original shebang line ("#!/bin/bash") and see if it works 
now. It does on my system (that is, I get errors, but they involve my not 
having a file named /home/dave/scripts/test.dat).

Or make the first line (probably; check where "env' is on your system) 
"#!/usr/bin/env bash". It too works here (up to the same error).

BTW, if I have the interpreter name wrong, I get a slightly different form 
of error message from you (on a Debian-Sid install). Here, I changed "bash" 
to "nash" and got this:

-bash: ./testscript.sh: /bin/nash: bad interpreter: No such file or directory

Not sure why you're not seeing all that stuff to the left of the ": bad 
interpreter" part. Could just be a difference between your default shell 
and mine (2.05b-19). Or it might indicate something odd about your script 
that is not making it through a representation as e-mail.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
