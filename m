From: Mark Seger <Mark.Seger@hp.com>
Subject: Performance monitoring made easy
Date: Sat, 15 Dec 2007 11:51:29 -0500
Message-ID: <47640611.4070406@hp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Trying to figure out what's happening on your system can be a 
challenge.  There are a lot of utilities to choose from such as top, 
sar, iostat and a bunch of others.  The challenge is trying to figure 
out which to run and to have multiple windows open if you need to run 
more than one at a time.  Each even has a different output format!

There should be an easier way and now there is.  It's a tool I wrote a 
number of years ago and released on sourceforge this past summer.  You 
basically tell it what you want to monitor (I won't bore you with just 
how much, but just about anything you can think of is in there) and it 
shows you everything on one window in a simple to read and consistent 
display.  If you just want to run it continuously as a service, no 
problem as it can do that too.  How about graphics?  Unlike some tools 
in which only generate graphics, collectl data can be saved in a form 
suitable for gnuplot or even loadable into rrd.  To learn more, you can 
either see some examples at http://collectl.sourceforge.net/ or just 
download the rpm, install it and type collectl.  You'll immediately 
start seeing cpu, disk and network stats with plenty of switches to 
customize what you see and how you see it.

-mark


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
