From: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Subject: Query regarding Copy-on-write
Date: Sat, 20 Nov 2004 16:09:22 +0530
Message-ID: <1100947162.4038.43.camel@myLinux>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

 When a process forks, every resource of the parent, including the
virtual memory is copied to the child process. The copying of VM uses
copy-on-write(COW). I know that COW comes when a write request comes,
and then the copy is made. Now my query follows:

How will the copy be distributed. Whether giving the child process a new
copy of VM be permanent or whether they will be merged anywhere? And
shouldn't the operations/updations by one process be visible to the
other which inherited the copy of the same VM?

How can this work? Can someone please help me on this regard?


-- 
With regards,

Jagadeesh Bhaskar P
R&D Engineer
HCL Infosystems Ltd
Pondicherry
INDIA

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
