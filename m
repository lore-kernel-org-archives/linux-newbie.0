From: Ray Olszewski <ray@comarre.com>
Subject: RE: Configuring lilo to boot from sda after RH 9.0 install
Date: Tue, 15 Apr 2003 16:08:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030415155724.01e95958@celine>
References: <5.1.0.14.1.20030415121527.01e96f68@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001001c31b32$d9b6daa0$1601a8c0@crypt>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: steven@nvts.us, linux-newbie@vger.kernel.org
Cc: babydr@baby-dragons.com

OK. It sounds to me like you do NOT have the lilo bootloader installed on 
sda. To do that, you should do the following (as root):

         1. Copy the file to the usual name, with "cp 
/etc/lilo.conf.anaconda /etc/lilo.conf".

         2. Edit lilo.conf so it works (I'll return to this).

         3. Run lilo.

The lilo.conf.anaconda has (relative to the lilo.conf files I am used to) a 
couple of errors, a couple of omissions, and one thing I do not understand. 
Going through it:

>prompt
>timout=50
>boot=/dev/sda
>map=/boot/map
>install=boot/boot.b
>message=/boot/message
>linear

These are the general settings and look fine (you may or may not need the 
"linear" entry, but it shouldn't hurt). You probably want to add this line:

         default=linux

to tell lilo which kernel to boot if you don't interrput the boot proces to 
select one manually. (I'm only guessing, of course, which is your default 
kernel, but it is customary to label that one Linux or linux.

>image=/boot/vm-linuz-2.4.20-8smp
>lable=linux

should read "label", not "lable"

>initrd=/boot/initrd-2.4.20-8smp.img
>read-only
>append="root=LABEL=1"

This is the line I do not understand. I suppose it interacts with the entry 
in /etc/fstab, but I've never done it that way so I do not know if the two, 
together, are OK or not. A more conservative approach would be to specify:

         root=/dev/sda1

or whatever sda? partition has the root filesystem on it.

>image=/boot/vmlinux-2.4.20-8
>lable=linux-up

label, not lable

>initrd=/boot/initrd-2.4.20-8.img
>read-only
>append="root=LABEL=/

Same comment as above.

As I said, there are some details in what you are doing that are different 
from my usual practice, and RH 9 is new enough that even experienced RH 
users (I'm not one) won't yet be familiar with whatever new quirks RH has 
added this time around.

So I'm not sure if these suggestions will work as written or require a bit 
of fiddling at your end. But they should get you on the right track at least.

At 03:39 PM 5/15/2003 -0700, Steven Ackerman wrote:
[old stuff deleted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
