From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re:  switching to debian (... and installing the NVIDIA   GeForce4)
Date: Sat, 27 Mar 2004 08:19:54 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403270819.54349.pa3gcu@zeelandnet.nl>
References: <001b01c413c4$621f4230$130aa8c0@pipotiy3ljnut2>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001b01c413c4$621f4230$130aa8c0@pipotiy3ljnut2>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org

> make is (was) installed.
>
> sh NVIDIA-Linux-x86-1.0-5336-pkg1.run --kernel-name=2.4.18-k7, did not
> work.

That opption is NOT what you want to use, its for a "non-running kernel".

>
> So, I obtained  NVIDIA-Linux-x86-1.0-4363.run from nvidia.com, and ran
> as: sh NVIDIA-Linux-x86-1.0-4363.run  --kernel-name=2.4.18-k7, and this
> worked (seemingly).

There is no need to try lower version numbers of the driver as the problem is 
on your computer itself and not the obtained software.

>
> I set my X driver to be nvidia (as indicated) but could not startx.

That figures as the log you sent shows that the module was not loaded by the 
installer.

>
> I tried: # modprobe nvidia and came up with a list of "unresolved
> symbols".

Indeed you did and as you see it says "unresolved symbols" concerning devfs, 
why i ask should it do that because devfs should never be installed as a 
module as a matter of fact i dont belive it can, now having said that this 
gives me a hint that you have possably used a kernel configuration from a 
kernel "other" than your running kernel, meaning you copied the wrong 
configuration file to /usr/src/linux before doing 'make oldconfig'.

>
> I taken the liberty of attaching both the nvidia-installer.log, as well
> as the output of modprobe nvidia to this message.

As i explained, the modprobe command shows you have a version mismatch,
you are doing something wrong.
The log shows that you have the kernel source in /usr/src/linux and includes 
in /usr/include, the rest does not show much else.

Now what can you do to find your problem, if i can say it without being rude, 
you need to Read The Fine Manual, (again i dont mean to be rude) read it and 
the output of;
sh NVIDIA-Linux-x86-1.0-5328-pkg1.run --advanced-options
WITH CARE, because your answer(s) are there i can assure you.

If it were me i would try;

Firstly to ensure we start at the beginning;

sh NVIDIA-Linux-x86-1.0-5328-pkg1.run --uninstall

sh NVIDIA-Linux-x86-1.0-5328-pkg1.run \
  --kernel-include-path=/lib/modules/2.4.18-k7/build/include
  ( one one line of course)..

Prereq's are that you have the full kernel source in place and that you have 
the configuration file named .config for your running kernel in /usr/src/
linux or where the   --kernel-include-path= points to and that you have a 
Makefile with line 4 as;
EXTRAVERSION = -k7
and that you did 'make oldconfig' 'make dep' as well.

If all that fails then try;

sh NVIDIA-Linux-x86-1.0-5328-pkg1.run \
  --add-this-kernel

When finished you should end up with a file called;

NVIDIA-Linux-x86-1.0-5328-pkg1-custom.run

Try that...

>
> Please tell me what to attempt next.

Try reading.

>
> Thanks,
>
> -K
>
> PS: Richard, I followed your instructions line for line:
> > cd /usr/src/linux
> > make mrproper
> > cp /boot/config-xx .config
> > edit Makefile
> > change line 4 from
> > EXTRAVERSION =
> > To
> > EXTRAVERSION = -k7
> > save file;
> > make oldconfig
> > make dep
>
> yet, # sh NVIDIA-Linux-x86-1.0-5336-pkg1.run would not work.

Then i am sorry to say you have NOT followed them to the "Tee".

>

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
