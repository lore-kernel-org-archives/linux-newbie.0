From: Tiemo =?iso-8859-1?q?Kr=FCger=20-=20mycable=20GmbH?= 
	<tiemo.krueger@mycable.de> (by way of Adam Luchjenbroers
	<adam@luchjenbroers.com>)
Subject: block-major-33
Date: Sat, 28 Sep 2002 12:58:10 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209281258.10873.tiemo.krueger@mycable.de>
Reply-To: adam@luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I'm not sure if I found the right group to place my request, so pls
apologize
for any inconvenience.

I'm busy porting 2.4.17 and .18 to a MIPS 32 board.
There is a PCMCIA slot and I want to access a CompactFlash Card in a
belonging "CF to PCMCIA" adapter.
Hotplugging of the Card seems to work as I get belonging messages.

Then I try to mount the CF Card (which is VFAT and VFAT is in my kernel)
with

mount -t vfat /dev/hdxx /mnt

The response is then:

kmod: failed to exec /sbin/modprobe -s -k block-major-33, errno = 2
mount: /dev/hde is not a valid block device

I don't have modprobe in my root filesystem and during testing I want to
work just with in-kernel-compiled modules and not loadable modules.

So it seems that I missed to compile the belonging modules
for hda/hdb hdc/hdd hde/hdf into my kernel.
I've tried already some options but didn't found out a correct setting.
Is there any essential module which has to be activated?
As far as I've seen there are for the above named devices the
block-major 3, 22 and 33 responsible.
Do they correspond to any specific kernel config setting?

If I remove the "loadable-modules" option from the kernel I just get
the message:
mount: /dev/hdx is not a valid block device

kind regards

Tiemo

--
-------------------------------------------------------
Tiemo Krueger       Tel:  +49 48 73 90 19 86
mycable GmbH        Fax: +49 48 73 90 19 76
Boeker Stieg 43
D-24613 Aukrug      eMail: tk@mycable.de

Public Kryptographic Key is available on request
-------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-config" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
