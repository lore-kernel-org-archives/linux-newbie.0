From: SOTL <sotl155360@earthlink.net>
Subject: Checking File System
Date: Sun, 5 Dec 2004 21:24:31 -0500
Message-ID: <200412052124.31027.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi All

I have an old system that I am trying to boot that will not boot.

As originally setup there were two HD in the system.
One with data and one with the operating system.

The HD with data has long since been removed and current location is unknown.

The system boots to Finding Modular dependencies: OK
Checking file systems
Couldn't find matching file system: Label=/mnt/Snoopie
This was the name of the old second HD.

I have removed LABEL=/mnt/Snoopie from stab.
I know there is at least one other place I need to remove this LABEL from.

Does anyone have any suggestions where that may be.

Thanks
Frank
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
