From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: USB-Wireless Mouse Issues with compiled kernel
Date: Sat, 6 Sep 2003 22:06:12 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309062206.12942.pa3gcu@zeelandnet.nl>
References: <200309051716.26918.weston_p@yahoo.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200309051716.26918.weston_p@yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: weston_p@yahoo.com, linux-newbie@vger.kernel.org

On Friday 05 September 2003 19:16, Weston M. Price wrote:
>      Any help or pointers on this issue would be appreciated. If more
> information is needed please let me know. I didn't want to attach a whole
> bunch of files (kernel configurations, log files etc) and clog the list.

What you need to do is compare your kernel configuration files and see what 
differancies there are for USB, quite possably INPUT devices you would need 
to look for, things to check..
CONFIG_USB_MOUSE

Remember most distro's have USB stuff compiled as modules, you may need to 
make sure you module is getting loaded.

The motto is;
If it works in Redhats distro kernel then it WILL work in your own compiled 
kernel "providing" you configure accordingly.

On another note, most all USB mouse from logitec will work in a PS/2 port, 
simply obtain a plug with usb in PS/2 out, plug into your PS/2 mouse port and 
away you go, BUT then again you would need a kernel with PS/2 support.
Under Mice in the configuration file /usr/src/linux/.config you would need;
CONFIG_MOUSE=m
CONFIG_PSMOUSE=y

Not much help i know, but considering noone else replyed i thought i would 
mention it.

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
