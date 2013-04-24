From: disnoir <disnoir@gmail.com>
Subject: How could I record the information when kernel panic.
Date: Thu, 25 Apr 2013 01:18:24 +0800
Message-ID: <517813E0.8070701@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:message-id:date:from:user-agent:mime-version:to:subject
         :content-type:content-transfer-encoding;
        bh=gHQvb9/Z8PTlNDeGzukAf+tpbyJ2j9taG/ValUkd+ns=;
        b=k9HvQ1YUSOdZ9SSbWjSS1o5jY/TcavfzPIo99DiGY0DOyB+ao7bvrsmnQeVNyyZebT
         uLymFjuZNyeftgNcqqcsq6g7dkqUIHgVcCRuSpi/nZ1XgCL0Fv0QbcPYcc7wCoSJ4Eoi
         wZA1H8BC/fqGSzSqE1qNY2ttyUVKRM+s/nQN124nILpAZCdwIcX8grq4TSqsq3HbuRt9
         g0jH4AkQsdAEIPmmh/e8xWKcUwREwGdPYuNz2BADr9frmRhFYWMg7sezfJToT4qOwrgj
         07crsusmw4JbErrTsn6x5CZ6Nm57FaTFLNPTRFQuuIcWciaVDMB2k/Eo7txRxBtAxk+q
         4PxQ==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

There is a random probability that cause the kernel panic (debian with 
kernel 3.2.41), when I execute:
"sudo umount /media/data /media/big".

Things are like this:

I use "udisks --mount /dev/sda3" to mount "data" which is a ntfs filesystem.
similarly, I use "udisks --mount /dev/wd5000bpvt/big" to mount "big" 
which is a ext4 filesystem.

After finish using these filesystems, I use "sudo umount /media/data 
/media/big" to umount the filesystems, and the hole system just suddenly 
halt (mouse is not moving).

using alt-sysrq-b to reboot the system. nothing record in the 
/var/log/messages.

So, How could I record the kernel error/info, when system was halt ?

Thanks a lot!


--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
