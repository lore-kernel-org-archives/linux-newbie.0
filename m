From: joy <gracecott@sancharnet.in>
Subject: Re: X not starting at all
Date: Fri, 16 Jan 2004 10:07:54 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40076AA2.6020801@sancharnet.in>
References: <011520040505.8108.40a4@comcast.net>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: beolach@comcast.net
Cc: linux-newbie@vger.kernel.org


>This (obviously) doesn't work.  What it is, is the nvidia driver has two
>parts; a kernel module (the nvidia.ko file), and a X driver.  When you run
>the installer from nvidia's website, they should install to the correct
>locations - you shouldn't need to move any files (the correct locations are
>/lib/modules/2.6.1/kernel/drivers/video/nvidia.ko &
>/usr/X11R6/lib/modules/drivers/nvidia_drv.o).  What you will need to do
>is edit the X config file, usually /etc/X11/XF86Config or XF86Config-4.
>In this file, you need to go to the display device section and change the
>line that says:
>    Driver      "nv"
>to say
>    Driver      "nvidia"
>  
>
Thanks again, the problem was that nvidia_drv.o was not being placed in 
the right place (/usr/...)
I had to do a find .|grep nvidia to find the module(buried in the 
NVIDIA...... installation directory)
and cp it to the right place <phew>. Now xinit works fine but startx 
hangs. Also my shiny new 2.6.1 kernel locks hard pretty often
(considering that my 2.4 kernel never did) Any ideas as to Why???????
and how do I change the resolution?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
