From: "Tom Beer" <mailings@analogon.com>
Subject: Re: USB device installation
Date: Thu, 18 Apr 2002 11:19:04 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <022101c1e6ba$18302b00$0901a8c0@system>
References: <20020417221621.7E4A052728@psybernet.co.nz> <010001c1e6a2$41bbc640$0901a8c0@system> <20020418081641.757F752728@psybernet.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: walter@psybernet.co.nz, linux-newbie@vger.kernel.org

> I have searched around and found this page:  
> http://www.tldp.org/HOWTO/SCSI-2.4-HOWTO/dnamesdevfs.html
> 
> But i am still not sure what to enter  for char-major-NUMBER 1
> 
> Also you corrected the command to  mknod 660 -n /dev/sda1  but it 
> seems n does not work here m= mode?  n 
> 
> # mknod 660 -n /dev/sda1 c [b,8,0]
> mknod: invalid option -- n
> 

Probably is the -m flag right. try man 8 mknod. After reading
this I would recommend using

mknod 660 -m /dev/sda1 -b 8 0

But be cautions. I won't - as ever - not guarantee that
this will work. Check it out and if it won't work delete 
the device node. .

rm -i /dev/sda1.

Greets Tom

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
