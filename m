From: joy <gracecott@sancharnet.in>
Subject: Re: switching to debian (... and installing the NVIDIA  GeForce4)
Date: Tue, 23 Mar 2004 22:49:45 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <406071B1.7030305@sancharnet.in>
References: <405FAC4A.1000609@sancharnet.in>
 <5.1.0.14.1.20040322210149.01fdd960@celine>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Ray Olszewski wrote:

> Short answer: to use the nVidia proprietary X driver, you need on your 
> system the kernel source that matches your installed kernel. This is 
> so because part of what the nVidia package provides is a customized 
> framebuffer in the form of a kernel module called "nvidia".
>
> How did you install the kernel-source-2.4.18 package you mention? If 
> you just did the apt-get (or dselect, if you do it that way) part, you 
> did not un'tar the source tree. You just have a package called 
> something like /usr/src/kernel-source-2.4.18.tar.bz2 . You need to do 
> two things for the nvidia installer to run properly:
>
>         1. un'tar the source in the usual way.
>         2. make the customary symlink:
>                 ln -s /usr/src/kernel-source-2.4.18 linux
>
> Then the nvidia installer should succeed.
>
> (NOTE: The one thing I cannot vouch for is that kernel-source-2.4.18 
> and kernel-image-2.4.18-k7 packages actually match up. I always 
> compile my own kernels after installing, so I have no actual 
> experience with using the Debian kernel-image-* packages.)

yup, I suggest the same. get your own kernel sources and compile them. 
if you get a 2.6 series kernel, you need to upgrade a few packages on 
the system( the version numbr of the software  required is found in the 
sources in /Documentation/Changes.I suggest you get a 2.6, it's worth 
the download and you will really feel the difference and also the 5336 
version has support for the 2.6 series and I see no reason you shuld not 
take advantage of this.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
