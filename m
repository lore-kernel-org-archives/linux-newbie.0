From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: usleep
Date: Thu, 12 Jun 2003 05:14:26 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAGEMIEEAA.Riley@Williams.Name>
References: <5.1.0.14.1.20030611173054.01f9d9a0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030611173054.01f9d9a0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hi Ray.

 > Now 500 x 10 = 5000 usec, or 1/200 seconds. But the loop
 > actually takes 10 seconds to iterate. This implies that
 > usleep() has a minimum delay of 10/500 seconds, or 20
 > msec, built into it (at least on my test system).

The standard PC BIOS sets up the hardware timer with a tick
interval of 18.2 ms which is probably what you are seeing.
Memory says that the reason for this is that there are 2^16
(65,536) such ticks per hour, and that apparently made the
original IBM PC BIOS somewhat simpler as a result.

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.

---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.488 / Virus Database: 287 - Release Date: 5-Jun-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
