From: Rei Shinozuka <shino@panix.com>
Subject: [bilbo@waitrose.com: Re: bash scripting]
Date: Sat, 14 Aug 2004 10:07:45 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040814140745.GB9530@panix.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

i agree, looks like bash is not in /bin.

you can start scripts:

#!/bin/env bash

or 

#!/bin/env perl

to find the interpreter in your path.

unfortunately, even this is not completely portable, as i have
seen env in /bin and /usr/bin.  

-rei

----- Forwarded message from John Kelly <bilbo@waitrose.com> -----

To: linux-newbie@vger.kernel.org
Subject: Re: bash scripting
Date: Sat, 14 Aug 2004 13:36:41 +0100
From: John Kelly <bilbo@waitrose.com>

Hi,
On Fri, 13 Aug 2004 23:35:14 -0700
"" <dave@dpomeroy.com> wrote:

> 
> 
> I wrote the following script to learn to read and write files.  No
> matter how I try to start it it doesn't work.  
> 
> #!/bin/bash
> 
> shopt -s -o nounset
> 
> declare LINE
> 
> exec 3< test.dat
> 
> while read LINE <&3 ; do
>   printf "%s\n" "$LINE" 
> done
> 
> exit 0
> 

I copied this into a file and it runs fine on my Debian system. I
think your error message gives a hint.

> this is the error 
> 
> [root@localhost scripts]# ./test.sh
> : bad interpreter: No such file or directory
> [root@localhost scripts]#
> 
 : bad interpreter: No such file or directory
 
Usually means that the system can't find the interpreter. ie when it
looks at the line:#!/bin/bash
it can't find /bin/bash. 
I have seen similiar problems with perl. Someone puts 
#!/bin/perl 
in a script. It works on one machine but if the script is moved to
another machine, it bombs out because the perl interpreter is in a
different place. 

I assume bash is on your system. Try running 
which bash
to find the path to the bash excutable. On most Linux systems it is
/bin/bash but I have seen /usr/local/bin/bash and /opt/bin/bash (on a
Solaris system).

Incidently, my standard way of writing scripts in vi is to type 
#!
Then type <ESC>
Then type : r ! which bash
This causes the path to bash appear on the line under the #! line.
I then move the cursor up one line and type J to join the lines.
This guarantees the correct path to the interpreter on the machine I
am using. But then you may not be using vi :-)

Hope this helps.

regards,

John Kelly
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

----- End forwarded message -----

-- 
Rei Shinozuka shino@panix.com
Ridgewood, New Jersey

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
