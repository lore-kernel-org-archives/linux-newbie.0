From: Ray Olszewski <ray@comarre.com>
Subject: Re: Suggestion for help-page?
Date: Sun, 28 Apr 2002 15:24:04 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020428222404.010b3648@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Staci <spiritlover666@yahoo.com>, linux-newbie@vger.kernel.org

At 02:34 PM 4/28/02 -0700, Staci wrote:
>See, this is why I needed a help page.

Well ... it's why you need help, anyway. At this level, bash script syntax
just isn't very tricky. Whatever is wrong with you "test" script isn't all
that apparent, so I doubt that a "very VERY newbie-friendly help-page for
beginners" would help you much in troubleshooting this problem.

>I made one called test, it contained just this...
>
>#!/bin/bash
>cp /home/staci/*.mp3 /
>cp /*.mp3 /industgoth/new
>rm /*.mp3
>rm /home/staci/*.mp3
>
>That's the sequence I'd go thru if I did it by hand. 
>And I ran it as root cuz only root has access to that
>/industgoth dir.
>And they're GONE.  All 20 or so of them.
>They're not in /industgoth/new, not anywhere.  Why???
>:(

They are gone from their old location because you rm'ed them. Same thing for
the intermediate location (/). That's why they are "not anywhere". So one
obvious change is to get rid of the two rm lines, then run a script with
just the first 3 lines and see what happens. 

The interesting question is why they are not in /industgoth/new/, not why
they aren't "anywhere". Assuming the directory /industgoth/new/ exists, is
writable, and has enough room on the filesystem, I'd expect the mp3 files to
have made it there. (I would suggest changing the line to read
/industgoth/new/, with a trailing /, just to be safe.) 

In short, what you've written should work.

So why not offer up some details, like:

        ls -l /home/staci/*.mp3         before you run the shorter script
        ls -l /*.mp3                    after you run the shorter script
        ls -l /industgoth/new/          after you run the shorter script
        df                              after you run the shorter script
        ls -l /industgoth/              before -AND- after you run
                                                the shorter script

All this after you put a few *.mp3 files in /home/staci/, of course.


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
