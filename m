From: James Miller <jamtat@mailsnare.net>
Subject: Re: net (& module, I guess) problems after dist-upgrade
Date: Mon, 14 Jun 2004 14:13:48 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406141358180.1145@debian-emach>
References: <Pine.LNX.4.58.0406141228040.1108@debian-emach>
 <5.1.0.14.1.20040612204315.02004830@celine> <Pine.LNX.4.58.0406121445360.1825@debian-emach>
 <5.1.0.14.1.20040612111803.01fd5808@celine> <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach> <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach> <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine> <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040612121108.01fc9a80@celine> <Pine.LNX.4.58.0406121445360.1825@debian-emach>
 <5.1.0.14.1.20040612204315.02004830@celine> <5.1.0.14.1.20040614084449.01ff4bf0@celine>
 <Pine.LNX.4.58.0406141228040.1108@debian-emach> <5.1.0.14.1.20040614113439.01fa6ff0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040614113439.01fa6ff0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 14 Jun 2004, Ray Olszewski wrote:

> This is a wordy way of telling you that you should run depmod. The modutils
> init script is supposed to do this for you, but it may interact with initrd
> in funny ways. So to be safe, do this (following the dpkg-reconfigure):
>
>          1. Reboot the system.
>          2. Log in as root and run "depmod -a".
>          3. Reboot the system.
>
> This may not fix your modules problem. But it will fix the problem that
> this message is warning you about.

Ok.  I did that once before but I'll do it again right after I send off
this email (I've just done depmod -a - no error output - so all that
remains is to reboot).

> >Not touching initrd symlinks since we are being reinstalled (2.6.6-1)
> >Not updating image symbolic links since we are being updated (2.6.6-1)
>
> Since I don't use initrd here, I can't tell you what (if anything) to do
> about this. But it does reinforce my concern that your problem has
> something to do with the initrd step in kernel loading.
>
> If you post again, please provide next time to lilo.conf stanzas for the
> current kernel and for 2.4.24.

Sorry that I didn't note that I was not giving all output for all kernels
installed on this system.  I don't even have an item in my boot menu for
the 2.4.24 kernel, and plan on removing it soon (have been planning on it,
but have procrastinated).

 cat /etc/lilo.conf
vga=791
boot=/dev/hda
root=/dev/hda1
install=/boot/boot.b
map=/boot/map
delay=20
default=Linux2-6

image=/vmlinuz.2-6
        label=Linux2-6
        initrd=/initrd.img.2-6

image=/vmlinuz.2-4
        label=Linux2-4
        initrd=/initrd.img.2-4

image=/vmlinuz.2-4-22
        label=Linux2-4-22
        initrd=/initrd.img.2-4-22

image=/vmlinuz.2-6-5
        label=Linux2-6-5
        initrd=/initrd.img.2-6-5

That's the entire file, btw.  initrd.img.2-6 is a symlink to
/boot/initrd.img-2.6.6-1-686;
initrd.img.2-4 is a symlink to /boot/initrd.img-2.4.26-1-686;
initrd.img.2-4-22 is a symlink to /boot/initrd.img-2.4.22-1-686;
initrd.img.2-6-5 is a symlink to /boot/initrd.img-2.6.5-1-686.  The
various vmlinuz'es are similarly symlinked.  It's horribly complex and
error-inviting, I know.  I do plan on deleting some of those kernels once
I get things (should I say *if* I get things?) working as they should.

My initial lilo.conf error - in case it's relevant - was pointing the new
kernel (2.6.6) at the 2.6.5 initrd.img.  I got a blank screen and system
freeze on trying to boot under that setup.  I booted the 2.6.5 kernel
using its own lilo menu item after that and straightened out the error.
Running lilo from the command prompt now does not generate any errors.

Here I go for another reboot . . .

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
