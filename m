From: Tim Cullen <timcullen2001@yahoo.com>
Subject: process hangs when calling close
Date: Thu, 30 Apr 2009 16:22:05 -0700 (PDT)
Message-ID: <940445.78531.qm@web43134.mail.sp1.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024; t=1241133725; bh=EJHS9QEv7rDSuzGwpRxeHrPuKMETpcDwTywcpNi++mk=; h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type; b=WnbeU7GnTUWgk0o/RiETsQqQMwMB2E82XV2EiiFr7cJcFmEyJt8gKQ21DOfao9ukT4klMpvpPmPuHW8nxiX18oXStR4DL2Y+oGWhPunGWyTj4ztTfSZvLoP3OMaDj0p3Z8C0/zYJReV7SSuJPg7CeNzbLH8qXraaNWxv00XkiWA=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


I have a simple test program that opens a block device, writes a bunch of data to it, and then calls close. The process appears to hang in the call to close. Output from the ps command shows the process has gone into the uninterruptible IO state and the systems cpu usage goes to zero. The process stays this way until the system is rebooted. 

Any ideas whats going on here?

Please CC me personally with any replies.
thanks
tim



      

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
