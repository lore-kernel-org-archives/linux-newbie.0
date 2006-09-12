From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: system freezes while using Mozilla
Date: Mon, 11 Sep 2006 22:38:15 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0609112132160.24457-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I recently installed Fedora core 5 on an intel dual-core CPU box. The 
machine froze up while running gnome2 while I was engaged in simple 
browsing activity using firefox 1.5.01. 

The "freezing" occurred twice one after the other and during both these 
instances I was using firefox to browse the web (while having at least 2-4 
firefox tabs open). The machine froze up in both instances and did not 
respond to the keyboard/mouse or to a remote login/ping. I checked 
/var/log/messages just before the "restart" line and did not find any 
unusual entries (+/-5 lines around the restart lines from 
/var/log/messages is included below). 

I was wondering if:
(a) this matched any known issue with FC5 and intel hardware
(b) if there was any way that I could _recover_ control upon a system 
freeze such as this? 

All responses are appreciated. 


Thanks,

-K

---------
lines from /var/log/messages: 

...
Sep 11 15:23:19 dhcp-152-3-194-19 dhclient: DHCPREQUEST on eth0 to 
152.3.17.193 port 67
Sep 11 15:23:19 dhcp-152-3-194-19 dhclient: DHCPACK from 152.3.17.193
Sep 11 15:23:19 dhcp-152-3-194-19 dhclient: bound to 152.3.194.19 -- 
renewal in 3162 seconds.
Sep 11 16:16:01 dhcp-152-3-194-19 dhclient: DHCPREQUEST on eth0 to 
152.3.17.193 port 67
Sep 11 16:16:01 dhcp-152-3-194-19 dhclient: DHCPACK from 152.3.17.193
Sep 11 16:16:01 dhcp-152-3-194-19 dhclient: bound to 152.3.194.19 -- 
renewal in 3472 seconds.
Sep 11 16:32:19 dhcp-152-3-194-19 syslogd 1.4.1: restart.
Sep 11 16:32:20 dhcp-152-3-194-19 kernel: klogd 1.4.1, log source = 
/proc/kmsg started.
Sep 11 16:32:20 dhcp-152-3-194-19 kernel: Linux version  
2.6.15-1.2054_FC5smp (bhcompile@hs20-bc1-3.build.redhat.com) (gcc version 
4.1.0 20060304 (Red Hat 4.1.0-3)) #1 SMP Tue Mar 14 16:05:46 EST 2006
Sep 11 16:32:20 dhcp-152-3-194-19 kernel: BIOS-provided physical RAM map:
Sep 11 16:32:20 dhcp-152-3-194-19 kernel:  BIOS-e820: 0000000000000000 - 
00000000000a0000 (usable)

...

Sep 11 16:34:30 dhcp-152-3-194-19 kernel: audit(1158006870.112:18): avc:  
granted  { execmem } for  pid=2432 comm="nautilus" 
scontext=user_u:system_r:unconfined_t:s0 
tcontext=user_u:system_r:unconfined_t:s0 tclass=process
Sep 11 16:34:51 dhcp-152-3-194-19 kernel: audit(1158006891.041:19): avc:  
granted  { execstack } for  pid=2486 comm="xscreensaver-gl"  
scontext=user_u:system_r:unconfined t:s0 
tcontext=user_u:system_r:unconfined_t:s0 tclass=process
Sep 11 16:34:51 dhcp-152-3-194-19 kernel: audit(1158006891.041:20): avc:  
granted  { execmem } for  pid=2486 comm="xscreensaver-gl"  
scontext=user_u:system_r:unconfined_t:s0 
tcontext=user_u:system_r:unconfined_t:s0 tclass=process
Sep 11 16:53:11 dhcp-152-3-194-19 syslogd 1.4.1: restart.
Sep 11 16:53:12 dhcp-152-3-194-19 kernel: klogd 1.4.1, log source = 
/proc/kmsg started.
Sep 11 16:53:12 dhcp-152-3-194-19 kernel: Linux version 
2.6.15-1.2054_FC5smp (bhcompile@hs20-bc1-3.build.redhat.com) (gcc version 
4.1.0 20060304 (Red Hat 4.1.0-3)) #1 SMP Tue Mar 14 16:05:46 EST 2006
Sep 11 16:53:12 dhcp-152-3-194-19 kernel: BIOS-provided physical RAM map:
Sep 11 16:53:12 dhcp-152-3-194-19 kernel:  BIOS-e820: 0000000000000000 - 
00000000000a0000 (usable)
...


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
