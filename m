From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: usb-storage
Date: Tue, 3 Feb 2004 07:41:18 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200402030741.18301.pa3gcu@zeelandnet.nl>
References: <1075668862.6528.4.camel@Abydos>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1075668862.6528.4.camel@Abydos>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Thorsten Alge <mail@thorsten-alge.de>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

On Monday 02 February 2004 17:59, Thorsten Alge wrote:
> hi,
>
> i have some problems with my USB-Harddisk. When i plug it in, i got the
> following errors:

I personally have never encounderd your problem, but i did a search on 
google.com/linux and found the following mail, it represents your problem in 
many ways, it also has a solution suggested as well.

http://mailman.u.washington.edu/pipermail/linux/2002-November/005302.html

> hub.c: new USB device 00:09.3-6.1, assigned address 3
> usb.c: USB device 3 (vend/prod 0x5e3/0x702) is not claimed by any active
> driver.
> Initializing USB Mass Storage driver...
> usb.c: registered new driver usb-storage
> scsi1 : SCSI emulation for USB Mass Storage devices
>   Vendor: FUJITSU   Model: MHR2030AT         Rev: 0811
>   Type:   Direct-Access                      ANSI SCSI revision: 02
> Attached scsi disk sda at scsi1, channel 0, id 0, lun 0
> SCSI device sda: 58605120 512-byte hdwr sectors (30006 MB)
>  sda:<6>Device not ready.  Make sure there is a disc in the drive.
> usb_control/bulk_msg: timeout
> ...
> usb_control/bulk_msg: timeout
>
> I dont know how to fix it. can anyone help??
>
>
> thanks,
>
> thorsten
>

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
