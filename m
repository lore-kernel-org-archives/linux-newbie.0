From: joy <gracecott@sancharnet.in>
Subject: X not starting at all
Date: Mon, 12 Jan 2004 22:16:25 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4002CF61.6040507@sancharnet.in>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: mailing list <linux-newbie@vger.kernel.org>

Hello,
it's me again.
Thanks again for the help you guys gave me when I had a problem with my 
modules.
from when I had installed Woody, I was not able to startx as I have a 
Geforce4 MX 440 SE which was not supported by the nv driver in X (I have 
version 4.1.0.1)
I got a new driver from the Nvidia site (the latest is pkg2 I think, I 
have pkg0 ).I installed it and yet startx would not work.
since X loads its drivers from /usr/X11R6/lib/modules/drivers , I moved 
the new NV module (nvidia.ko ) and renamed it nv_drv.o which was the nv 
driver  (this is illogical, I know , but I was desperate.....)
and it gave me another error message module does not have nvModuledata 
data object and died on me. I just got Gnome 2.4 and I'm desperate to 
install it.
So anybody with the ideas flashing,
HELP!
thanx in advance,
Joy

> --------------------------------------------------------------------------------------------------------
> A life without purpose is like a bird that never learnt to fly.......
> I am the bird that regularly flies Lufthansa


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
