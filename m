From: Jeff Woods <Kazrak+kernel@cesmail.net>
Subject: Re: parsing a string
Date: Tue, 10 Aug 2004 02:48:15 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <6.1.1.1.0.20040810023334.065d0980@no.incoming.mail>
References: <1092096481.411811e1bc136@webmail.dpomeroy.com>
 <41182F0A.9070807@rcn.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41182F0A.9070807@rcn.com>
References: <1092096481.411811e1bc136@webmail.dpomeroy.com>
 <41182F0A.9070807@rcn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: John Aspinall <jgaspinall@rcn.com>
Cc: dave@dpomeroy.com, linux-newbie@vger.kernel.org

At 8/9/2004 10:12 PM -0400, John Aspinall wrote:
>dave@dpomeroy.com wrote:
>>I'm new to bash and am trying to write a script that puts 3 substrings in 3
>>variables.  I have a string with password,firstname,lastname. and I need 
>>it to
>>be in 3 variables.
>
>I'm just an apprentice here, but I think "cut" is a good choice of tool.
>
>$ echo 'password,firstname,lastname' | cut -d',' -f1
>password
>$ echo 'password,firstname,lastname' | cut -d',' -f2
>firstname
>$ echo 'password,firstname,lastname' | cut -d',' -f3
>lastname
>
>-d is the field delimiter, -f says which fields you want

I agree that "cut" is a wonderful tool on the command line.  However, a 
more purely bash solution is to use a powerful feature of variable 
expansion in bash.  For example:

pass_first_last='password,firstname,lastname'
pass=${pass_first_last%%,*}
first_last=${pass_first_last#*,}
first=${first_last%,*}
last=${first_last#*,}
or, alternatively,
last=${pass_first_last##*,}

The "#" operator in variable expansion takes a pattern argument and removes 
as little as possible from the left side of the variable value that matches 
the pattern.
The "##" operator in variable expansion takes a pattern argument and 
removes as much as possible from the left side of the variable value that 
matches the pattern.
The "%" operator in variable expansion takes a pattern argument and removes 
as little as possible from the right side of the variable value that 
matches the pattern.
The "%%" operator in variable expansion takes a pattern argument and 
removes as much as possible from the right side of the variable value that 
matches the pattern.

A common use for this is to extract the final filename from a pathname:

filename=${pathname##*/}

Another is to extract the directory path name from a file's path:

dirname=${pathname%/*}

P.S.  I was trying to use cut to extract one field from a file using FS 
(\0x1C) as the field delimiter.  I discovered it was non-trivial to get the 
FS into my cut command.  The solution turned out to be a "string expansion" 
in bash:

cut -d$'\x1C' -f2 filename

--
Jeff Woods <kazrak+kernel@cesmail.net> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
