From: Ray Olszewski <ray@comarre.com>
Subject: Re: lilo questions.......
Date: Mon, 25 Nov 2002 10:06:06 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021125093847.0212eae0@celine>
References: <02999E7B.406CD980.0006BEFC@netscape.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02999E7B.406CD980.0006BEFC@netscape.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Your "How do  do it?" description is almost right. But details count here. 
So let me make some suggestions.

At 06:46 AM 11/25/02 -0500, neil t wrote:
[...]

>If I decide to install another distro on another partition, it will 
>install 'lilo' and be the default system.

Typically, yes. It might not (your other comments reminded me that with 
Debian, at least, you can skip this step in favor of making a boot floppy). 
And a distro *might* use a bootloader other than lilo (grub is the other 
common one) or load from a DOS partition (with syslinux, for example). But 
you are unlikely to encounter these exceptions, based on what you've been 
talking about actually doing.

>If I now want to add the already installed Mandrake, I will first have to 
>(in the other distro) do this:
>
>------------mkdir /mnt/*mandrake*

*Making* this directory is not enough; you then need to *mount* the 
appropriate filesystem on it. (And using *s in directory names is bad 
practice, BTW.)

>then edit:
>
>------------/etc/lilo.conf
>add below "other distro" info:
>
>------------image=/boot/vmlinuz
>       -------------label=*mandrake*
>       -------------root=/dev/hda3
>       -------------read-only

Not sure how the --------- bits got here, but they do not belong

I can't say whether or not the image= line is correct. You have several 
alternatives here ...

1. Use the same kernel image for all distros. This is your best choice *if* 
you compile your own kernel, but probably a poor choice if you use a 
distro's stock kernel. Even then, you need to remember to put the right 
modules in /lib/modules for *each* distro's root filesystem (or, just 
conceivably ... I've never actually seen this done ... make /lib/modules a 
separate filesytem and mount it for each distro).

2. Make a separate filesystem (probably on /dev/hda) that all distros mount 
as /boot, and put all the kernels in it. Their names need to be dsitinct, 
of course ... if I did this, I'd use names like vmlinuz-2.4.19-deb and 
vmlinuz-2.4.19-mandrake. Then use the appropriate names on the various 
image= lines.

3. Retain separate /boot diretories for each distro, and edit the lilo.conf 
you install from appropriately. For example, if you were installing lilo 
from Debian, your various entries might look like this --

         image=/mnt/mandrake/boot/vmlinuz
                 label=*mandrake*
                 root=/dev/hda3
                 read-only
         image=/boot/vmlinuz
                 label=Debian
                 root=/dev/hdb2
                 read-only

>save and run /sbin/lilo

Save /etc/lilo.conf, you mean ... yes.

>Is that right?....I hope....!!!
>I went ahead and cleaned out the hd that contained RH 7.2 yesterday.  I 
>installed Deb woody 3.0 (didn't set up X yet) I had the options to make 
>the system bootable, or it says Install LILO in the MBR (I made a boot 
>disk).  I mounted it from mandrake (as a practice) and edited 
>/etc/lilo.conf and ran /sbin/lilo and it was added to the lilo list.  I 
>understand that it will run from there, but not really perfect.  That is 
>why I have the disk.  I am not sure, but is it because I copied the 
>"kernal" there?  I know it contains important info from the installation 
>there ie:  when I boot from floppy, wvdial works 'fb', but from lilo, I 
>get disconnected

This paragraph is kind of hard to follow.

I'm unclear on what some of the references to "it" refer to.

I can't figure out where "there" is in the sentence about copying the 
kernel (not "kernal", BTW).

And "not really perfect" is not very descriptive as a trouble report.

Nor do I know what "'fb'" means in "wvdial works 'fb'" ... I can't even be 
completely sure which distro you are talking about at that point (I think 
Debian) ... but I think it odd that whether you boot Debian from floppy or 
lilo affects wvdial (unless, of course, they are either running different 
kernels or mounting different root partitions, either of which would have 
enormous potential for creating differences in the application versions, 
whether kernel modules load properly, and how the init process itself 
proceeds).


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
