From: Richard Dawson <rcdawson@att.net>
Subject: Re: scrambled screen
Date: Mon, 02 Jun 2003 20:13:03 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EDC123F.1030309@att.net>
References: <S264743AbTFAWHa/20030601220730Z+2199@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: qwms-avib@dea.spamcon.org, linux <linux-newbie@vger.kernel.org>

I have had the same problem!!!  You should see the mess you get in 
X-windows if you try to use version 4.X!

I was told that there is a program called vgareset that one can run to 
get the command line console squared away.  I was never able to find 
that probram, so I finally bought a different video card.

By the way, how did you get the sound card to run?  Mandrake 9.1's 
autoprobe doesn't seem to be able to find the sound card.

Rich Dawson
rcdawson@att.net

qwms-avib@dea.spamcon.org wrote:

>Over the years, I have used Linux on a dozen different computers 
>and have never run into this problem before.  I've just installed 
>Slackware 7.1 on a Compaq 400 (MMX) with S3 Virge video card.  
>Everything is working OK (including the XFree 3.3.6 S3V server) 
>except that when, I exit X and return to the console, the screen 
>is scrambled. 
>
>I don't mean the messed-up characters you get when you cat a non-
>text file (which is easily fixed).  That only affects the current 
>tty.  The problem I am getting affects all ttys and isn't just a 
>character problem.  The whole screen layout is stuffed.  Lines are 
>fragmented and scattered all over the screen, and the cursor is 
>way over on the right side of the screen.  I can type (and execute)
>at the cursor, but everything I type appears in two or three 
>different places around the screen.
>
>I have tried everything I can think of (clear, reset, exit and re-
>logon) and nothing fixes the problem.  Switching ttys doesn't help.  
>The only way to get a normal CLI screen is to reboot.  The X screen 
>is not effected (even from the scrambled CLI screen I can startx).
>
>Some further data:  The problem occurs as soon as the S3V server 
>starts -- if I CTRL-ALT-F4 while X is running, I see a scrambled 
>screen.  The problem does *not* occur when I run the VGA16 server.  
>Both of those servers work perfectly in every other respect.
>
>Any ideas?
>
>Cheers,
>Steven
>
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>  
>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
