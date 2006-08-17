From: "Abu M. Muttalib" <abum@aftek.com>
Subject: Relation between free() and remove_vm_struct()
Date: Thu, 17 Aug 2006 12:29:15 +0530
Message-ID: <BKEKJNIHLJDCFGDBOHGMKEEHDGAA.abum@aftek.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

Hi,

In an application I am freeing some memory address, earlier reserved with
malloc.

I have put prints in remove_vm_struct() function in ./mm/mmap.c. For few
calls to free(), there is no corresponding call to remove_vm_struct(). I am
not able to understand why the user space call to free() is not propagated
to kernel, where in the remove_vm_strcut() function should get called.

Please help.

Regards,
Abu.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
