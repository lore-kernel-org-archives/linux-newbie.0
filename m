From: Ray Olszewski <ray@comarre.com>
Subject: Re: switching to debian (... and installing the NVIDIA  
  GeForce4)
Date: Fri, 26 Mar 2004 07:37:17 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040326071220.01f71e80@celine>
References: <5.1.0.14.1.20040325092417.01f19cb8@celine> <Pine.LNX.4.44.0403260110390.26709-300000@legolas.personal.
 engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0403260110390.26709-300000@legolas.personal.
 engin.umich.edu>
References: <5.1.0.14.1.20040325092417.01f19cb8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:30 AM 3/26/2004 -0500, Karthik Vishwanath wrote:
>make is (was) installed.
>
>sh NVIDIA-Linux-x86-1.0-5336-pkg1.run --kernel-name=2.4.18-k7, did not
>work.
>
>So, I obtained  NVIDIA-Linux-x86-1.0-4363.run from nvidia.com, and ran as:
>sh NVIDIA-Linux-x86-1.0-4363.run  --kernel-name=2.4.18-k7, and this worked
>(seemingly).
>
>I set my X driver to be nvidia (as indicated) but could not startx.
>
>I tried: # modprobe nvidia and came up with a list of "unresolved
>symbols".
>
>I taken the liberty of attaching both the nvidia-installer.log, as well as
>the output of modprobe nvidia to this message.
>
>Please tell me what to attempt next.

In general, this sort of result means one of two things:

1. You failed to load some needed modules before loading nvidia. In this 
instance, this appears NOT to be the actual problem, since

         (a) the nvidia installer runs "depmod" for you
         (b) 0y install of 4363 here indicates that nvidia has no dependencies

2. A kernel mismatch. Since you are trying to use source to add in modules 
to a pre-compiled, stock kernel, it is at least possible that this sort of 
mismatch is occurring. It MAY be as simple as the kernel cource having a 
.config file that does not match the compiled kernel ... I suggest this 
only because I see "devfs" mentioned in some of the unresolved symbols, and 
from my setup I know nvidia can run with a kernel that does not have devfs 
support compiled in.

Anyway, my best GUESS is that you're running into a problem based on your 
wanting to use a precompiled kernel, something I have no experience with 
(not in the last few years, anyway). I don't know if you are using Woody, 
Sarge, or Sid ... I just checked Sid and see that it does not at the moment 
have any kernel-image-2.4.18-k7 package but does have a 
kernel-source-2.4.18 ... so there may be a version mismatch problem that 
derives from image and souce being at different patchlevels *within* 2.4.18 
(Debian occasionally does this, mainly as backpatches for security issues).

So, I can only suggest two options.

First, compile a kernel locally and then try to run the nvidia installer 
and to install the nvidia module against it.

Two, try using the nvidia-kernel-source Debian package (with make-kpkg) to 
see if doing it "the Debian way" solves some hidden problem.

Other than that, you're sufficiently outside my experience that I cannot 
offer suggestions. Sorry.

BTW, my running version of nvidia is the same nvidia version number, but 
with a bespoke 2.4.19 kernel.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
