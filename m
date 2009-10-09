From: Rahul K Patel <rahulk.patel@einfochips.com>
Subject: splice on fat filesystem
Date: Fri, 09 Oct 2009 11:23:46 +0530
Message-ID: <4ACECFEA.5080305@einfochips.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi All,

I want to use splice call to improve performance of file copying on fat 
filesystem.
But in fat filesystem driver (fs/fat/file.c) there isn't support for 
splice_write. I checked it in file_operations struct of fat driver 
(fs/fat/file.c:146 on 2.6.30.5 kernel). It has implementation of 
splice_read only. I checked that all other filesystem drivers are using 
generic_file_splice_write function for splice_write implementation. So I 
made change in fat filesystem driver for same. Following is change I 
made in file.c. With this change splice is working fine on fat filesystem.

@@ -144,6 +144,7 @@
      .ioctl        = fat_generic_ioctl,
      .fsync        = file_fsync,
      .splice_read    = generic_file_splice_read,
+    .splice_write    = generic_file_splice_write,
  };

  static int fat_cont_expand(struct inode *inode, loff_t size)


Is this correct way to add support for splice write on fat? Also Is 
there any specific reason for not having support for splice_write in fat 
driver in main stream Linux kernel source?

I also doubt that splice will really improve performance compare to 
read/write operation on filesystem.
Any input on splice will be helpful.

Thanks in advance.

Thanks,
Rahul Patel

-- 
_____________________________________________________________________
Disclaimer: This e-mail message and all attachments transmitted with it
are intended solely for the use of the addressee and may contain legally
privileged and confidential information. If the reader of this message
is not the intended recipient, or an employee or agent responsible for
delivering this message to the intended recipient, you are hereby
notified that any dissemination, distribution, copying, or other use of
this message or its attachments is strictly prohibited. If you have
received this message in error, please notify the sender immediately by
replying to this message and please delete it from your computer. Any
views expressed in this message are those of the individual sender
unless otherwise stated.Company has taken enough precautions to prevent
the spread of viruses. However the company accepts no liability for any
damage caused by any virus transmitted by this email.
_____________________________________________________________________
 
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
