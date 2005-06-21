From: James Miller <jamtat@mailsnare.net>
Subject: xclock as screensaver?
Date: Tue, 21 Jun 2005 09:33:41 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0506210817240.5965@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I like using clocks as screensavers. Under Win some years ago, I found a 
nice digital clock with all kinds of configuration options like character 
color, etc. Under Linux, the closest thing I found to that was xdaliclock. 
I'd actualy prefer an analog clock though, and the only thing I've found 
so far is some sort of morphing analog clock made up of balls that moves 
around the screen. It's kind of hard to read. I would much prefer to use 
the old-fashioned xclock (e.g., what you get with xclock -norender -fg 
purple -hl purple -bg black). I was looking at something that made me 
think it might be possible to use xset to make xclock function as a 
screensaver at 
http://www.penguinsecurity.net/pensec/modules.php?name=News&file=article&sid=16 
, but my tests based on that article were unsuccessful. Likewise, I tried 
editing ~/.xscreensaver and adding xclock as an entry, since the man page 
seems to indicate xscreensaver can run programs. But that did not work, I 
think because xclock doesn't accept the -root option. For xscreensaver to 
use a program, it apparently has to be able to display on the root window.

In short, I've come up empty-handed in my attempts to get the 
old-fashioned xclock to function as a screensaver. Can anyone offer tips 
that might lead to success? Or is it just not possible to use the 
old-fashioned xclock as a screensaver?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
