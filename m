From: Ray Olszewski <ray@comarre.com>
Subject: Re: block-major-33
Date: Fri, 27 Sep 2002 23:26:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020927230720.026376f0@celine>
References: <200209281258.10873.tiemo.krueger@mycable.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209281258.10873.tiemo.krueger@mycable.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; 
To: adam@luchjenbroers.com, linux-newbie@vger.kernel.org

Tiemo -- Please clarify what you are doing.

=46irst, when you write --

>Then I try to mount the CF Card (which is VFAT and VFAT is in my kerne=
l)
>with
>
>mount -t vfat /dev/hdxx /mnt
>
>The response is then:
>
>kmod: failed to exec /sbin/modprobe -s -k block-major-33, errno =3D 2
>mount: /dev/hde is not a valid block device

what actual command are you entering? The "hdxx" in your command line i=
s=20
inconsistent with the "hde" in the result. I'm *guessing* that when you=
=20
write "hdxx", you mean you actually type something like "hde1". But tha=
t=20
should return an error with respect to (in my example) hde1, not hde.

Second, I'm uncertain as to why you are getting a modprobe message (you=
=20
seem to be saying that you did everything right but it still doesn't wo=
rk,=20
and that's not the sort of description that anyone can intelligently=20
troubleshoot), but the block-major-33 just refers to hde, hdf,  and the=
=20
various hde* and hdf* devices (which differ by their minor number).=20
Simliarly, block-major-22 is hdc and hdd, and 3 is hda and hdb. Do you =
have=20
an /etc/modules.conf file in your root filesystem? If yes, what is=20
block-major-33 an alias for?

All this suggests to me that either your kernel lacks IDE support, or y=
our=20
hardware uses a non-standard IDE controller.

During the boot/init process, does the kernel report finding any of the=
 IDE=20
devices? (For that matter, are there any IDE devices other than the CF?=
=20
What is the kernel loading from? What is your root filesystem on, or lo=
aded=20
from if it is a RAM disk)

A standard Linux kernel (I just checked 2.4.17) should need only these=20
choices included

          <*> Enhanced IDE/MFM/RLL disk/cdrom/tape/floppy support
         <*>   Include IDE/ATA-2 DISK support

to support regular IDE drives. So if you have a hard disk on the system=
=20
that you cannot access, as your mention of block-major-3 seems to sugge=
st,=20
then you have a basic problem with the kernel's IDE support. If the dev=
ices=20
in question are all CFs (or the same CF moved fom one IDE channel to=20
another), then your problem may be specific to the CF stuff, an area I =
am=20
not familiar with.

I don't know is this sort of response is helpful or not. If not, I'm so=
rry.

At 12:58 PM 9/28/02 +0930, Tiemo Kr=FCger - mycable GmbH wrote:
>Hi,
>
>I'm not sure if I found the right group to place my request, so pls
>apologize
>for any inconvenience.
>
>I'm busy porting 2.4.17 and .18 to a MIPS 32 board.
>There is a PCMCIA slot and I want to access a CompactFlash Card in a
>belonging "CF to PCMCIA" adapter.
>Hotplugging of the Card seems to work as I get belonging messages.
>
>Then I try to mount the CF Card (which is VFAT and VFAT is in my kerne=
l)
>with
>
>mount -t vfat /dev/hdxx /mnt
>
>The response is then:
>
>kmod: failed to exec /sbin/modprobe -s -k block-major-33, errno =3D 2
>mount: /dev/hde is not a valid block device
>
>I don't have modprobe in my root filesystem and during testing I want =
to
>work just with in-kernel-compiled modules and not loadable modules.
>
>So it seems that I missed to compile the belonging modules
>for hda/hdb hdc/hdd hde/hdf into my kernel.
>I've tried already some options but didn't found out a correct setting=
=2E
>Is there any essential module which has to be activated?
>As far as I've seen there are for the above named devices the
>block-major 3, 22 and 33 responsible.
>Do they correspond to any specific kernel config setting?
>
>If I remove the "loadable-modules" option from the kernel I just get
>the message:
>mount: /dev/hdx is not a valid block device




--
-------------------------------------------"Never tell me the odds!"---=
-----
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-----------------------------------------------------------------------=
--------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
