From: James Miller <jamtat@mailsnare.net>
Subject: net detection failure with old kernel
Date: Mon, 15 Dec 2003 15:03:23 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0312151450400.603@debian-box>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On a Debian install I recently did, I ended up getting a newer kernel to
replace the 2.2.20 kernel I initially installed on the system.  But the
old kernel remains on the system, and I can boot from it if I enter
"LinuxOLD" at the command prompt.  The problem is, when I boot using that
older kernel, the network doesn't work (it used to work fine prior to
updating kernels).  The system loads the right driver for the card, but it
somehow can't get a dhcp offer.  I'm wondering why this is.  Anyone have
any ideas?  Here's an excerpt from a log file that shows the failed dhcp
attempt:

*********BEGIN boot.0 LOG FILE****************************
Mon Dec 15 06:20:36 2003: bootlogd.
Mon Dec 15 06:20:36 2003: Loading /etc/console/boottime.kmap.gz
Mon Dec 15 06:20:36 2003: Activating swap.
Mon Dec 15 06:20:36 2003: Checking root file system...
Mon Dec 15 06:20:36 2003: fsck 1.35-WIP (21-Aug-2003)
Mon Dec 15 06:20:36 2003: /dev/hda1: clean, 25955/219968 files, 160356/439480 blocks
Mon Dec 15 12:20:38 2003: System time was Mon Dec 15 18:20:38 UTC 2003.
Mon Dec 15 12:20:38 2003: Setting the System Clock using the Hardware Clock as reference...
Mon Dec 15 12:20:40 2003: System Clock set. System local time is now Mon Dec 15 12:20:40 CST 2003.
Mon Dec 15 12:20:40 2003: Calculating module dependencies... done.
Mon Dec 15 12:20:52 2003: Loading modules: unix af_packet smc-ultra nfs vfat smbfs usb-storage
Mon Dec 15 12:20:56 2003: Checking all file systems...
Mon Dec 15 12:20:56 2003: fsck 1.35-WIP (21-Aug-2003)
Mon Dec 15 12:20:56 2003: Setting kernel variables..
Mon Dec 15 12:20:56 2003: /etc/init.d/rcS: line 17: [: =: unary operator expected
Mon Dec 15 12:20:56 2003: Mounting local filesystems...
Mon Dec 15 12:20:56 2003: nothing was mounted
Mon Dec 15 12:20:57 2003: Running 0dns-down to make sure resolv.conf is ok...done.
Mon Dec 15 12:20:58 2003: Cleaning: /etc/network/ifstate.
Mon Dec 15 12:20:58 2003: Setting up IP spoofing protection: rp_filter.
Mon Dec 15 12:20:58 2003: Configuring network interfaces...Internet Software Consortium DHCP Client 2.0pl5
Mon Dec 15 12:20:59 2003: Copyright 1995, 1996, 1997, 1998, 1999 The Internet Software Consortium.
Mon Dec 15 12:20:59 2003: All rights reserved.
Mon Dec 15 12:20:59 2003:
Mon Dec 15 12:20:59 2003: Please contribute if you find this software useful.
Mon Dec 15 12:20:59 2003: For info, please visit http://www.isc.org/dhcp-contrib.html
Mon Dec 15 12:20:59 2003:
Mon Dec 15 12:21:00 2003: Listening on LPF/eth0/00:00:c0:1a:19:76
Mon Dec 15 12:21:00 2003: Sending on   LPF/eth0/00:00:c0:1a:19:76
Mon Dec 15 12:21:00 2003: Sending on   Socket/fallback/fallback-net
Mon Dec 15 12:21:00 2003: DHCPREQUEST on eth0 to 255.255.255.255 port 67
Mon Dec 15 12:21:04 2003: DHCPREQUEST on eth0 to 255.255.255.255 port 67
Mon Dec 15 12:21:08 2003: DHCPREQUEST on eth0 to 255.255.255.255 port 67
Mon Dec 15 12:21:16 2003: DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 3
Mon Dec 15 12:21:19 2003: DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 5
Mon Dec 15 12:21:24 2003: DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 11
Mon Dec 15 12:21:35 2003: DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 15
Mon Dec 15 12:21:50 2003: DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 14
Mon Dec 15 12:22:04 2003: DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 13
Mon Dec 15 12:22:17 2003: No DHCPOFFERS received.
Mon Dec 15 12:22:17 2003: Trying recorded lease 192.168.254.4
Mon Dec 15 12:22:18 2003: PING 192.168.254.254 (192.168.254.254): 56 data bytes
Mon Dec 15 12:22:28 2003:
Mon Dec 15 12:22:28 2003: --- 192.168.254.254 ping statistics ---
Mon Dec 15 12:22:28 2003: 1 packets transmitted, 0 packets received, 100% packet loss
Mon Dec 15 12:22:28 2003: bound: renewal in 98438 seconds.
Mon Dec 15 12:22:28 2003: done.
Mon Dec 15 12:22:28 2003: Starting portmap daemon: portmap.
************END boot.0 LOG FILE*************************************

Here, on the other hand, is the log file for the newer kernel, showing the
successful dhcp negotiation:

************BEGIN boot LOG FILE*************************************
Mon Dec 15 06:25:00 2003: bootlogd.
Mon Dec 15 06:25:00 2003: Loading /etc/console/boottime.kmap.gz
Mon Dec 15 06:25:00 2003: Activating swap.
Mon Dec 15 06:25:00 2003: Checking root file system...
Mon Dec 15 06:25:00 2003: fsck 1.35-WIP (21-Aug-2003)
Mon Dec 15 06:25:00 2003: /dev/hda1: clean, 25965/219968 files, 160424/439480 blocks
Mon Dec 15 12:25:02 2003: System time was Mon Dec 15 18:25:02 UTC 2003.
Mon Dec 15 12:25:02 2003: Setting the System Clock using the Hardware Clock as reference...
Mon Dec 15 12:25:04 2003: System Clock set. System local time is now Mon Dec 15 12:25:04 CST 2003.
Mon Dec 15 12:25:04 2003: Calculating module dependencies... done.
Mon Dec 15 12:25:30 2003: Loading modules: unix af_packet smc-ultra nfs vfat smbfs usb-storage
Mon Dec 15 12:25:36 2003: Checking all file systems...
Mon Dec 15 12:25:36 2003: fsck 1.35-WIP (21-Aug-2003)
Mon Dec 15 12:25:36 2003: Setting kernel variables..
Mon Dec 15 12:25:37 2003: /etc/init.d/rcS: line 17: [: =: unary operator expected
Mon Dec 15 12:25:37 2003: Mounting local filesystems...
Mon Dec 15 12:25:37 2003: nothing was mounted
Mon Dec 15 12:25:37 2003: Running 0dns-down to make sure resolv.conf is ok...done.
Mon Dec 15 12:25:38 2003: Cleaning: /etc/network/ifstate.
Mon Dec 15 12:25:38 2003: Setting up IP spoofing protection: rp_filter.
Mon Dec 15 12:25:38 2003: Configuring network interfaces...Internet Software Consortium DHCP Client 2.0pl5
Mon Dec 15 12:25:39 2003: Copyright 1995, 1996, 1997, 1998, 1999 The Internet Software Consortium.
Mon Dec 15 12:25:39 2003: All rights reserved.
Mon Dec 15 12:25:39 2003:
Mon Dec 15 12:25:39 2003: Please contribute if you find this software useful.
Mon Dec 15 12:25:39 2003: For info, please visit http://www.isc.org/dhcp-contrib.html
Mon Dec 15 12:25:39 2003:
Mon Dec 15 12:25:40 2003: Listening on LPF/eth0/00:00:c0:1a:19:76
Mon Dec 15 12:25:40 2003: Sending on   LPF/eth0/00:00:c0:1a:19:76
Mon Dec 15 12:25:40 2003: Sending on   Socket/fallback/fallback-net
Mon Dec 15 12:25:40 2003: DHCPREQUEST on eth0 to 255.255.255.255 port 67
Mon Dec 15 12:25:40 2003: DHCPACK from 192.168.254.254
Mon Dec 15 12:25:40 2003: bound to 192.168.254.4 -- renewal in 129600 seconds.
Mon Dec 15 12:25:40 2003: done.
Mon Dec 15 12:25:41 2003: Starting portmap daemon: portmap.
************END boot.0 LOG FILE*************************************

Feedback will be appreciated.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
