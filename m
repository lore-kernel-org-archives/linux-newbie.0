From: John Kelly <bilbo@waitrose.com>
Subject: Re: bash scripting
Date: Sat, 14 Aug 2004 22:31:51 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040814223151.28361ec9.bilbo@waitrose.com>
References: <411E779D.6060209@dpomeroy.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <411E779D.6060209@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
I just tried to run the '#!/bin/env bash ' version of this script and
I
got:=================================================================
===== jpk@debian:~/scratch$ ./test.sh
bash: ./test.sh: /bin/env: bad interpreter: No such file or directory
======================================================================
On my system env is in /usr/bin. 
===================================
jpk@debian:~/scratch$ which env
/usr/bin/env
===================================
So this is essentially the same error as before - you are telling the
shell to run a program which is not where you say it is. 

You can use the original version of the program and pass the correct
location of the bash interpreter to it. eg the first line should be
something like:#!/correct/path/to/bash
Of course the /correct/path/to/bash on my system is /bin/bash
 
Or use the later version and pass the correct location of env to it.
eg the first line should be something like:#!/correct/path/to/env bash
On my system the /correct/path/to/env is /usr/bin/env

Both of these work on my system. 

Here's hoping I have not added to your confusion :-)

regards,

John Kelly

On Sat, 14 Aug 2004 12:35:41 -0800
dave <dave@dpomeroy.com> wrote:

> OK I installed Mandrake 10 official and all things seem to be
> normal.  I still get the same message when I try to run a bash
> script.
> 
> #!/bin/env
> bash
> 
> 
> shopt -s -o nounset
> 
> declare LINE
> 
> exec 3< /home/dave/scripts/test.dat
> 
> while read LINE <&3 ; do
>   printf "%s\n" "$LINE"
> done
> 
> exit 0
> 
> and here is the error message I get.
> 
> [dave@dave scripts]$ ./new.sh
> : bad interpreter: No such file or directory
> [dave@dave scripts]$
> 
> Anyone have any ideas.  I used whereis bash and it returned
> /bin/bash.  Everything seems normal and I guess I'm over my head. 
> Anyone with any suggestions?
> 
> Thanks in advance.
> Dave
> 
> -- 
> Dave Pomeroy K7DNP SouthEastern Washington
> 
> -
> To unsubscribe from this list: send the line "unsubscribe
> linux-newbie" in the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
