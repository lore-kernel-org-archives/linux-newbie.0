From: Davy Durham <davy@networkstreaming.com>
Subject: disabling all video
Date: Fri, 06 Aug 2004 16:53:15 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4113FDCB.2030307@networkstreaming.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Sorry if this is the wrong list to ask this.. direct me to the correct 
list if so...

Question: I would like the kernel not to use any of the video hardware 
on the machine.  Is there any run-time kernel parameter I can pass to 
disable all video?  (I tried console= to direct output to the serial 
port, but ttys were still using the vga hardware.)  My video card is 
built onto the mother board, and there is no way I see to disable it 
from the BIOS.
I was hoping there was an option such as vga=disable or video=null or 
something like that, but I've looked thru the docs and cannot find 
anything.

Thanks,
 Davy
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
