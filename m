From: Ray Olszewski <ray@comarre.com>
Subject: re: getting serial ports on STB4COM UP
Date: Sun, 19 Jan 2003 08:06:29 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030119080202.021b9570@celine>
References: <CPIMSSMTPU05QVjp3b6000002ae@cpimssmtpu05.email.msn.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CPIMSSMTPU05QVjp3b6000002ae@cpimssmtpu05.email.msn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwbackup@worldnet.att.net>, "Majordomo leben.com" <linux-newbie@vger.kernel.org>

At 06:04 AM 1/19/03 -0800, Alan Womack wrote:
>[...]
>It appears one of those two modifications has port 2 working correctly 
>now.  Port 3 and Port 4 still share IRQ 15, and although the pausing is 
>noticebly shorter for port 3, it is still quite slow.  Therefore I have to 
>conclude there is an issue with sharing 15 for some reason.  Next time I 
>take my server down, I will move port 3 to share IRQ 3 and see what happens.


D'oh! I should have asked this before: How many IDE devices do you have in 
the system? The secondary IDE channel normally uses IRQ 15. Trying to have 
serial ports share an IRQ with an IDE controller could eaily lead to long 
delays (or even complete failure - I've never tried this). If you are not 
actually using the secondary IDE channel, turn it off in the BIOS. If you 
are using it, move the serial ports to some otherwise unused IRQ (look in 
the 9-12 range for possibilities, though what's free depends on the 
specifis of your system).


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
