From: Ray Olszewski <ray@comarre.com>
Subject: Re: switching to debian (... and installing the NVIDIA 
  GeForce4)
Date: Thu, 25 Mar 2004 10:25:24 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040325092417.01f19cb8@celine>
References: <5.1.0.14.1.20040325082305.01f8d7d0@celine> <Pine.LNX.4.44.0403251127320.26064-200000@legolas.personal.
 engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0403251127320.26064-200000@legolas.personal.
 engin.umich.edu>
References: <5.1.0.14.1.20040325082305.01f8d7d0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:46 AM 3/25/2004 -0500, Karthik Vishwanath wrote:
>I tried adding/removing spaces from the Makefile and I still cannot get
>'sh NVIDIA-Linux-x86-1.0-5336-pkg1.run' to function alright. I did
>download NVIDIA-Linux-x86-1.0-5336-pkg1.run from nvidia's website and have
>not installed the Debian package nvidia-kernel-source.
>
>'uname -r' gives 2.4.18-k7. The Makefile in /usr/src/linux at its top
>reads:
>
>VERSION = 2
>PATCHLEVEL = 4
>SUBLEVEL = 18
>EXTRAVERSION =-k7
>
>I have attached the nvidia-installer.log as an attachment (as its about
>~2K). I could'nt spot anything significant in that log -- perhaps my eyes
>are unfamiliar wrt to what to seek...
>
>I did not follow Richards suggestion below since the untarring of the
>zipped source did create /usr/src/kernel-source-2.4.18/.

Hmmm ... the log itself is not very informative, and I find that the 
specific error message you're getting does not appear anywhere in the older 
nvidia package I have here ... at least not in any form that "grep" or 
"strings" can find.

Tracking this down involves looking at the source for the nvidia-installer. 
It turns out that this is a 2.6 change ... apparently 2.4.x modules are 
named nvidia.o, while 2.6.x modules are named nvidia.ko, and the installer 
is trying to figure out which name to use. For some reason, the function 
build_kernel_module() is not getting a usable value for this choice.

This is the code fragment that's burning you:

     cmd = nvstrcat("cd ", p->kernel_module_build_directory,
                    "; make print-module-filename", NULL);

     ret = run_command(op, cmd, &p->kernel_module_filename, FALSE, 0, FALSE);

     free(cmd);

     if (ret != 0) {
         ui_error(op, "Unable to determine the NVIDIA kernel module 
filename.");
         /* XXX need more descriptive error message */
         return FALSE;

(Note the comment near the end. I second it.)

  Why this fails is not readily apparent. The first thing to check, I 
suppose, is that you have "make" installed on your system. If not, install 
it ("apt-get install make").

If that's not it, try pecifying the kernel name as a command-line option. 
It's something like the following:

         sh NVIDIA-Linux-x86-1.0-5336-pkg1.run --kernel-name=[KERNELNAME]

replacing [KERNELNAME] with the actual name.

If neither of these tactica work, consider dropping back to an eariler 
version of the NVIDIA package, one known to work with 2.4.x kernels (like 
the 4363 I have working here with a bespoke 2.4.19 .



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
