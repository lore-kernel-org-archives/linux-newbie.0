From: Ray Olszewski <ray@comarre.com>
Subject: Re: dhcp server operation problems
Date: Fri, 23 Jan 2004 23:19:18 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040123230433.02071fe0@celine>
References: <Pine.LNX.4.58.0401240012380.3894@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0401240012380.3894@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Without knowing something about the actual DHCP server that Freesco uses, 
advice is a bit of a guess. But if it uses a reasonably current dhcpd, I'd 
suspect that the problem line is just a big typo ... I have no similar line 
in my /etc/dhcpd.conf file here, and the man page for dhcpd makes no 
mention of a "umask" global. And the line does not close with a semi-colon. 
All signs of a big typo.

So I'd suggest you just comment out or delete this line ...

          umask  22  /etc/dhcpd.leases

... then kill and restart the dhcp server. See if everything then works 
properly (the server loads, can be seen with "ps ax", and actually issues 
leases).

With that line out, your config file resembles mine closely enough that I 
would bet it runs fine.

If it does ... then you want to find the init script that is creating the 
dhcpd.conf file and fix whatever error is causing that line to be inserted. 
That part really *is* a Freesco-specific question ... in the absence of 
distro-specific help, I'd suggest you grep the init script directory 
(probably /etc/init.d) for references to dhcpd. And you'll probably need to 
run whatever backup system Freesco uses.

The other place to check is wherever Freesco stores the information you 
entered that is used to generate this file ... probably a text file in /etc 
with some obvious name (e.g., /etc/network.conf).

At 12:44 AM 1/24/2004 -0600, James Miller wrote:
>This is really a distro-specific issue I'm having, but the place I'd
>nomrally turn for help (Freesco forums) is currently down and has been for
>at least a couple of weeks now.  Not having any idea when the forums might
>be functioning again, I thought I'd post a query here in hopes that some
>general information I could get here might help resolve the problem.  The
>problem is with a Freesco router I've set up on an old machine (P180 24MB
>RAM) and with error messages I get when trying to enable the dhcp server
>that is built in to Freesco (hitherto I've used static addressing with
>this router, and it has worked just fine).  Anyway, when I enable the dhcp
>server, then enter an address pool range in the appropriate setup dialogue
>for the relevant interface, I get the following message during boot/setup:
>
>starting dhcp    /etc/dhcpd.conf line 4 expecting parameter or declaration
>umask
>^
>configuration file errors encountered -- exiting
>
>And, of course, the dhcp server doesn't run and doesn't make dhcp offers
>(that's my understanding of why my computers that are configured to
>request IP by dhcp fail to set up the interface when connected to this
>router/firewall).  Here is my /etc/dhcpd.conf file, in case that might
>offer some clues:
>
>option domain-name "mynet";
>default-lease-time 604800;
>max-lease-time 6004800;
>umask  22  /etc/dhcpd.leases
>
>subnet 192.168.1.0 netmask 255.255.255.0 {
>range 192.168.1.10 192.168.1.20;
>option subnet-mask 255.255.255.0;
>option broadcast-address 192.168.1.255;
>option routers 192.168.1.1;
>option domain-name-servers 192.168.1.1,134.48.25.32;
>}
>
>The file was copied and pasted here, so there really are 2 spaces between
>"umask" and 22 and 22 and /etc.  I thought perhaps the problem may lie
>with an extraneous space being added and an inability to therefore process
>what follows (22 - whatever that does).  I can't really edit this file to
>find out though, since it gets dynamically written each time the computer
>boots or restarts.
>
>So, does anyone see here any obvious source for the problem I'm
>encountering in getting the dhcp server to run and offer leases?  Thanks
>for any input on this.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
