From: 1stFlight <1stflight@ameritech.net>
Subject: Re: Suggestion for help-page?
Date: Sun, 28 Apr 2002 17:04:40 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200204281704.40861.1stflight@ameritech.net>
References: <20020428204526.57270.qmail@web12808.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020428204526.57270.qmail@web12808.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Staci <spiritlover666@yahoo.com>
Cc: linux newbie <linux-newbie@vger.kernel.org>

try this 

--begin--
   #!/bin/bash

cp -uv /home/me/*.mp3  /music/

--end--

All it's will do is copy any file ending in .mp3 to your /music directory. 
Note: Linux is case senstive and Windows is not, so the limit this script has 
is that it wont copy a MP3 file. Easily fixed and I know there's neater way 
of doing it, but I don't how to do it. Also when you create the file don't 
forget to make it executable, meaning...   "chmod u+x filename "

					Darryl

P.S. No worries about permissions, fat32 doesn't support them. Note: leave out 
the "begin" and "end" lines

On Sunday 28 April 2002 04:45 pm, Staci wrote:
> Hi!
>
> I want to write a tiny simple bash script for moving
> downloaded mp3s from my /home/me directory to my
> /music directory.
> (Due to /music being fat32, it's actually a process,
> cuz permissions with winFSs are goofy)
>
> Can someone suggest a very VERY newbie-friendly
> help-page for beginners trying to write a script?
>
> Thanks!
> sl
>
> =====
> **************************
> In cyberspace nobody can hear you scream.
>
> __________________________________________________
> Do You Yahoo!?
> Yahoo! Health - your guide to health and wellness
> http://health.yahoo.com
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
