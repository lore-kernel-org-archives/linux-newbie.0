From: Jim Earl <jimurl@montanaice.com>
Subject: local networking hostname
Date: Mon, 22 Jul 2002 09:03:07 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <B9617ACB.1E8C%jimurl@montanaice.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello!

I am setting up a small network of one Linux and one non-Linux box.  The
network is established via Ethernet; ifconfig and route report verify this.
I am able to telnet from the non-linux to the Linux box but only using the
IP address - NOT using the hostname.  However, when I try to telnet from the
Linux box to itself ( using the loopback interface ), it works fine.  My
/etc/hosts , /etc/resolv.conf and /etc/networks seem to be ok.

I don't have 'named' running, but it looks like I might need to ( though I
had wanted to avoid it ).

Any ideas are appreciated.
-- 
Jim Earl


jimurl@MontanaIce.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
