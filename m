From: beolach@comcast.net
Subject: Re: X not starting at all
Date: Thu, 15 Jan 2004 05:05:42 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <011520040505.8108.40a4@comcast.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: gracecott@sancharnet.in
Cc: linux-newbie@vger.kernel.org

Sorry if this is a repost, I thought I had already sent this (and it is in
my "Sent Messages") but I never saw it come through the list.

> Hello,
> it's me again.
> Thanks again for the help you guys gave me when I had a problem with my 
> modules.
> from when I had installed Woody, I was not able to startx as I have a 
> Geforce4 MX 440 SE which was not supported by the nv driver in X (I have 
> version 4.1.0.1)
> I got a new driver from the Nvidia site (the latest is pkg2 I think, I 
> have pkg0 ).I installed it and yet startx would not work.

The pkg-# on the nvidia driver's really don't matter; the only difference
in the different numbers is the precompiled kernel versions already in the
package; and since the package includes the source it can compile the
kernel module in a couple minutes if your kernel version doesn't happen to
be one of the supported versions in the package.

> since X loads its drivers from /usr/X11R6/lib/modules/drivers , I moved 
> the new NV module (nvidia.ko ) and renamed it nv_drv.o which was the nv 
> driver  (this is illogical, I know , but I was desperate.....)

> and it gave me another error message module does not have nvModuledata 
> data object and died on me. I just got Gnome 2.4 and I'm desperate to 
> install it.

This (obviously) doesn't work.  What it is, is the nvidia driver has two
parts; a kernel module (the nvidia.ko file), and a X driver.  When you run
the installer from nvidia's website, they should install to the correct
locations - you shouldn't need to move any files (the correct locations are
/lib/modules/2.6.1/kernel/drivers/video/nvidia.ko &
/usr/X11R6/lib/modules/drivers/nvidia_drv.o).  What you will need to do
is edit the X config file, usually /etc/X11/XF86Config or XF86Config-4.
In this file, you need to go to the display device section and change the
line that says:
    Driver      "nv"
to say
    Driver      "nvidia"

Also, assuming you want OpenGL support, make sure the XF86Config file also
has a line that says:
    Load       "glx"

That should be it: run the install program & edit XF86Config.

If you still have any problems, check nvidia's README at
<ftp://download.nvidia.com/XFree86/Linux-x86/1.0-5328/README>

> So anybody with the ideas flashing,
> HELP!
> thanx in advance,
> Joy
> 

Hope this helps,
Conway S. Smith
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
