From: Ray Olszewski <ray@comarre.com>
Subject: Re: Should the tr command be run on text files ONLY?
Date: Fri, 11 Mar 2005 18:10:46 -0800
Message-ID: <5.1.0.14.1.20050311180556.02022958@celine>
References: <p05111b00be57f9e8c6d9@[65.30.110.44]>
Mime-Version: 1.0
In-Reply-To: <p05111b00be57f9e8c6d9@[65.30.110.44]>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:49 PM 3/11/2005 -0600, Bob Batson wrote:
>Should I run the command `tr \\r \\n <macfilename> <unixfilename>' (minus 
>the quotes) in A Terminal on textfiles ONLY or will tr harm any binary files?
>
>After I migrate to Linux in a few months, I was planning to copy a large 
>folder of text files to my home directory from a Macintosh. I was then 
>going the open the terminal, cd to the directory of text files  and enter 
>`tr \\r \\n *'. But I just remembered that this folder (and sub-folders) 
>of text files (called N0TES) also contains some pdf, jpeg, tiff, html, and 
>mp3 files.
>
>I was going to do this because I want to use some of the *NIX editors 
>(Emacs, pico, hopefully NEDIT, and maybe nano) on some of these files.
>
>Thanks in advance for any answers!

DEFINITELY run this command only on text files. It will render binary files 
unusable in most cases and never be good for them. Executables are sure to 
be unusable, and files like video, sounds, and images will have errors in 
them that may wreck them or may just introduce bits of distortion.

BTW, most Linux systems have the commands todos and fromdos to simplify 
this sort of translation from DOS-based systems (including Windows). which 
use \r\n instead of \n. As I recall, Macs use yet another convention for 
text file newline encoding ... your example above implies Macs use \r by 
itself, which matches my memory of 10 years ago ... and I wouldn't be 
surprised if there was a converter for it too.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
