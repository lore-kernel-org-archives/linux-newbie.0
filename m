From: Rei Shinozuka <shino@panix.com>
Subject: fedora and how to get mass storage devices (memory card readers) to work
Date: Mon, 12 Apr 2004 22:59:03 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040413025903.GD3579@panix.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Newbie Linux Users <linux-newbie@vger.kernel.org>

also, /var/log/messages reports:

[root@tuxedo shino]# tail -f /var/log/messages
Apr 12 22:36:57 tuxedo kernel: cdrom: This disc doesn't have any tracks I recognize!
Apr 12 22:37:01 tuxedo kernel: cdrom: This disc doesn't have any tracks I recognize!
Apr 12 22:48:44 tuxedo kernel: spurious 8259A interrupt: IRQ7.
Apr 12 22:50:54 tuxedo kernel: usb.c: USB disconnect on device 00:02.2-6 address 2
Apr 12 22:50:54 tuxedo devlabel: devlabel service started/restarted
Apr 12 22:50:56 tuxedo kernel: hub.c: new USB device 00:02.2-6, assigned address 3
Apr 12 22:50:56 tuxedo kernel: usb.c: USB device not accepting new address=3 (error=-71)
Apr 12 22:50:56 tuxedo kernel: hub.c: new USB device 00:02.2-6, assigned address 4
Apr 12 22:50:59 tuxedo usb.agent[25333]: missing kernel or user mode driver usb-storage 
Apr 12 22:51:00 tuxedo devlabel: devlabel service started/restarted

----- Forwarded message from Rei Shinozuka <shino@panix.com> -----

Subject: fedira and how to get mass storage devices (memory card readers) to work
From: Rei Shinozuka <shino@panix.com>
Date: Mon, 12 Apr 2004 22:54:02 -0400
To: Newbie Linux Users <linux-newbie@vger.kernel.org>

a real newbie-type question.

in my 2.4.7-10 RH7.2 i just put  in my /etc/fstab
/dev/sda1 /mnt/camera   auto noauto,owner,kudzu 0 0

then i could just mount my cameras and cards (in a lexar reader)
nad they were just files on /mnt/camera.

but now i get mount: /dev/sda1 is not a valid block device
brw-rw----    1 root     disk       8,   1 Sep 15  2003 /dev/sda1

anything i am doing wrong?  BTW, i do also have a USB HP printer
on the machine, which works fine.

thanks,

-rei
-- 
Rei Shinozuka shino@panix.com
Ridgewood, New Jersey

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

----- End forwarded message -----

-- 
Rei Shinozuka shino@panix.com
Ridgewood, New Jersey

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
