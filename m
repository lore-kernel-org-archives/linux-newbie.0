From: Peter <heisspf@skyinet.net>
Subject: Re: Heavy load of graphics
Date: Thu, 07 Oct 2004 10:07:01 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041007020702.020204B4@heisspf>
References: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Tue, 05 Oct 2004 06:01:00 +0100."
             <20041005050100.76032.qmail@web52902.mail.yahoo.com> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Want to free memory?

$ free
             total       used       free     shared    buffers     cached
Mem:        223708     220120       3588          0      28356     107936
-/+ buffers/cache:      83828     139880
Swap:       128480       3996     124484

$ locate /usr/bin/f* or x* or g* ...


$ free
             total       used       free     shared    buffers     cached
Mem:        223708      41364     182344          0       1520      28592
-/+ buffers/cache:      11252     212456
Swap:       128480       5056     123424


-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
