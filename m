From: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Subject: Forking in kernel
Date: Mon, 22 Nov 2004 12:53:49 +0530
Message-ID: <1101108229.5382.3.camel@myLinux>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

How can I fork a new process at the kernel level, say, as in a module?
When compiling a module with a fork() function inside it,
it will get complied as gcc -o ... -c ... -D__KERNEL__

But it says unresolved symbol fork() during insmod-ing. Is there a
kernel level compliment for fork and clone, like printk for printf??


Please do help!!

-- 
With regards,

Jagadeesh Bhaskar P

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
