From: ratheesh k <ratheesh.ksz@gmail.com>
Subject: linux process stack
Date: Sat, 15 May 2010 15:24:02 +0530
Message-ID: <AANLkTimA2afjDLbRH1KRUnrjXwsyLZzPR5K9FjgcMd_3@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:date:message-id
         :subject:from:to:content-type;
        bh=tFwbzKzISMK0OgO2SDNR6SY5A8vqtPasZwmy4663+N4=;
        b=pITCrwieRf8Tfjva9rBe8W0kaitYO+4FQjsTLMcu+VLz+BfjWiJ/Lh29L6By18Hdw0
         vj/IKpcJYZD6jpAsSEvw1lx+k+uGMQLCc/qjVFr4SSxB7hftnLx5xju9U+KNlnArETqU
         7qHXV+1RtTj6QAPNFG4lAaz8a4ld8gH/Rfgbw=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

From: ratheesh.ksz@gmail.com ratheesh k
To: linux-newbie@vger.kernel.org
Date: Sat, 15 May 2010 14:41:09 +0530
Subject: linux process stack

All ,

I am beginner . Please see below my dobts

1. All process and kenel thread has their own task_struct  structure
and kernel mode stack . Kernel itself maintain its own stack .


2 .Whenever a process ,say A , switch to kernel ( on system call )
,registers will be stored in its own kernel mode stack ?


3 . On interrupt , process  A  's process  context will be saved on
process A 's own kernel mode stack ?c


4 .Kernel thread will also use its  own kenel mode stack on interrupt  ?


5 .Where is the SP ( stack pointer ) is saved  ?  How it it retrieved back ?


Thanks,
Ratheesh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
