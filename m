From: qwms-avib@dea.spamcon.org
Subject: scrambled screen
Date: Sun, 01 Jun 2003 18:14:17 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <S264743AbTFAWHa/20030601220730Z+2199@vger.kernel.org>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Over the years, I have used Linux on a dozen different computers 
and have never run into this problem before.  I've just installed 
Slackware 7.1 on a Compaq 400 (MMX) with S3 Virge video card.  
Everything is working OK (including the XFree 3.3.6 S3V server) 
except that when, I exit X and return to the console, the screen 
is scrambled. 

I don't mean the messed-up characters you get when you cat a non-
text file (which is easily fixed).  That only affects the current 
tty.  The problem I am getting affects all ttys and isn't just a 
character problem.  The whole screen layout is stuffed.  Lines are 
fragmented and scattered all over the screen, and the cursor is 
way over on the right side of the screen.  I can type (and execute)
at the cursor, but everything I type appears in two or three 
different places around the screen.

I have tried everything I can think of (clear, reset, exit and re-
logon) and nothing fixes the problem.  Switching ttys doesn't help.  
The only way to get a normal CLI screen is to reboot.  The X screen 
is not effected (even from the scrambled CLI screen I can startx).

Some further data:  The problem occurs as soon as the S3V server 
starts -- if I CTRL-ALT-F4 while X is running, I see a scrambled 
screen.  The problem does *not* occur when I run the VGA16 server.  
Both of those servers work perfectly in every other respect.

Any ideas?

Cheers,
Steven


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
