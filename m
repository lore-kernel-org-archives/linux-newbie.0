From: Walter Logeman <walter@psybernet.co.nz>
Subject: Re: USB device installation
Date: Fri, 19 Apr 2002 11:49:08 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020418234908.A06CE5272A@psybernet.co.nz>
References: <20020417221621.7E4A052728@psybernet.co.nz> <20020418121355.C487352729@psybernet.co.nz> <00e901c1e6db$739bc820$0901a8c0@system>
Reply-To: walter@psybernet.co.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00e901c1e6db$739bc820$0901a8c0@system>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tom Beer <mailings@analogon.com>
Cc: linux-newbie@vger.kernel.org

In Re: USB device installation, on Fri, 19 Apr 2002 01:17, 
 Tom Beer wrote:



> please tell us your system (uname -a).

1001 walter@psybernet:~ (08:56:03)
$ uname -a
Linux psybernet.co.nz 2.4.8-26mdk #1 Sun Sep 23 17:06:39 CEST 2001 
i686 unknown


> Have you compiled some module for the smart
> card reader? If yes, please let me the gcc version
> (if you used gcc) know.

No I have not compiled anything but have modules loaded that I 
thought were needed - ie usb-storage, scsi_mod, usbcore, I will 
append the output of lsmod.


> What is your /etc/fstab entry?
> Something similar to
>
> /dev/sda1 swap swap defaults 0 0

1007 root@psybernet:/etc (11:39:48)
# cat fstab
<snip>
/dev/sda1 /mnt/smedia vfat noauto,user

I have just added the last line but I doubt it will work as 

1008 root@psybernet:/etc (11:39:53)
# mount /dev/sda1 /mnt/smedia
mount: /dev/sda1: unknown device

is still the situation.

> What is the exact name of your smartcard drive?
A-TEC SSFDC 
Manufacturer: A-TEC Subsystem Inc

Output from usbview also appended.

Thanks for your interest in this Tom.

Walter



~~~

1007 root@psybernet:/etc (11:39:48)
# cat fstab

/dev/hda5 / ext3 noatime 1 1
none /dev/pts devpts mode=0620 0 0
none /dev/shm tmpfs defaults 0 0
/dev/hda7 /home ext3 noatime 1 2
/dev/scd0 /mnt/cdrom auto 
user,iocharset=iso8859-1,umask=0,exec,codepage=850,ro,noauto 0 0
/dev/fd0 /mnt/floppy auto 
user,iocharset=iso8859-1,umask=0,sync,exec,codepage=850,noauto 0 0
/dev/hda2 /mnt/windows ntfs 
user,uid=501,gid=501,iocharset=iso8859-1 0 0
/dev/hdc /mnt/cdrom1 auto defaults,ro,user,noauto 0 0
none /proc proc defaults 0 0
/dev/hda6 swap swap defaults 0 0
/dev/sda1 /mnt/smedia vfat noauto,user



~~~


Output from usbview:

A-TEC SSFDC 
Manufacturer: A-TEC Subsystem Inc.   
Speed: 12Mb/s (full)
USB Version:  1.00
Device Class: 00(>ifc )
Device Subclass: 00
Device Protocol: 00
Maximum Default Endpoint Size: 64
Number of Configurations: 1
Vendor Id: 0874
Product Id: 1002
Revision Number:  2.00

Config Number: 1
	Number of Interfaces: 1
	Attributes: 80
	MaxPower Needed: 100mA

	Interface Number: 0
		Name: (none)
		Alternate Number: 0
		Class: ff(vend.) 
		Sub Class: 0
		Protocol: 0
		Number of Endpoints: 3

			Endpoint Address: 01
			Direction: out
			Attribute: 2
			Type: Bulk
			Max Packet Size: 64
			Interval:   0ms

			Endpoint Address: 82
			Direction: in
			Attribute: 2
			Type: Bulk
			Max Packet Size: 64
			Interval:   0ms

			Endpoint Address: 83
			Direction: in
			Attribute: 3
			Type: Int.
			Max Packet Size: 2
			Interval: 2

~~~

1009 root@psybernet:/etc (11:40:51)
# lsmod
Module                  Size  Used by
vfat                    9968   0  (autoclean)
fat                    32192   0  (autoclean) [vfat]
sd_mod                 11792   0  (autoclean) (unused)
ppp_deflate            42208   0  (autoclean)
bsd_comp                4576   0  (autoclean)
ppp_async               6672   1  (autoclean)
ppp_generic            19616   3  (autoclean) [ppp_deflate bsd_comp 
ppp_async]
slhc                    5136   1  (autoclean) [ppp_generic]
sg                     28624   0  (autoclean)
sr_mod                 14912   0  (autoclean)
lt_serial              20336   3
lt_modem              314720   0  [lt_serial]
maestro3               25280   2
soundcore               4208   2  [maestro3]
ac97_codec              9312   0  [maestro3]
lp                      5808   0
parport_pc             20240   1
parport                24768   1  [lp parport_pc]
irtty                   6000   2  (autoclean)
irda                   93568   1  (autoclean) [irtty]
ds                      6992   2
i82365                 23728   2
pcmcia_core            43936   0  [ds i82365]
ip_vs                  62000   0  (autoclean)
keybdev                 1920   0  (unused)
mousedev                4192   1
hid                    18480   0  (unused)
iptable_nat            16560   0  (autoclean) (unused)
ip_conntrack           15600   1  (autoclean) [iptable_nat]
usbmouse                2048   0  (unused)
input                   3648   0  [keybdev mousedev hid usbmouse]
iptable_mangle          2048   0  (autoclean) (unused)
iptable_filter          2048   0  (autoclean) (unused)
ip_tables              11488   5  [iptable_nat iptable_mangle 
iptable_filter]
usb-uhci               21232   0  (unused)
eepro100               17120   0  (autoclean) (unused)
nls_iso8859-1           2880   1  (autoclean)
ntfs                   49776   1  (autoclean)
usb-storage            52528   0  (unused)
usbcore                50752   1  [hid usbmouse usb-uhci 
usb-storage]
ide-scsi                8096   0
scsi_mod               91072   4  [sd_mod sg sr_mod usb-storage 
ide-scsi]
rtc                     5600   0  (autoclean)
ext3                   63084   2
jbd                    39168   2  [ext3]


-- 
Walter Logeman
Psychotherapist
http://www.psybernet.co.nz
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
