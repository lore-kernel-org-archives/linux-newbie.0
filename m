From: Ray Olszewski <ray@comarre.com>
Subject: RE: Ethernet Questions
Date: Thu, 02 May 2002 10:23:48 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020502172348.01151c04@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: sadunn <sadunn@blue.weeg.uiowa.edu>, linux-newbie <linux-newbie@vger.kernel.org>

You are correct; it does not seem to have received a DHCP lease. I was
misled by your comments in your prior message that "but my "real" IP
returned a -1 result". In context, I understood this to mean that you'd
received a DHCP lease; otherwise, what did your reference to "my "real" IP"
mean?

New comments:

1. It is unlikely that your system lacks the command "ifconfig". Were you
root when you ran the command? If not, please try again as root. (Even
though you are clearly not getting an IP address, this test (by using the -a
flag) will tell us if the interface itself exists. If not, you have a
problem at some earlier level we have not yet addressed. 

If you were root, and ifconfig is *really* not on your system, then you need
to find out what low-level tool Mandrake provides for accessing interfaces.
The only other one I can think of is "ip", and I believe it does not have a
command to display information about unconfigured interfaces. 

2. Since you are not getting an IP address via DHCP, we need to consider
whether you have a working Ethernet interface at all. If (proprely run)
"ifconfig -a" does NOT show an eth0 device, then please tell us what
Ethernet card you are using, what kernel module(s) you are running to access
it, and what the kernel reports during boot/init about it. This last part
will be in the kernel's boot messages, visible via the command "dmesg" and
possibly in a logfile somewhere (try grep'ing for it in /var/log).

3. If you DO have an eth0 interface, then we need to wonder why it is not
being configured during boot/init. Are you sure your setup uses DHCP (how do
you know)? What does the Linux DHCP client -- I don't know which one
Mandrake uses, but the common ones are pump, dhcpcd, and dhclient -- report
during the boot/init sequence (look in the logs)?

I should clarify one thing: while Linux is at its core a unified OS across
all its distributions, these days distros try to differentiate themselves at
the User Interface level. As a Debian user, I'm not familiar with the UI
utilities Lothar and DrakConfig, the ones you mention using to set up your
interface. Also, the unspecified "quick network setup wizard" you learned
about in unnamed documentation may not be there because it is specific to
some other distro. Here, I am staying with the low-level setup tools that I
believe still to be standard across all full-size Linux distros.


At 12:05 PM 5/2/02 -0500, sadunn wrote:
>>===== Original Message From Ray Olszewski <ray@comarre.com> =====
>>OK. Networking 101. Your system needs a valid IP address, a routing table
>>that includes a route to a working gateway to the Internet, and access to
>>DNS servers that can resolve names for you. (It may need other things too,
>>but this is the base.) To let us help you figure out what it wrong, report
>>the following (from your machine, AFTER it has received its DHCP lease):
>
>I don't think it has received its DHCP lease, since the netstat -nr command 
>returned a destination to 127.0.0.0, and none of the other data seems to make 
>any sense whatsoever.
>
>>
>>        1. The complete, exact output of "ifconfig -a"
>
>bash: ifconfig: command not found
>
>>        2. The complete, exact output of  "netstat -nr"
>
>Kernel IP routing table
>Destination  Gateway   Genmask    Flags   Mss  Window   irtt   Iface
>127.0.0.0    0.0.0.0   255.0.0.0    u      0    0         0      lo
>
>>        3. Try to ping the IP address reported in step 1.
>>                Tell us either that the ping works or EXACTLY
>>                how it fails ("-1" isn't enough; we need to see
>>                the text that precedes the -1).
>
>I didn't get an address to ping because the command failed.
>
>>        4. Try to ping the gateway address reported in step 2 --
>>                the routing table (assuming there is one).
>
>I didn't think 0.0.0.0 was a vaild address to ping, so I didn't. Perhaps I am 
>mistaken?
>
>>        5. The contents of the file /etc/resolv.conf .
>
>search localdomain
>
>>        6. The results of pinging the first address listed in
>>                /etc/resolv.conf .
>
>I had no address to ping
>
>>You may also have a hardware problem. I don't want to take the time to write
>>out those tests right now; if the results of this first set suggest a
>>hardware problem, I'll return to it. Oh, one more thing ...
>>
>>        7. The output of "uname -a"
>
>Linux localhost 2.2.14-15mdk #1 Tue Jan 4 22:24:20 CET 2000 i686 unknown

[old stuff deleted]


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
