From: Ray Olszewski <ray@comarre.com>
Subject: Re: Newbie installation problem
Date: Sun, 04 Aug 2002 23:34:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020804231006.021208e0@celine>
References: <5.1.0.14.1.20020802181721.02153750@celine>
 <5.1.0.14.1.20020804005505.02187b30@celine>
 <5.1.0.14.1.20020804101233.0211bb00@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002301c23c41$7f442b70$6401a8c0@ENRIQUE>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Enrique Nieves <spanfax@charter.net>
Cc: linux-newbie@vger.kernel.org

OK. This is all quite different from how I had interpreted your earlier 
messages. I was proceeding in the belief that during installation, the RH 
installer was unable to find your NIC. From the additional details you 
posted, your problem is simply with address assignment.  Riley's earlier 
advice is what you should be trying, supplemented by a few comments I offer 
below.

At 01:32 AM 8/5/02 -0400, Enrique Nieves wrote:
>[...]
>This is the output I get for:
>ifconfig -a
>netstat -nr
>lsmod
>I will send lspci output next.

Don't bother. Wer're past this part.

>[root@localhost  root] # ifconfig -a
>eth0    Link encap:Ethernet    HWaddr    00:40:F4:70:3E:F3
>
>            BROADCAST MULTICAST MTU:1500 Metric:1
>me:0
>             TX packets:0  errors:0  dropped:0  overruns:0  car
>rier:0
>             collisions:0  txqueuelen:100
>             RX bytes:0 (0.0 b)    TX bytes:0    (0:0 b)
>             Interrupt:10  Base address:0x3000

OK. This tells us that your NIC *is* being detected. But RH cannot 
initialize it (hence it has no IP address, just a MAC (hardware) address).
[...]
>[root@localhost  root] # lsmod
>Module            Size            Used    by            Not    tainted
>es1371            29728         0        (autoclean)
>ac97_codec    11872          0        (autoclean)        [es1371]
>gameport            3392         0        (autoclean)        [es1371]

Not sure how the NIC is getting detected. Maybe RH compiles support for 
some NICs right into its default kernel?

> > Last, how do you *want* this system to get its IP address?
> >
> >          Do you plan to assign a static address by hand? If so, you
> > (probably) specify this by editing the file /etc/network/interfaces .
> >
> >          Use a DHCP server?
>
>
>Yes, I plan to use DHCP
>
>
>If so, then where on the LAN are you running
> > one? The Linksys? The XP system?
>
>
>The Linksys

OK. As I said earlier, I'm not a Red Hat user (I use Debian), so I can't 
tell you the Red-Hat-specific tricks, only the basic Linux-level ways to 
troubleshoot this. Perhaps a Red Hat user will supplement this. But for now ...

1. Does the RH host know that it is supposed to get a DHCP lease? The place 
to look is in /etc/network/interfaces, to see what type of address 
assignment is specified for eth0. You are looking for a block like this:

         auto eth0
         iface eth0 inet dhcp

2. Is the DHCP server on the Linksys router working? (Is the XP host, for 
example, getting a lease from it?) I've never used a Linksys, but I have 
used the similar Netgear router, so I think this should be easy to set up 
from the Linksys config menu.

3. Is the physical connection between the Linux host and the Linksys good? 
Does the same cable work between the XP host and the *same* port on the 
Linksys? (You should be using a normal Ethernet cable connected to a normal 
port on the Linksys ... not either a crossover cable or an uplink port.)

4. If you give the RH host a static IP address, does it now initialize 
properly (check this with "ifconfig -a" as before) and connect to (test 
with "ping") the Linksys router? You do this with a block like the 
following in /etc/network/interfaces:

auto eth0
iface eth0 inet static
         address 192.168.1.12
         netmask 255.255.255.0
         network 192.168.1.0
         broadcast 192.168.1.255
         gateway 192.168.1.1

(This example assumes that the Linksys uses network 192.168.1.0/24 and, for 
its own LAN interface, IP address 192.168.1.1; the Linksys docs will either 
confirm this or give you the right values to use.) After you replace the 
exsting entry with a block like this one, you either reboot or restart 
networking (something like "/etc/init.d/networking restart" -- Red Hat may 
do it a bit differently, though).

5. I've assumed that the NIC has only a UTP (Cat 5) connection ... don't 
recall ever seeing a FA111 that didn't ... but if it has another connection 
(such as a BNC connection for thinnet coax) ... is the NIC configured to 
use the UTP port? (this one is a long shot.)


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
