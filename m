From: Agri <agri@desnol.ru>
Subject: howto configuring kernel and modules.conf for automatic loading of
 ide-scsi
Date: Sun, 25 Jan 2004 04:11:10 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040125041110.22704715.agri@desnol.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

i'm  confused with module loading.

i have cdrw and configure ide-scsi emulation for it.
doing "modprobe ide-scsi; mount /dev/scd0" is fine.

but, how to configure automatic loading of ide-scsi?
it seems that just "touching" for /dev/scd0 do not
cause kmod to exec modprobe at all. What to do?
i think that loading several modules at boottime are not the best idea,
in that case - why do i use modules at all?

Agri

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
