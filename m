From: docv <docv@sbcglobal.net>
Subject: Re: Suggestion for help-page?
Date: Sun, 28 Apr 2002 18:08:29 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CCC80ED.4050301@sbcglobal.net>
References: <2.2.32.20020428222404.010b3648@[192.168.1.23]>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: Staci <spiritlover666@yahoo.com>, linux-newbie@vger.kernel.org

As one very newbie to another,

Wouldn't it be "safer" to use 'mv' instead of 'cp' and 'rm'? That way, 
if the destination dir didn't exist (/industgoth/new) the script would 
error out and not have removed any of the mp3 files from the original 
location.

Also, was there a special reason for the copying them to the root dir 
instead of straight to the destination dir?

Ray Olszewski responded to:

>>I made one called test, it contained just this...
>>
>>#!/bin/bash
>>cp /home/staci/*.mp3 /
>>cp /*.mp3 /industgoth/new
>>rm /*.mp3
>>rm /home/staci/*.mp3
>>

-- 
Steve
docv@sbcglobal.net

In a world without walls and fences there is no need for windows nor gates.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
