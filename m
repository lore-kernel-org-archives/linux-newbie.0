From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Error message on bootup (USB)
Date: Fri, 2 Aug 2002 15:18:40 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02080215184001.02607@unix.pa3gcu>
References: <1028298842.3d4a985a5d418@webmail.tulane.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1028298842.3d4a985a5d418@webmail.tulane.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: dyeu@tulane.edu, linux-newbie@vger.kernel.org

On Friday 02 August 2002 14:34, dyeu@tulane.edu wrote:
> Just recently I compiled my kernel for the first time (really not as
> tough as it seems), but now I get an error message when the computer
> starts up:
>
> Mounting USB filesystem: mount: mount point /proc/bus/usb does not exist
>
> Nevertheless, my USB mouse works fine, and there doesn't seem to be a
> problem at all.  Poking around in /etc showed this in rc.sysinit:
>
> action $"Mounting USB filesystem: "  mount -t usbdevfs usbdevfs
> /proc/bus/usb
>
> So in conclusion, did I simply forget to include something during the
> make config?  Is it safe to remove the above line from rc.sysinit, or
> should I go back and recompile?  Any advice would be appreciated.

You forgot to say "y" to CONFIG_USB_DEVICEFS when you did;
make {x}{menu}config
To see just what it is read /usr/src/linux/Documentation/Configure.help use 
the node in less to search for;
CONFIG_USB_DEVICEFS 

What you are missing is /proc fileysstem support for USB Devices, in itself 
no big deal, you can live with or without it.

You may indeed comment out the lines in your rc file to stop the messages at 
bootine, or you can indeed choose to ignore them all toghter, there will be 
no ill effects.

You can check out my home page for a short explanation of howto recompile 
your kernel the easy way.
www.people.zeelandnet.nl/pa3gcu/kernel.htm
Read the part about 'make oldconfig' carefully, it will save you a lot of 
worry and time.


> Dave.
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
