From: James Miller <jamtat@mailsnare.net>
Subject: xmt status = 0x400
Date: Thu, 5 Jun 2003 21:04:48 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0306052055210.1059@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

I don't know if anyone recalls the troubles I was having getting an Intel
clone 82595FX NIC (ISA) working in a Slackish distro, but I made several
posts about it.  Finally got the NIC to work by using a module from a
newer kernel: despite boot-time complaints, it works fine now.  Well, now
I'm experimenting with getting it to work with a 2.0.34 kernel (one it
works with is 2.2.16).  I've gotten the right module for it, the module
loads as long as I give the io= argument.  I can assign an address to it
(ifconfig eth0 192.168.x.x).  But when I try to use it (to ping another
machine on my network), I get the message "XMT status = 0x400", which just
repeats over and over.  ctrl + c halts the ping attempt with 100% packet
loss.  But that message - "XMT status = 0x400" keeps popping up at the
command line after that.  I've got another working card that I think I'm
going to use, so this is not a mission-critical matter.  After the grief
I've gone through with these cards, I'm ready to start just pitching them
out the window.  But maybe I can learn something before I do that.  Anyone
have any idea what this "XMT status = 0x400" message means?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
