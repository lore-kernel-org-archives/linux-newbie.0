From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: Determining amout a physical RAM my kernel needs?
Date: Wed, 7 Feb 2007 18:46:23 +0530
Message-ID: <7783925d0702070516o605b42f9tf917df60934d348@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Kernel <linux-kernel@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi list,

I have a kernel image about 600 KB in size that I intend to program to
flash memory on my target board (hence size required in flash=600 KB).

1) But how do I determine the size of the RAM required to run that
image? (Since I believe the image will be uncompressed in RAM, plus
will also need some extra memory)? Can I determine this info from the
kernel image / System.map etc?

2) Also, is there any way to determine (accurately) the amount of RAM
eaten up by the kernel (plus modules), on a RUNNING system?

TIA,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
