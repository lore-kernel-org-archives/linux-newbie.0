From: "BEN RITCHEY" <linux-net@tcob1.net>
Subject: copying file systems ...
Date: Thursday, 30 Jan 2003 00:10:08 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <MSGID_110=3a20=2f1_0993d1f9@linuxnet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Originally to: JAMIE RISK

* An ongoing debate between Jamie Risk and All rages on ...

 JR: > How do I copy an entire file system, symlinks and all, to a
 JR: > temporarily mounted partition? (what are the pertinent 'cp' switches?)
 JR: > I've got an extra harddrive (&PC) and I want to mirror my original
 JR: > system with as little work as possible.

I use cp for backups as "cp -av /dir1/ /mnt/backup", etc. Just skip /proc <g>

--
Keep the faith,

 : Ben        http://bellsouthpwp.net/c/m/cmech617/
 :         ICQ #32457590  AIM/Yahoo:benritchey  Jabber:cMech
 :
 + WildCat! Board 24/7  (337) 232-4155  33.6kBps 8,N,1  Free Software!

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
