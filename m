From: Ray Olszewski <ray@comarre.com>
Subject: Re: how to use appl of one image in another
Date: Thu, 19 Jun 2003 07:21:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030619065253.02f596b8@celine>
References: <5.1.0.14.1.20030618101820.02f53830@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030619101217.99432.qmail@web20501.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

This report is far too incomplete to get a good response. First of all, 
your earlier message asked about applications "like Xwindows", and the ones 
you list here neither include X nor are similar to it in any interesting 
way I can think of.

Second, selected, context-free log output gives a troubleshooter almost 
nothing to go on.

Specific comments interspersed below.

At 03:12 AM 6/19/2003 -0700, Ravi Kumar Munnangi wrote:


>I have installed RH8.0 in my system.
>
>Then I have downloaded the linux kernel 2.4.18 and
>configured it and compiled it to get new image.
>I have used the old configuration(make oldconfig) with
>my RH8.0(2.4.18-14).

I don't quite follow the description of this procedure. It is unclear what 
the relation between your old kernel and new kernel is, where you got the 
new kernel source from, and whether you followed the complete procedure for 
compiling a kernel (as outlined in /usr/src/linux/README). For *example*, 
after compiling the kernel, did you do both "make modules" and "make 
modules_install"?

>when I boot into the new image,I have observed the
>following things form the /var/log/boot.log
>
>   sshd:starting sshd
>   sshd:execvp:no such file or directory
>   sshd:failed
>   rc:starting sshd:failed

This message, and the ones that follow, indicate that the various programs 
cannot find the library call execvp. Why? Hard to say from what you've told 
us. To investigate, try running "ldd /usr/sbin/sshd" and see if any of the 
references to libraries are dangling. If one is, that is the source of your 
problem.

The same procedure applies to the rest of these.

But a real possibility (based on messages further down) is that you have a 
problem with mounting a filesystem.

>   rpc.yppasswdd:execvp:no such file or directory
>   yppasswdd:rpc.yppasswdd startup failed
>
>   gpm:execvp:no such file or directory
>   gpm:gpm startupj failed
>
>   httpd:execvp:no such file or directory
>   httpd:startup failed
>
>   crond:execvp:no such file or directory
>   crond:startup failed

Same comments as above apply to these 4.

>   rc.sysinit:mounting proc filesystem succeeded
>   sysctl:net.ipv4.ip_forward=0
>          net.ipv4.conf.default.rp_filter=1
>          net.ipv4.kernel.core_user_pid=1
>   rc.sysinit:configuring kernel parameters:succeeded
>   mount:mount:mount point /proc/bus/usb does not exist

This suggests that your kernel compile did not work the way you think it 
did, and some kernel feature that the init scripts expect was not compiled in.

>
>   rc.sysinit:mounting usb filesystem:failed
>   modprobe:can't locate module hid
>            Initaialising USB HID interface:failed
>   modprobe:can't locate module keybdev
>            Initialising USB keyboard failed
>   modprobe:can't locate module mousedev
>            Initialising USB MOUSE :failed

These make me suspect that either you did not compile and install modules, 
or your general compile procedure did not include all the features that the 
init scripts expect.

>
>   mount:mount fs type ext3 not supported by kernel
>   Mounting local filesystems :failed

The lack of ext3 support suggests one of the two problems I referred to 
above. Without knowing your filesystem setup (as reported in /etc/fstab) I 
cannot tell you all the consequences of this. But if /usr is a separate 
partition, the lack of /usr/lib could be causing many of your problems.

One workaround here is to edit /etc/fstab so the filesystems now specified 
as type ext3 are instead specified as "ext3,ext2". If you do that ... and 
if the kernel has ext2 support, but it is hard to imagine a working kernel 
that does not ... then a failure to mount as ext3 will cause a fallback to 
ext2, and the partitions will mount (albeit without journaling).

>   updfstab:execvp: no such file or directory
>   kudzu: updating /etc/fstab failed
>   iptables:modprobe
>   iptables:failed
>   iptables:can't locate module ip-tables
>   iptables:perhaps iptables or your kernel needs to be
>
>               upgraded
>
>
>   Also, the output of the command df ,
>   shows that all my partitions are of type ext3.

Don't tell me; show me (that is, quote the output). If they are ext3, but 
the kernel does not know how to mount ext3, then how did you get them to 
mount? Are you referring here to mounting under the old or the new kernel?

>
>   Iam also unable to see the files or directories of
>home,misc,nfshome,initrd,opt,usr  partitions while Iam
>able to see the files of root partition.
>
>   Is it because I have specified in the /etc/lilo.conf
>   as
>
>        "root=/dev/hda1"
>
>   Its not booting when I have given the option,
>   append="root=LABEL=/"
>
>   When my original image(RH8.0) is booting and working
>fine with this configuration and append="root=LABEL=/"
>  in lilo.conf,

I'm not certain about this, but I **think** the approach that fails depends 
on /etc/fstab, while the one that works does not. So it may be another 
manifestation of the ext3 problem you report earlier.

>   why is my new image not working ?

Probably because you compiled it incorrectly. Since there is almost no 
information in your message about the procedure you followed to get this 
source, configure it, and compile, I can't offer a *specific* suggestion. 
My general suggestion is that you review the basic instructions for how to 
compile (location identified above) and see where you did not follow them.

Your reference to "make oldconfig" is too cryptic for me to discuss it in 
any detail, but I suspect it reflects a failure to follow the right 
procedure. This approach will update an existing .config file, but for it 
to work, you need to have done a kernel compile before of a working kernel 
(so the existing .config reflects your old kernel's setup). I can't tell 
from what you sent us if you did this, or if the old kernel was a 
pre-compiled kernel-image installed by Red Hat.

Before responding, **please** read /usr/sec/linux/README so you understand 
the general procedure for compiling kernels.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
