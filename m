From: "Tom Beer" <mailings@analogon.com>
Subject: Re: USB device installation [2]
Date: Thu, 18 Apr 2002 08:30:26 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <011001c1e6a2$87663f40$0901a8c0@system>
References: <20020417221621.7E4A052728@psybernet.co.nz> <010001c1e6a2$41bbc640$0901a8c0@system>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tom Beer <mailings@analogon.com>, walter@psybernet.co.nz, linux-newbie@vger.kernel.org

>
> You may have to create the devices. try mknod 660 -m /dev/sda1 c
> char-major-NUMBER 1

SORRY, but it should be mknod 660 -n /dev...
                                                            ^

>
> char-major-NUMBER has to be replaced with the _right_ value
> or you may make ./MAKEDEV sda1 in /dev (this may be only possible in other
> u*ix distributions.)
>
> try www.linux-usb.org/
>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
