From: Peter <heisspf@skyinet.net>
Subject: Internet Connection in Zenwalk
Date: Sun, 17 Dec 2006 10:09:49 +0800
Message-ID: <200612170209.kBH29nqg002093@skyinet.net>
Reply-To: heisspf@skyinet.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

Recently I had a look at Zenwalk-4 distro which is slackware based with 
kernel-2.6.18.1. I kind of like what I see, however, I can't make it connect 
to the Internet.

On booting I get

Starting the Network
/etc/rc.d/rc.inet1:  /sbin/ifconfig lo 127.0.0.1
/etc/rc.d/rc.inet1:  /sbin/route add -net 127.0.0.0 netmask 255.0.0.0 lo
/etc/rc.d/rc.inet1:  /sbin/dhcpcd -d -t 60  eth0
dhcpcd: MAC address = 00:08:a1:9c:43:3a
dhcpcd[2211]: broadcasting DHCP_DISCOVER

dhcpcd[2211]: timed out waiting for a valid DHCP server response

Could it be a missing module?

Here is lsmod for my slackware-11 w/o the sound bits

ipv6                  206336  10 
sg                     24988  0 
pcmcia                 28580  0 
yenta_socket           21772  0 
rsrc_nonstatic         10496  1 yenta_socket
pcmcia_core            33040  3 pcmcia,yenta_socket,rsrc_nonstatic
dmfe                   16540  0 
agpgart                26716  0 
lp                      9160  0 
parport_pc             23236  1 
parport                28872  2 lp,parport_pc
psmouse                33288  0

and here for zenwalk gain w/o the sound bits

nls_iso8859_1           3584  2
vfat                    6912  2
fat                    30236  1 vfat
video                  10372  0
thermal                 7944  0
processor              16720  1 thermal
fuse                   24852  0
fan                     2436  0
dmfe                   11676  0
button                  3472  0
ac    
via_agp                 4736  1    
agpgart                16332  1 via_agp
ehci_hcd               19080  0 
uhci_hcd               13708  0 
tulip                  35744  0 
tsdev                   3904  0 
evdev                   5504  0

doing /etc/rc.d/rc.inet1 start
gives the same as on booting, sitting for a long time trying to connect 
unsuccessfully.

Suggestions much appreciated.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
