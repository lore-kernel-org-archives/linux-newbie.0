From: Ray Olszewski <ray@comarre.com>
Subject: Re: making a gateway with eth0 wired eth1 wireless
Date: Thu, 30 Dec 2004 10:40:35 -0800
Message-ID: <5.1.0.14.1.20041230102402.021dfcf8@celine>
References: <5.1.0.14.1.20041230080855.0217c410@celine>
 <5.1.0.14.1.20041230080855.0217c410@celine> <Pine.LNX.4.58.0412301114280.7477@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0412301114280.7477@localhost.localdomain>
References: <5.1.0.14.1.20041230080855.0217c410@celine>
 <5.1.0.14.1.20041230080855.0217c410@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-4908980"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:43 AM 12/30/2004 -0600, James Miller wrote:

>Sorry about the lack of details, Ray: it was because I already have both
>interfaces working in this laptop and so don't really need help with
>setting that up. If I take this laptop into an area with a wireless
>network, for example, and the network has a dhcp server, I turn on the
>computer, the module for the NIC loads, the dhcp client runs and I get on
>the network. It's an older card--Wavelan bronze--and doesn't do encryption
>of any form, I believe.

Then the interface will probably work with the apt's WAN. You still need to 
get authentication details from the provider ... it may need to know a MAC 
address or have the system run something else to authenticate itself. Only 
the ISP can tell you that part. But the Linux part seems to be working.

>The wired NIC works similarly: I plug in an
>ethernet cable, fire up the computer and the NIC module loads and a dhcp
>client runs on the interface to get an IP.

Well, since the other workstation probably isn't running a DHCP server, 
you'll need to provide a static address here. Look in 
/etc/network/interfaces and make changes like these (an example from my own 
workstation).

Look for an entry like ...

         auto eth0
         iface eth0 inet dhcp

... and replace it with one like (use your own addresses) ...

         auto eth0
         iface eth0 inet static
                 address 192.168.1.2
                 netmask 255.255.255.0
                 network 192.168.1.0
                 broadcast 192.168.1.255
         # no gateway entry since this is an internal interface

Give the other workstation a compatible static address in the same way (if 
it is a Debian-like Linux) or whatever way is right for it (if not).

>I've never tried using both
>cards at once, though.

You'll need to enable ip_forwarding (see my prior message). Whether you'll 
need to have the router NAT or not depends entirely on what you learn from 
the ISP. If yo do need to NAT, it might be worth looking at the Shorewall 
drop-in firewall package to handle this for you. Or follow up here and I 
can give you some of the details about the bespoke firewall I run on my router.

>  But before going on at any greater length on that,
>I want to say that I'm now exploring more the Linksys access point
>possibility I mentioned in my initial post. Looking over documentation
>again, it seems to me like it might work and be the simpler solution. From
>what I gather thus far, if I know the MAC address of the access point to
>which my access point might serve as client, I might be able to use it, in
>effect, as a NIC (by hooking its rj45 plug to a wired NIC in a desktop
>computer). Let me append here some descriptions of the modes the access
>point is capable of, excerpted from the manual:
>
>------------BEGIN LINKSYS MANUAL EXCERPT-------------------------
>
>   SETTING THE AP MODE:
>   The Access Point offers five modes of operation: Access Point, Access
>Point Client, Wireless Bridge, Wireless Bridge Point to MultiPoint, and
>Wireless Repeater. For all bridging modes, as well as Wireless Repeater
>mode, make sure the channel, SSID, and WEP keys are the same.
>   Note: For all modes of operation EXCEPT Access Point, the remote access
>point must be a second Linksys Wireless-B Access Point (WAP11). The Access
>Point will not communicate with any other kind of remote access
>      Access Point - The Operational Mode is set to Access Point by
>default. This connects your wireless PCs to a wired network. In most
>cases, no change is necessary.
>   Access Point Client - When set to Access Point Client mode, the Access
>Point Client is able to talk to one remote access point within its range.
>This mode allows the Access Point Client to act as a client of a remote
>access point. The Access Point Client cannot communicate directly with any
>wireless clients. A separate network attached to the Access Point Client
>can then be wirelessly bridged to the remote access point. Enter the
>required LAN MAC address of the remote access point in the Remote AP MAC
>Address field.
[rest deleted]

What you are interested in is the Access Point Client option. The 
disclaimer that precedes it (and you noted in a separate e-mail) seems to 
say that this option requires WAP11s on both ends. Maybe, maybe not. It 
depends entirely on the details of how they did this.

If they are using some proprietary trick, then you do need WAP11s on both 
ends ... proprietary extensions in WAPs like higher speeds invariably 
require matching hardware on both sides. But if they have implemented a way 
to make the device look like a standard Wireless-b NIC, then it should work 
with anything.

There is no way to guess about this, and a Linux list is not the best place 
to find expertise about non-standard uses of Linksys WAPs. Try it, or look 
for a Limksys support list where you can ask.




-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.296 / Virus Database: 265.6.6 - Release Date: 12/28/2004


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
