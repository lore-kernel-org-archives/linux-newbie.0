From: <Stuart_Hayes@Dell.com>
Subject: kernel stack on i386
Date: Wed, 24 Mar 2004 17:16:46 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CE41BFEF2481C246A8DE0D2B4DBACF4F128AB5@ausx2kmpc106.aus.amer.dell.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


I have noticed that the kernel stack space in Linux is very small--
only 5300-odd bytes with the x86_64 kernel that I'm using right now.  
I have run into problems with this, most notably with the deeply-
nested and recursive ACPI "driver" code.  When I mentioned enlarging 
the kernel stack on the linux-kernel mailing list, I got a lot of 
responses that indicated that increasing the kernel stack is a bad 
idea.  I've also heard that the stack is going down to only 4K soon.

My question is:  Why is Linux bothering to try to get by with such a 
small kernel stack?  Just to save page table entries/TLBs?

If this is the reason, is the kernel code put into 2M/4M pages to 
save page table entries and TLBs?  If not, why not?

Also, I'm kind of curious why the task_struct is put in the stack 
area, just begging to get overwritten without warning in the case of
a stack overflow... and why isn't the stack segment in it's own
protected segment, such that a stack overflow will result in an 
exception of some sort?

Any insight would be appreciated!

Thanks
Stuart
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
