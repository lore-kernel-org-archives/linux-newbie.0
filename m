From: Walter Logeman <walter@psybernet.co.nz>
Subject: Re: USB device installation
Date: Thu, 18 Apr 2002 20:16:40 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020418081641.757F752728@psybernet.co.nz>
References: <20020417221621.7E4A052728@psybernet.co.nz> <010001c1e6a2$41bbc640$0901a8c0@system>
Reply-To: walter@psybernet.co.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <010001c1e6a2$41bbc640$0901a8c0@system>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tom Beer <mailings@analogon.com>, linux-newbie@vger.kernel.org

In Re: USB device installation, on Thu, 18 Apr 2002 18:28, 
 Tom Beer wrote:

Thanks tom,

> > How does the dev directory get the device names? Should they
> > just appear? Does usb-storage do that?
>
> You may have to create the devices. try mknod 660 -m /dev/sda1 c
> char-major-NUMBER 1
>
> char-major-NUMBER has to be replaced with the _right_ value

I have searched around and found this page:  
http://www.tldp.org/HOWTO/SCSI-2.4-HOWTO/dnamesdevfs.html

But i am still not sure what to enter  for char-major-NUMBER 1

Also you corrected the command to  mknod 660 -n /dev/sda1  but it 
seems n does not work here m= mode?  n 

# mknod 660 -n /dev/sda1 c [b,8,0]
mknod: invalid option -- n

So I am still puzzling here...

~~~

> or you may make ./MAKEDEV sda1 in /dev (this may be only possible
> in other u*ix distributions.)

no it does not seem to be there...


> try www.linux-usb.org/

I'm still hanging out there... maybe I'll spot it.


Walter

-- 
Walter Logeman
Psychotherapist
http://www.psybernet.co.nz
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
