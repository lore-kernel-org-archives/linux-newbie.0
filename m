From: "Axel H. Siebenwirth" <axel@hh59.org>
Subject: Diskspace problem
Date: Thu, 23 May 2002 01:25:17 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020522232517.GA31882@neon>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

I have a problem. It's quite easily explained:

/dev/hdc3              5119972   2181272   2938700  43% /
/dev/hda4              7702924   2414140   5288784  32% /usr
/dev/hdc1                16421     15819       602  97% /boot
/dev/hda2              2819312   2720872     98440  97% /home
/dev/hda3              9221308   8147616   1073692  89% /mnt/winxp
/dev/hdc4              2101088   1905344    195744  91% /mnt/xchange
/dev/hdc2             12287644  11777212    510432  96% /usr/local

My /usr/local/ is always about full and I need more space there. And I have about 8 Gigs 
free on / and /usr. I actually don't have any idea what to do besides installing
everything new. All the filesystems are reiserfs.

I'd be very happy about good ideas.

My best regards,
Axel
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
