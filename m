From: John Kelly <bilbo@waitrose.com>
Subject: Re: fedora and how to get mass storage devices (memory card readers) to work
Date: Tue, 13 Apr 2004 17:16:59 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040413171659.03c65dda.bilbo@waitrose.com>
References: <20040413025903.GD3579@panix.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040413025903.GD3579@panix.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Mon, 12 Apr 2004 22:59:03 -0400
Rei Shinozuka <shino@panix.com> wrote:

> also, /var/log/messages reports:
> 
> [root@tuxedo shino]# tail -f /var/log/messages
> Apr 12 22:36:57 tuxedo kernel: cdrom: This disc doesn't have any
> tracks I recognize! Apr 12 22:37:01 tuxedo kernel: cdrom: This disc
> doesn't have any tracks I recognize! Apr 12 22:48:44 tuxedo kernel:
> spurious 8259A interrupt: IRQ7. Apr 12 22:50:54 tuxedo kernel:
> usb.c: USB disconnect on device 00:02.2-6 address 2 Apr 12 22:50:54
> tuxedo devlabel: devlabel service started/restarted Apr 12 22:50:56
> tuxedo kernel: hub.c: new USB device 00:02.2-6, assigned address 3
> Apr 12 22:50:56 tuxedo kernel: usb.c: USB device not accepting new
> address=3 (error=-71) Apr 12 22:50:56 tuxedo kernel: hub.c: new USB
> device 00:02.2-6, assigned address 4 Apr 12 22:50:59 tuxedo
> usb.agent[25333]: missing kernel or user mode driver usb-storage Apr
> 12 22:51:00 tuxedo devlabel: devlabel service started/restarted
>
< Rest deleted....>

Hi,
Here are the commands I use to view files on my camera.  I have
problems remembering how to do things so the commands are in a file.
:-)


jpk@debian:~$ cat mounting_a_usb_tingy.txt 
# usbview
# lsmod
# modprobe usb-storage
# mount -t usbdevfs 0  /proc/bus/usb
# mount -t vfat /dev/sda1 /mnt/usb/

usbview shows what usb devices are connected to the machine.
lsmod 
shows what modules are loaded.
You need the usb-storage modules (or have it compiled into the
kernel), so modprobe usb-storage loads the usb storage module.
I think you might also need the generic SCCI module too. If so you may
have to do: modprobe sg
I can't remember the details about the next command but it is
necessary on my machine mount -t usbdevfs 0 /proc/bus/usb 
And finally, I mount the filesystem manually with 
mount -t vfat /dev/sda1 /mnt/usb/

Hope this helps.

reagards,

John Kelly



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
