From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Newbie installation problem
Date: Sun, 4 Aug 2002 07:56:36 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208040725520.30515-100000@Consulate.UFP.CX>
References: <002801c23b73$2b1a31d0$6401a8c0@ENRIQUE>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002801c23b73$2b1a31d0$6401a8c0@ENRIQUE>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Enrique Nieves <spanfax@charter.net>
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Hi Enrique.

I hope you don't mind my responding, but I'm sure Ray will ask the same
questions...

> Thanks for your query.  I've placed a response after each of your
> questions below. Another possibility may be the cable itself;
> however, the router lights indicate the cable is connected.

The router lights only indicate that the PC -> Router direction is
working. To rule out the cable, you need to turn it round and see if the
router lights still work with it plugged in the other way round.

>>> I'm a newbie with Linux and I'm trying to install Red Hat 7.3 in my
>>> AMD K6 box (128 mb RAM, 233 mhz, 6 gb hard drive) to be the sole OS
>>> for that box. When the installation program tries to detect the
>>> network card (eth0) it gives me a FAILED message.

>> Please be a bit clearer about the details here.
>>
>> 1. What NIC do you have in the system?  Make and model.

> Netgear, 32 bit, PCI Adapter, 10/100 Mbps Fast Ethernet FA311

Does this system finish booting after reporting the failure, or does it
just lock up at that point?

If it finishes booting, can you log in as root and then attach the
output of the `lspci -v` command?

>> 2. At what stage does RH fail? (Technically, eth0 is an interface,
>>    not a card; it does not get created until -AFTER- the card has
>>    been detected and an appropriate kernel module loaded.)

> When booting up and detecting hardware it indicated that it can't
> detect IP settings

>> 3. Quote the EXACT error message (not just the word "FAILED").

> After the error message FAILED it indicates that IP settings can't
> be detected

Ah - now, that isn't a hardware failure but a case of no DHCP server on
your network and you haven't statically allocated IP settings to the
interface. You need to allocate an IP address to each machine on your
network, so let's do that first.

IP addresses in the 192.168.X.Y format are reserved for use on private
networks, so I am going to assume you are using such a range of
addresses. You thus need to make two decisions:

 1. You need to select a number for your network as a whole. This
    number is in the range 1 to 254 and must be the same for all
    machines on your network, so choose your favourite number in
    this range. This number forms the value X in the IP address.

 2. You need to select a number for each machine on your network.
    This is also in the range 1 to 254, but needs to be DIFFERENT
    on each machine. There is a convention that the number 254 is
    allocated to the system on your network that acts as a gateway
    to other networks, but you do not need to follow this if you
    prefer not to. This number forms the value Y in the IP address
    for each machine, and there will be three different values,
    which I will refer to as Y1, Y2 and Y3.

Having selected the values X and Y for each machine, I suggest you jot
them down in a table similar to the following:

	IP Address	System Description	Sample IP Address
	~~~~~~~~~~	~~~~~~~~~~~~~~~~~~	~~~~~~~~~~~~~~~~~
	192.168.X.Y1	AMD K6 running Linux	192.168.99.254
	192.168.X.Y2	Windows XP Desktop	192.168.99.1
	192.168.X.Y3	Laptop			192.168.99.2

When the AMD finishes booting Linux, log in as root, then run the
`netconfig` command and specify that you would like to set up
networking. On the next screen, make sure that the "Use dynamic IP
configuration" checkbox is NOT selected, then enter the following values
in the fields underneath:

	IP address:		192.168.X.Y1
	Netmask:		255.255.255.0
	Default gateway:	(blank)
	Primary nameserver:	127.0.0.1

This will configure networking on that machine.

>> 4. Has the NIC worked previously, say with some version of Windows?
>>    Or is this a new NIC (from the hardware details, I'd guess it is
>>    not a completely new PC)?

> It's a new NIC

>>> I'm trying to have a home network using a LinkSys router with a
>>> Windows XP box and this AMD PC connected peer to peer and another
>>> ethernet connection to use with my laptop.

>> What do you mean by "peer to peer"? In this context, the term
>> usually describes two hosts that are connected directly via
>> Ethernet, without a hub in between ... but your mention of the
>> Linksys router causes me to doubt that that is what you mean.
>> Do you just mean that the two hosts are on the same LAN?

> As Riley Williams indicted, I'm trying to set up a home network with
> three systems on it, my Windows XP box, the AMD I'm trying to set up
> under Red Hat Linux and my laptop, and I'm not sure if I'm using a
> 10baseT or 100baseTX ethernet with my LinkSys router, which is
> acting as a routing hub for the three of them.

Based on the information provided earlier, if the router can handle 100
speed, then you are attempting to use 100baseTX ethernet, if not, you
are attempting to use 10baseT ethernet.

One final question: Am I right in assuming that you are trying to set it
up with the AMD under Linux as the system that connects to the Internet,
and both the WinXP machine and the laptop piggy-backing onto that
connection?

The reason I ask this is that on rereading your comments, I note your
repeated reference to "LinkSys router" and I'm wondering if that's an
ADSL router that forms your Internet connnection. If it is, then the
advice to be given is rather different to the above, and the above
advice should be ignored.

In this event, please run the `netconfig` command but ensure that the
"Use dynamic IP configuration" box IS checked. In this case, the values
of the remaining fields are irrelevant and should be ignored. You also
need to configure your router to enable the DHCP server and the NAT
facilities therein, and it will then configure the IP addresses,etc, on
all the systems on your network.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
