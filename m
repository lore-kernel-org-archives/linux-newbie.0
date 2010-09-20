From: Rajat Jain <rajatjain@juniper.net>
Subject: mmap confusion
Date: Mon, 20 Sep 2010 11:03:05 +0530
Message-ID: <220544EE49E5824C9DE242B5ACE58C300930E512@EMBX01-BNG.jnpr.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: "kernelnewbies@nl.linux.org" <kernelnewbies@nl.linux.org>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>
Cc: "rajat.noida.india@gmail.com" <rajat.noida.india@gmail.com>

Hello List,

I wanted to understand how the mmap works. I mean, not from the kernel APIs or data structures perspective, but from the HW perspective. I understand that the use case is this: typically applications will mmap() a file (a device file or any other file) into user space, and then use direct pointers to read / write to that file. So as I understand, after the call to mmap, the compiler will generate simple load and store instructions fo any reads / writes into that file. What I'm trying to understand is that how is it ensured that those load & store instructions get translated into file reads/ writes. I think there are two cases:

1) If the backing file is /dev/mem or a device file, then at the time of mmap(), the page table entries / TLB entries are set up such that the virtual address in the user space, maps to the actual physical address desired. And the thus job is done. This case is clear.

2) The other case is that when the file is actually a datafile present in a file system lets say on a SATA disk. Now, for each load / store in the application, some driver code needs to trigger that will program the SATA controller registers and do n number of thinks to initiate the diska read / write transaction. How is this achieved? Because application is not making any System calls. Its just having load / store instructions.

Thanks,

Rajat Jain
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
