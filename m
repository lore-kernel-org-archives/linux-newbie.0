From: Jim Carter <jimc@math.ucla.edu>
Subject: Re: Network install fails at TFTP load on client pc
Date: Tue, 12 Aug 2008 15:47:55 -0700 (PDT)
Message-ID: <Pine.LNX.4.64.0808121443100.12720@xena.cft.ca.us>
References: <260800.64041.qm@web59716.mail.ac4.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <260800.64041.qm@web59716.mail.ac4.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Phil C <hpypenguin@yahoo.com>
Cc: Newbie Mailing List <linux-newbie@vger.kernel.org>

On Tue, 12 Aug 2008, Phil C wrote:

> > Well, the server's kernel is still logging TFTP packets, so there must be 
> > another place in the iptables that needs to be perforated (temporarily).  
> > --snip--
> 
> I tried messing with some of the firewall setting and have run into a new 
> problem. My internet connection exists only on a WLAN right now (thanks 
> to moronic time-warner employees) and my local network is only on LAN. I 
> was able to get only one to communicate properly at a time. Either the 
> laptop connects and communicates only to find that it can not route to 
> the internet to get the rest of the files, or there is no functioning 
> local connection. 

I'm not quite sure what the situation is here: if the laptop can do a 
network boot from 802.11b WLAN, that's a lot more than mine can do.  On the 
other hand, if it boots from the server, which I assume also has a WLAN 
card, it's likely to assume that whoever gave it a DHCP address (i.e. the 
server) is also the default route to the global Internet.  If you can do 
"netstat -r" on the laptop, you could confirm that.  Here's the last row 
(of 4) on my machine:  

default         jacinth.cft.ca. 0.0.0.0   UG  0 0   0 eth1

The second column is the machine serving that route (excluding host 
routes).  The laptop will send nonlocal packets to this host.

Now the problem is, if the server isn't set up for routing it will drop 
your packets on the floor.  To cause it to forward them to the real default 
route (the cable or DSL modem (via WLAN?)), you need to temporarily turn on 
the feature, like this:

echo "1" > /proc/sys/net/ipv4/ip_forward

(There is a small security advantage to turning off forwarding if you 
aren't going to actually use it.)  

> I need to get iptables to recognize seperate function sets for each 
> interface and allow both to run at the same time. 

The installer on the laptop probably doesn't have enough flexibility to 
bring up two interfaces at once -- there are limits to what the GUI can ask 
the user to tell it.

That's a good point: the provided firewall may have "features" for paranoia 
relating to forwarded packets.  I know the one I wrote has special rules 
for forwarding, and the Windows firewall is very strict about outgoing 
packets too.

> To the best of my 
> knowledge iptables is configured the same way regardless of distro as 
> it's a kernel module. Any thoughts on how to do this?

Yes, the modules are the same, but some distros have a nice GUI to 
configure the rules, with more or less flexibility.  So the chain names and 
their order and details will vary from one distro to the next.

> > Can you borrow a USB external DVD drive?  
>  
> There are severe compatiblity issues with this model of Toshiba 
> Portege...

Bummer.  That would have been the easiest way.

> What are the odds of a success if I simply pull the drive, hook it up to 
> a host machine via a 44 pin IDE adapter, install from there and pop it 
> back in? I forsee some severe hardware config issues but I'm curiouse if 
> that could work.

What could go wrong?  

1. A laptop drive in a desktop machine: the PATA or SATA interfaces should 
   be plug compatible, but what about the power connector?

2. The drive's major number would be different in the desktop (/dev/sdb1 
   etc.) versus the laptop (/dev/sda1 etc.) unless you actually unplugged 
   the desktop drive and substituted the laptop on that connector.  
   Assuming you weren't so radical, then working on the desktop, you would 
   have to edit /etc/fstab and /boot/grub/menu.lst (those are the names in 
   my distro) to refer to the major numbers ("drive letters") as they will 
   be on the laptop.

3. X-server installation will set it up for the desktop machine's graphic 
   card/chip and mouse.  Once on the laptop you will have to do that over 
   so as to use properly the laptop's graphics and touchpad.

4. There may be other issues that the installer does differently for a 
   desktop versus laptop, like power modes and multimedia keys.

5. On my distro, network configuration is keyed to the MAC address.  This 
   will be different on the laptop.  You can do a treasure hunt to find 
   where your distro put the relevant files and edit them to refer to the 
   network interfaces on the laptop, not the desktop.

Conclusion: your plan is feasible... barely.

OK, the Toshiba BIOS won't boot from foreign devices.  How about this: boot 
from the net, but once the pre-installer gets control, tell it that the 
installation media is not on the network but rather on the local DVD or 
flash device.  At that point you're using the Linux USB mass storage 
driver, which should work, rather than the BIOS' broken one.  The 
installation docs should say something about how to override the location 
of the installation media, though the more common use-case is to boot from 
CD/DVD and get the distro from the network.

Good luck!

James F. Carter          Voice 310 825 2897    FAX 310 206 6673
UCLA-Mathnet;  6115 MSA; 405 Hilgard Ave.; Los Angeles, CA, USA 90095-1555
Email: jimc@math.ucla.edu  http://www.math.ucla.edu/~jimc (q.v. for PGP key)
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
