From: ichi@ihug.co.nz
Subject: Re: self-made potato driver-1.bin
Date: Mon, 26 Aug 2002 08:20:27 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D69E4CB.3E26269E@ihug.co.nz>
References: <1030305001.695.18.camel@highflyer>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Michael Gruner <stockraser@yahoo.de>
Cc: linux-newbie@vger.kernel.org

Michael Gruner wrote:
> 
> It seems not to be possible to get debian potato to work 
> with smc-ultra NICs. 

I don't use Debian, but I do have an ISA smc-ultra NIC.
It works fine in BasicLinux when I do:
-----------
insmod 8390
insmod wd
-----------

Cheers,
Steven


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
