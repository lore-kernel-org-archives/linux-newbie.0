From: Ray Olszewski <ray@comarre.com>
Subject: Re: Highly unusual crashes.
Date: Sun, 30 Jun 2002 09:07:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020630085448.02095700@celine>
References: <20020630075334Z314596-685+1086@vger.kernel.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020630075334Z314596-685+1086@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: adam@luchjenbroers.com, linux-newbie@vger.kernel.org

Richard gave you the right general answer. I'll supplement it here with 
some specific questions you should answer in a followup.

1. What version of Linux (distribution name and number), and what kernel 
("uname -a")?

2. What version of X (mainly 3.something or 4.something, but the exact 
number would be nice)?

3. Did X *ever* work on this system?

4. What video card do you have? What video card driver is your X setup 
using? How did you pick it?

5. What hsync and vsync are you using for your monitor and are they 
consistent with the physical capabilities of your monitor (this should be 
reported in its manual). Your config file may call these settings HorizSync 
and VertRefresh, BTW.

6. Is the first part of your description referring to a failure that occurs 
when in command-line (not X) mode? If so, please report more detail, like

         A. Under what circumstances does this happen?
         B. What do you mean by "locks up"? What have you actually *tried* 
to restore the screen?
         C. Do you have any power conservation settings enabled on the system?
         D. Do you have any BIOS-level screen blanking settings active?
         E. Are you running in basic command-line mode or are you using the 
framegrabber? If you are using the framegrabber, what screen resolution 
(characters x lines)?

7. When you say "I'm surprised I can get in", what method of access are you 
referring to? It sounds like you mean telnet or ssh, but I can't really be 
sure, and the answer would be instructive.

At 05:27 PM 6/30/02 +0930, Adam Luchjenbroers wrote:

>Screen just goes black or locks up.
>
>Under X it locks up with a blue screen and a white line.
>
>No apparent cause, I did nothing that could've caused it. I'm surprised I can
>get in as it was doing it on boot (yes, even to failsafe). I have no idea
>what could've caused it or what the problem might be.
>
>Will try another reboot and see what happens. Perhaps this has gone as
>mysteriously as it came. Got me puzzled.




--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
