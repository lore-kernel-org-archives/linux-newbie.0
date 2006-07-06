From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: /dev/mem contains physical memory addresses?
Date: Thu, 6 Jul 2006 15:06:29 +0530
Message-ID: <292693080607060236n5c279815x3fe5d493ea3a587e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi list,

I read that the /dev/mem represents the memory of the system.

1) Does that mean I can if start reading from /dev/mem, I can read any
portion of the memory?

2) If I read at offset "n" in the file /dev/mem, would I be reading
contents of the PHYSICAL memory address "n", or the VIRTUAL memory
addtress "n"?

Thanks,

Dan.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
