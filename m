From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: fedora and how to get mass storage devices (memory card readers) to work
Date: Tue, 13 Apr 2004 07:54:03 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200404130754.03250.pa3gcu@zeelandnet.nl>
References: <20040413025903.GD3579@panix.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040413025903.GD3579@panix.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rei Shinozuka <shino@panix.com>, Newbie Linux Users <linux-newbie@vger.kernel.org>

On Tuesday 13 April 2004 04:59, Rei Shinozuka wrote:
> Apr 12 22:50:59 tuxedo usb.agent[25333]: missing kernel or user mode driver
> usb-storage

missing support for usb-storage, possably its a module and its not getting 
loaded.

modprobe usb-storage

before plugging in the device.

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
