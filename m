From: Peter Garrett <peterg@fishinternet.com.au>
Subject: Re: error: premature end of script headers in cgi
Date: Wed, 01 Sep 2004 07:04:02 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1093986242.15255.10.camel@DebiAnarchist>
References: <fc.004c4e000061b03e004c4e000061b03e.61b099@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc.004c4e000061b03e004c4e000061b03e.61b099@palmertrinity.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie list <linux-newbie@vger.kernel.org>

On Wed, 2004-09-01 at 00:47, William Stanard wrote:

> 
> [error] [client 10.0.4.126] Premature end of script headers: gm.cgi
> 
> I am guessing that in moving the cgi scripts to my Linux box via
> Dreamweaver, I "added" some bogus carriage returns or some such... How can
> I (first) see if that is what I did and (two) edit same...

Bill: I'm no expert, and perhaps someone more knowledgeable might be
able to explain better, but I believe your guess may be correct. The
carriage returns for DOS/Windows are different from those in UNIX (which
Linux more closely resembles, of course.) 

The program you want is probably the command-line utility dos2unix.
Seems to be pretty standard on most Linux installations. From "man
dos2unix":

" tofrodos - Converts text files between DOS and Unix formats.

SYNOPSIS
       fromdos [ options ] [file...]
       todos [ options ] [file...]

DESCRIPTION
       DOS  text  files traditionally have carriage return and line feed
pairs
       as their newline characters while Unix text files have the line
feed as
       their newline character.  fromdos converts text files from the
DOS for-
       mat to the Unix format, while todos converts text files from 
the  Unix
       format to the DOS format. ...."


Hope this helps...

Peter

-- 
Windows belongs to Microsoft: Linux belongs to humanity

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
