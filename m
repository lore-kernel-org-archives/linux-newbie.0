From: "Amin" <raihan@citech-bd.com>
Subject: Re: Network card and kernel module problems
Date: Wed, 5 Feb 2003 10:47:33 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000001c2ccd7$bcfb0e80$eb6510ac@citechbd.com>
References: <5.1.0.14.1.20030203091129.02140130@celine>
Mime-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0032_01C2CD03.FCEECE60"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.

------=_NextPart_000_0032_01C2CD03.FCEECE60
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Hi people,

First --- sorry about not including specific error messages earlier.  The
attached file is a (snipped) list of bootup messages, and contains the
messages I'm concerned with.

I've decided to reinstall, perhaps try a different distro, and see if that
will do the trick.  And thanks
to Lawson for pointing out the EXTRAVERSION point.  Just want to make sure
about something --- you're talking about
/usr/src/linux-2.4.18-14/Makefile, right?

Yawar Amin

P.S.  Is it a good sign or a bad sign that I've got my kernel version
memorized?


------=_NextPart_000_0032_01C2CD03.FCEECE60
Content-Type: text/plain;
	name="startup_errors.txt"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="startup_errors.txt"

...=0A=
=0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
try_inc_mod_count_Re6105b23 =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
jiffies_R0da02d67 =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
del_timer_Rfc62f16d =0A=
Feb  4 15:41:26 localhost netfs: Mounting other filesystems:  succeeded=0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
sprintf_R1d26aa98 =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
printk_R1b7d4074 =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: insmod =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o failed =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: insmod keybdev =
failed =0A=
Feb  4 15:40:45 localhost rc.sysinit: Initializing USB keyboard:  failed =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o:  =0A=
Feb  4 15:40:45 localhost modprobe: unresolved symbol =
mod_timer_R1f13d309 =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
unregister_chrdev_Rc192d491 =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
register_chrdev_R44b36f42 =0A=
Feb  4 15:41:27 localhost autofs: automount startup succeeded=0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
request_module_R27e4dc04 =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
try_inc_mod_count_Re6105b23 =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
jiffies_R0da02d67 =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
del_timer_Rfc62f16d =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
sprintf_R1d26aa98 =0A=
Feb  4 15:41:27 localhost sshd: Starting sshd:=0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: unresolved symbol =
printk_R1b7d4074 =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: insmod =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o failed =0A=
Feb  4 15:40:45 localhost modprobe: =
/lib/modules/2.4.18-14/kernel/drivers/input/input.o: insmod mousedev =
failed =0A=
=0A=
... [snip]=0A=
=0A=
Feb  4 15:41:15 localhost network: Setting network parameters:  =
succeeded =0A=
Feb  4 15:41:16 localhost network: Bringing up loopback interface:  =
succeeded =0A=
Feb  4 15:41:17 localhost ifup:  =0A=
Feb  4 15:41:17 localhost ifup: Determining IP information for eth0... =0A=
Feb  4 15:41:22 localhost ifup:  failed; no link present.  Check cable? =0A=
Feb  4 15:41:22 localhost network: Bringing up interface eth0:  failed =0A=
=0A=
...=0A=

------=_NextPart_000_0032_01C2CD03.FCEECE60--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
