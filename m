From: "Benny Pedersen" <linux-net@tcob1.net>
Subject: Multiple CD Changer
Date: Saturday, 03 Aug 2002 20:53:52 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <MSGID_110=3a300=2f15_3d4c277b@fidonet.org>
References: <3D3AF0FD.55410F4F@gmx.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D3AF0FD.55410F4F@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Originally to: Oliver Ob

Hello Oliver.

21 Jul 02 19:35, you wrote to all:

 OO> how can I mount a 6-CD-Changer into my tree?

 OO> It is /dev/hdb

 OO> But how can I distinguish those 6 slots?
 OO> Mount them each?

a changer is only 6 cdroms in one unit, thay mostly use lun to select what drive you want, all on the same scsi unit, so make sure you have enabled lun support in your kernel, if no then you can only
 use disk 1 :-)

Benny

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
