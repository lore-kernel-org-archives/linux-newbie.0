From: James Miller <jamtat@mailsnare.net>
Subject: Re: Debian network reconfigure
Date: Thu, 1 Jan 2004 18:38:32 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0401011833050.3806@debian-box>
References: <Pine.LNX.4.53.0401010532030.589@grinch.ro>
 <Pine.LNX.4.58.0312311325080.465@debian-box> <Pine.LNX.4.53.0401010532030.589@grinch.ro>
 <5.1.0.14.1.20040101154809.02021888@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040101154809.02021888@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 1 Jan 2004, Ray Olszewski wrote:

> At 11:44 PM 1/1/2004 +0000, jamtat@mailsnare.net wrote:
> >the gateway is.  Is there a way to rerun it?  If so, where and how?
>
> I don't know offhand, though it is a good goess that there is some
> "dpkg-reconfigure" command that will do what you want. The fact that this
> setup is part of a install makes it a bit complicated.

I was trying to guess at just some such thing - dpkg-reconfigure
myguesshere - but my missed guesses were leading only to frustration.
>
> The easy solution, though, is to hand edit (using vi, emacs, or whatever
> text processor you like) the file /etc/network/interfaces to remove the
> DHCP assignment and replace it with a static address. A sample stanza for
> this (taken from one of my workstations) is:
>
>          auto eth0
>          # comment out next line to remove DHCP assignment
>          #iface eth0 inet dhcp
>          iface eth0 inet static
>                          address 192.168.1.1
>                          netmask 255.255.255.0
>                          network 192.168.1.0
>                          broadcast 192.168.1.255
>                          gateway 192.168.1.86
>
> All the networking setup program does is provide a front-end to editing
> this file.
>
> So edit it, then run ...
>
>          /etc/init.d/networking restart
>
> ... and you should be set.
>
> Do all this as root, of course.
>
Thanks for the tip, Ray.  I wanted to do something like this from the
start, but I thought I should try whatever automated avenues the system
might offer for it first.  I never quite know when to start editing
manually and when to rely on some sort of wizard thingy.  Anyway, I've
edited the file accordingly so I should be set.

Appreciate it, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
