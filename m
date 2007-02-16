From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: kernel porting query
Date: Fri, 16 Feb 2007 07:46:00 +0530
Message-ID: <7783925d0702151816r7df63816ld9c69b56bdb0a0b9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Kernel <linux-kernel@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

I have a very basic query regarding kernel porting on different
boards. I understand that even if two boards have the very same
processor core (say MIPS 4KE), we need to port linux for them
seperately. I have heard things like it is because of certain "board
level differences", I need to provide some "board specific hooks"
because the boards may contain "different devices" and so on ....

1) Can any one please shed some light on precisely and exactly what
are differences in different boards for which we need to port linux?

2) Also, I would appreciate if you could point out code portions /
source files that need to be changed in the process of porting Linux?

TIA,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
