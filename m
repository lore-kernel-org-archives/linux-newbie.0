From: Chuck Gelm <nc8q@gelm.net>
Subject: PCMCIA: pre-compiled driver packages
Date: Sat, 14 Dec 2002 15:18:25 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DFB9211.99110E9C@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>


 I have been trying to get several PCMCIA cards to work in my laptop.
(pentium 166MHz, 16 M RAM, 15 G HD).  I am using Slakware v8.0.
(kernel 2.2.19)

#:ifconfig -a
 
 Is not showing anything other than lo & dummy.

 I have the following cards:
Netgear MA401 & FA411     (802.11b wireless & 10/100 network)
Belkin	F5D6020 & F5D5020 (802.11b wireless & 10/100 network).

 I am baffled as to whether I need the pcmcia-cs package.
I found this paragraph
 (http://pcmcia-cs.sourceforge.net/ftp/doc/PCMCIA-HOWTO-2.html#ss2.1):

"Before starting, you should think about whether you really need to
compile the PCMCIA package yourself. All common Linux
distributions come with pre-compiled driver packages. Generally, you
only need to install the drivers from scratch if you need a
new feature of the current drivers, or if you've updated and/or
reconfigured your kernel in a way that is incompatible with the
drivers included with your Linux distribution. While compiling the
package is not technically difficult, it does require some
general Linux familiarity."

 How do I tell if I have these packages?
 If yes, How do I configure my system to use them?

 Do I simply need to insmod/modprobe existing modules?
 If yes, which modules go with which card?

Regards, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
