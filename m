From: Ray Olszewski <ray@comarre.com>
Subject: Re: switching to debian (... and installing the NVIDIA
  GeForce4)
Date: Mon, 22 Mar 2004 21:12:07 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040322210149.01fdd960@celine>
References: <405FAC4A.1000609@sancharnet.in> <Pine.LNX.4.44.0403222314190.23426-100000@legolas.personal.
 engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0403222314190.23426-100000@legolas.personal.
 engin.umich.edu>
References: <405FAC4A.1000609@sancharnet.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:44 PM 3/22/2004 -0500, Karthik Vishwanath wrote:
>Which driver(s) must I get from nvidia? I can get to their download site
>(nvidia.com/object/linux.html), but am unsure what I need to download.
>
>I got the latest version which gives me a file:
>NVIDIA-Linux-x86-1.0-5336-pkg1.run.
>
># sh NVIDIA-Linux-x86-1.0-5336-pkg1.run
>
>quits with a series of errors saying that "no matching precompiled kernel
>interface was found", followed by "unable to find your kernel source
>tree".
>
>Now, I think a part of the problem here is that I do not have a matching
>kernel that is running with a kernel source. 'uname -r ' gives 2.4.18-k7.
>I can find (and have installed) a kernel-source-2.4.18 package, but not a
>kernel-source-2.4.18-k7 package. How to fix it?


Short answer: to use the nVidia proprietary X driver, you need on your 
system the kernel source that matches your installed kernel. This is so 
because part of what the nVidia package provides is a customized 
framebuffer in the form of a kernel module called "nvidia".

How did you install the kernel-source-2.4.18 package you mention? If you 
just did the apt-get (or dselect, if you do it that way) part, you did not 
un'tar the source tree. You just have a package called something like 
/usr/src/kernel-source-2.4.18.tar.bz2 . You need to do two things for the 
nvidia installer to run properly:

         1. un'tar the source in the usual way.
         2. make the customary symlink:
                 ln -s /usr/src/kernel-source-2.4.18 linux

Then the nvidia installer should succeed.

(NOTE: The one thing I cannot vouch for is that kernel-source-2.4.18 and 
kernel-image-2.4.18-k7 packages actually match up. I always compile my own 
kernels after installing, so I have no actual experience with using the 
Debian kernel-image-* packages.)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
