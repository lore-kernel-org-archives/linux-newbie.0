From: "Girish Kale" <girish.kale@nevisnetworks.com>
Subject: Basic questions on the kernel
Date: Fri, 30 May 2003 18:30:29 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <36993D449C7FA647BF43568E0793AB3E061CD9@nevis_pune_xchg.pune.nevisnetworks.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

Hi,

I have a few basic questions on the kernel performance:

1) For embedded systems, even though standard linux may not have hard
real-time performance unless real-time patch, low latency patch are
applied, I would like to know if linux can give "deterministic"
performance. Meaning can we be guaranteed that a particular process will
be scheduled after a particular time. What are the these times or where
do I find this data.  

2) When we are using linux on an embedded system, will there a memory
management unit for this, since there will not be any swapping in/out of
pages? Can we avoid a process from keeping on allocating memory thereby
starving other applications? 

Any pointers to the above topics will be appreciated.

Thanks,
Girish
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
