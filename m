From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian network reconfigure
Date: Thu, 01 Jan 2004 15:54:20 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040101154809.02021888@celine>
References: <Pine.LNX.4.53.0401010532030.589@grinch.ro>
 <Pine.LNX.4.58.0312311325080.465@debian-box>
 <Pine.LNX.4.53.0401010532030.589@grinch.ro> <1073000644.3ff4b0c4b3357@horde.mailsnare.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1073000644.3ff4b0c4b3357@horde.mailsnare.net>
References: <Pine.LNX.4.53.0401010532030.589@grinch.ro>
 <Pine.LNX.4.58.0312311325080.465@debian-box>
 <Pine.LNX.4.53.0401010532030.589@grinch.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:44 PM 1/1/2004 +0000, jamtat@mailsnare.net wrote:
>I've tried various things I can think of on a Debian system and
>searched the web a bit for information, but I'm still at a loss.  I've
>moved a Debian machine that was on a dhcp network to a network that uses
>static addressing.  I was hoping there is a way to rerun the network
>setup dialogue so that I can assign eth0 a static address and tell it where
>the gateway is.  Is there a way to rerun it?  If so, where and how?

I don't know offhand, though it is a good goess that there is some 
"dpkg-reconfigure" command that will do what you want. The fact that this 
setup is part of a install makes it a bit complicated.

The easy solution, though, is to hand edit (using vi, emacs, or whatever 
text processor you like) the file /etc/network/interfaces to remove the 
DHCP assignment and replace it with a static address. A sample stanza for 
this (taken from one of my workstations) is:

         auto eth0
         # comment out next line to remove DHCP assignment
         #iface eth0 inet dhcp
         iface eth0 inet static
                         address 192.168.1.1
                         netmask 255.255.255.0
                         network 192.168.1.0
                         broadcast 192.168.1.255
                         gateway 192.168.1.86

All the networking setup program does is provide a front-end to editing 
this file.

So edit it, then run ...

         /etc/init.d/networking restart

... and you should be set.

Do all this as root, of course.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
