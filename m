From: Michael Ehrlich <mic.ehrlich@gmail.com>
Subject: Mapping a kernel page to user page tables
Date: Tue, 13 Feb 2018 20:47:28 +0200
Message-ID: <FF30DDF4-E429-4314-8EFA-684CBC56F373@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=9lGjDE+fy6c5zRbyenOpxMWb5ahUpVBsa3PXuwTYJZo=;
        b=O/w0+ZKQUMWas3bSkoUiyK8UnA3dbGYhLVnxxlTcOut70eXrJWdOtbisx/7DNpnaOo
         sQYUfDoI2CXif5/+xuUlTt8yT5jTfowBFQcPtRFCeR5FV65R9cWYc2ibAVp9YgPDwEcb
         QmyZN709S9dxNCAT/Dbp4gdru6TXkwVQFEbYV8w+e4xtPQWvdWf5T5JGu7OPOYlbgPaw
         GyAR8k+t3tQmzTwkXoA9Y4fdDCu9FUYFkJ+DM5NsucJZy7MQ3Z8uSODyjhYIzBYFC/MH
         KjYHaGrH0ILWvBoh016OaIcWs70Rx+MCe1AQR4Ebvxa4p9iR7feJtlXYUXF8kLW9sNOA
         WmYA==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: linux-newbie@vger.kernel.org

Hi,

Post KPTI patches, I=E2=80=99m looking for a way to allocate a page in =
kernel space and map it on the user page tables, too (so its accessible =
from the entry code, just before the switch to kernel-CR3).
Any ideas how it might be done, or where should I be looking first?

Best regards,
Michael Ehrlich.=
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
