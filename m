From: Ray Olszewski <ray@comarre.com>
Subject: Re: bad interpreter: Permission denied
Date: Sat, 13 Apr 2002 09:35:08 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020413163508.00be7748@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Jerry T <linuxl1@hotmail.com>, linux-newbie@vger.kernel.org

"bin" isn't a magic word on Linux systems that makes a file executable. In
fact, there are no magic-word extensions on Linux for this purpose. What
governs executability is the file's mode. Check this with

        ls -l complete.filename

while in the directory that holds the file. The man page for "chmod" or "ls"
will tell you how to interpret the results. If you need help with that part,
post the results here.

Your problem might be that the file is not executable -OR- that it is
executable but not by the userid you are logged in under (but you did try
root, which elminates this second possibility). -OR- the file might be
running a script that has a shebang (#!) line pointing to an interpreter not
on your system (or not in the path the script expects it to be in).

The file may also be an archive file of some sort, not an executable. Linux
archives rarely use the .bin extension (it's most commonly used on Macs, as
I recall) ... but who knows in this particular case? Can you un'tar it?

At 04:13 PM 4/13/02 +0000, Jerry T wrote:
>
>After downloading the Java SDK for Linux and trying to run the "bin" file, I 
>get the following error:
>
>bad interpreter: Permission denied
>
>I have tried downloading different versions of the bin file and have tried 
>running the bins as root and as a user. Always the same error.
>
>Have also tried different shells (sh & csh) but same error. I thought that I 
>had run bin files in the past to install software. What causes this error?


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
