From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Further Problem with Brand New IDE 180gb Drive
Date: Thu, 10 Oct 2002 11:04:20 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <002001c2706e$4fbe24d0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I copied a directory to the new drive and received the same messages in
/var/log/messages that I previously posted. I then when and tried to rm
-rf * to the directory and received this kernel panic.

EXT -fs panic (device ide2(33,1)):load_block_bitmap:block.group >=
groups_count_block_group = 131071, groups_count = 1342

Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
