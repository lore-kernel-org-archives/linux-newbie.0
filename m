From: "Sriram Narasimhan" <nsri@tataelxsi.co.in>
Subject: kmalloc (GFP_KERNEL) doubt!!
Date: Sat, 12 Apr 2003 02:13:37 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E9728F9.6080107@tataelxsi.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello,

I am trying to allocate memory from a driver module and kmalloc 
(GFP_KERNEL) is failing.
I am running 2.4.7-10 RH 7.2 on i386 with 64 MB Physical Memory.

The first time I ran my module, it failed at the 2.5 MB limit.
I restarted the system and tried it again, and I was able to allocate 5 
MB successfully.
I restarted the system and ran "free".
The report is as follows:
            total       used       free     shared    buffers     cached
Mem:         62264      30624      31640          0       8072      16096
-/+ buffers/cache:       6456      55808
Swap:       192772          0     192772

Then I ran gcc and compiled my code and then for the "free" report again.
The report is as follows:
            total       used       free     shared    buffers     cached
Mem:         62264      45320      16944          0       9256      28384
-/+ buffers/cache:       7680      54584
Swap:       192772          0     192772

I was able to notice that the physical memory had gone down though "gcc" 
had completed.
The time I ran my application, I had about 2.5M physical memory left, so 
I was able to allocate 2.5M.

What is happening ? What is the buffers/cache column and is there any 
way I could force the kernel to release the cached memory back to free 
physical ?
Is there any way I can allocate more than what is left free from the 
physical memory ?

Any pointers or suggestions would be very helpful.

Thank you.
Regards,
Sriram


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
