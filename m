From: Peter <pfheiss@philonline.com>
Subject: Strange Mice Behavior
Date: Sun, 30 Mar 2003 11:56:14 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303300356.h2U3uEM03859@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Since I did not get any reply to my mail below I helped myself with putting 
the following 2 lines in /etc/profile:

gpm -k
gpm -t ps/2 -m /dev/mouse

Now the Kesington mouse works correctly on the console and in X, however the 
Benq mouse which BTW is a wheel mouse still goes crazy in X.

Is there a better way of getting the mice to work? Now I have first to open 
root to make the mouse work and when opening user I get the error message that 
I have no permission.

----------
Hi,

I recently bought a new mouse since the old one is graying. Both ps2 mice 
behave properly under RH7.3 on the console and in X.

In Slackware 8.0 each behaves differently. One, a Benq, functions correctly on 
the console, however, goes crazy in X, which then I have to abort with 
ctrl-alt-backspace.  The other mouse, a Kensington, is the reverse. It does 
not work on the console, yet perfectly in X.

When I have started X with the Kensington mouse in SW8.0 and then change to 
the Benq mouse that one will then work in X.

Is there any explanation and could it be corrected and how?

Thanks & regards
-- 
Peter


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
