From: Alan Womack <arwbackup@worldnet.att.net>
Subject: Re: Trouble with serial ports
Date: Sun, 3 Nov 2002 21:33:06 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CPIMSSMTPU03yeKzGZu000000c5@cpimssmtpu03.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

 >>  > The STB 4Com card came to me used, I have attempted to set the card up
 >>  in a manner as such:
 >>  >
 >>  > setserial /dev/ttyS04 baud_base 9600 irq 15 port 0x03E8 ^fourport
 >>  ^skip_test
 >>  > setserial /dev/ttyS03 baud_base 9600 irq 15 port 0x02F8 ^fourport
 >>  ^skip_test
 >>  > setserial /dev/ttyS02 baud_base 9600 irq 15 port 0x02E8 ^fourport
 >>  ^skip_test
 >>  > setserial /dev/ttyS01 baud_base 9600 irq 3 port 0x02A8 ^fourport
 >>  ^skip_test

 >>  Wy are you doing this?  The baud_base of a 16550a is 115200 unless this
 >>  is very strange hardware indeed.  The baud base is just used by the
 >>  serial driver to choose which divisor to set for a requested speed.
 >>  A baud base of 9600 with a requested speed of 9600 give a divisor of 1,
 >>  which will make a normal 16550a run at 115200.
 >>  It won't see anything coming over the cable at 9600, or maybe a little
 >>  garbage.

It is certainly not clear in the documentation.  That's one of my biggest time wasters with linux is the ambiguity of documentation.  A clear usage example would go a LONG WAYS in helping in the man page.  Maybe someday I will know enough to make some of those updates, make the diff patch and send it off to the maintainer to get it ignored.

 >>  Probably because you didn't mess with the baud_base.

I believe you may be correct, a quick grep of my .bash_history showed no setserial on that line.

 >>  >
 >>  > The cable pin out is db9:
 >>  >
 >>  > 2  -- 3
 >>  > 3 -- 2
 >>  > 4 --  6+1
 >>  > 5 -- 5
 >>  > 6+1 -- 4
 >>  > 7 -- 8
 >>  > 8 -- 7
 >>  >
 >>  >
 >>  > On windows I am using Terra Term Pro, a freeware serial/telnet client. 
 >>  I have no flow control selected and 9600 8 n 1 as my settings.
 >>  >
 >>  > On linux I have used term with term /dev/ttyS00 9600 8 n 1
 >>  > I have used od -v /dev/ttyS00
 >>  > I have used  stty -F /dev/ttyS00 raw -echo 9600 ; cat /dev/ttyS00 >
 >>  /tmp/0.txt
 >>  >
 >>  What do you have against minicom or cu?  Or try if Wine will run Terra
 >>  Term Pro.

I use Terra Term Pro on the windows box, there is no X on my lfs box.  Minicom I read was difficult to work with a make sure it did what you told it to do, therefor I'm using term and od and stty now for testing.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
