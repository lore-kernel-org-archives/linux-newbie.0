From: James Miller <jamtat@mailsnare.net>
Subject: Re: making a gateway with eth0 wired eth1 wireless
Date: Thu, 30 Dec 2004 11:43:38 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0412301114280.7477@localhost.localdomain>
References: <5.1.0.14.1.20041230080855.0217c410@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041230080855.0217c410@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Sorry about the lack of details, Ray: it was because I already have both
interfaces working in this laptop and so don't really need help with
setting that up. If I take this laptop into an area with a wireless
network, for example, and the network has a dhcp server, I turn on the
computer, the module for the NIC loads, the dhcp client runs and I get on
the network. It's an older card--Wavelan bronze--and doesn't do encryption
of any form, I believe. The wired NIC works similarly: I plug in an
ethernet cable, fire up the computer and the NIC module loads and a dhcp
client runs on the interface to get an IP. I've never tried using both
cards at once, though. But before going on at any greater length on that,
I want to say that I'm now exploring more the Linksys access point
possibility I mentioned in my initial post. Looking over documentation
again, it seems to me like it might work and be the simpler solution. From
what I gather thus far, if I know the MAC address of the access point to
which my access point might serve as client, I might be able to use it, in
effect, as a NIC (by hooking its rj45 plug to a wired NIC in a desktop
computer). Let me append here some descriptions of the modes the access
point is capable of, excerpted from the manual:

------------BEGIN LINKSYS MANUAL EXCERPT-------------------------

  SETTING THE AP MODE:
  The Access Point offers five modes of operation: Access Point, Access
Point Client, Wireless Bridge, Wireless Bridge Point to MultiPoint, and
Wireless Repeater. For all bridging modes, as well as Wireless Repeater
mode, make sure the channel, SSID, and WEP keys are the same.
  Note: For all modes of operation EXCEPT Access Point, the remote access
point must be a second Linksys Wireless-B Access Point (WAP11). The Access
Point will not communicate with any other kind of remote access
     Access Point - The Operational Mode is set to Access Point by
default. This connects your wireless PCs to a wired network. In most
cases, no change is necessary.
  Access Point Client - When set to Access Point Client mode, the Access
Point Client is able to talk to one remote access point within its range.
This mode allows the Access Point Client to act as a client of a remote
access point. The Access Point Client cannot communicate directly with any
wireless clients. A separate network attached to the Access Point Client
can then be wirelessly bridged to the remote access point. Enter the
required LAN MAC address of the remote access point in the Remote AP MAC
Address field.
  Wireless Bridge - If you are trying to make a wireless connection
between two wired networks, as shown in Figure 6-5, select Wireless
Bridge. This mode connects two physically separated wired networks with
two access points.
  To configure a Wireless Bridge environment, click Wireless Bridge and
enter the LAN MAC address of the remote access point in the Remote Bridge
MAC Address f ield. The remote access point also needs to be set up as a
Wireless Bridge.
  Note: All devices on each wired network must be connected through a hub
or switch.
  Note: In Wireless Bridge mode, the Access Point can ONLY be accessed by
another access point in Wireless Bridge mode. In order for your other
wireless devices to access the Access Point, you must reset it to Access
Point mode. The two modes are mutually exclusive.
  Wireless Bridge Point to MultiPoint - If you are trying to make a
wireless connection between more than two wired networks, as shown in
Figure 6-6, select Wireless Bridge Point to MultiPoint. This mode allows
you to construct a network that has multiple access points bridging
wirelessly.
  To configure a Wireless Bridge Point to MultiPoint environment, click
Wireless Bridge Point to MultiPoint for the Access Point that will connect
to multiple access points (in Figure 6-6, it is the Access Point in LAN
1).
  Then, for the other bridged access points, click Wireless Bridge, and
enter the Remote Bridge MAC Address of the Access Point set to Point to
MultiPoint.
  Note: Linksys recommends bridging no more than three remote LANs in
Wireless Bridge Point to MultiPoint mode. Bridging additional remote LANs
will result in a significant decrease in bandwidth.
  Wireless Repeater - When set to Wireless Repeater mode, the Wireless
Repeater is able to talk to one remote access point within its range and
retransmit its signal. See Figure 6-7. To configure a Wireless Repeater
environment, click Wireless Repeater and enter the LAN MAC address of the
remote access point in the Remote AP MAC Address field.

---------------END LINKSYS MANUAL EXCERPT----------------------------

Sorry for any confusion regarding the diagrams, which I could not, of
course, include. As I am reading this, it seems to me by using access
point client mode I might be able to make a machine with a wired NIC
hooked to the rj45 jack on the Linksys access point communicate on the
wireless network in this building: the wired NIC and the Linksys access
point act in concert like a wireless NIC. Am I reading/understanding
correctly?

As for the network in the building, I know nothing about it at this point.
I assume it's some kind of cable connection that gets routed through a
wireless router, which runs a dhcp server and gives out addresses to
clients within range using class C addressing. But that's pure
speculation. I have no idea if there will be any sort of security measures
in place (e.g., authentication), but that seems something more
software-oriented, while what I'm tackling at the moment is more
hardware-oriented. Can't say anything more specific about the network
until I actually get access to it (she'll move in tomorrow).

In closing I'll just ask: shouldn't I be able to get the building's access
point's MAC address using kismet or airsnort? I'm guessing if I ask them
they'll either: 1) be so uninformed they won't have a clue; or 2) are
going to be informed and thus become suspiscious.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
