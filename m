From: "Linovitz, Scott" <slinovitz@adt.com>
Subject: Free BSD 5.0 - Installation Error
Date: Fri, 2 May 2003 16:58:02 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <678FF08CF467D4118DA400508BD9365706B43BC8@mail02.adt1.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Any help will be appreciated, thanks in advance. Scott.

Hardware relevant to problem
**********************************
PC = Compaq Deskpro EN, Series SFF
CPU = Celeron 466, 810 Chipset
Hard Drive = Western Digital 40gig (Model #WD400BB)

Problem
**********
Note: If I install Free BSD v4.7 from CD on the exact same system I don't
get the following error.


While installing Free BSD v5 from CD I get the following error when the
Sysinstall utility probes the hard disk:

".....Warning: a geomerty of 77504/16/63 for ad0 is incorrect.......enter
what your BIOS thinks the geometry is"

The BIOS will only show the hard disk as 40, no additional information.

Sysinstall will still let the installation continue and the fdisk window
appears and reports a hard drive geometry of:

cyls = 4863 / heads = 255 / sectors = 63

The actual hard disk geomerty from the Western Digital Website is:

cyl = 16,383 / heads = 16 / sectors-tracks = 63



I'm trying to understand the issues/interactions between the OS and the BIOS
that may be present. Can anybody help?


Thanks
Scott
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
