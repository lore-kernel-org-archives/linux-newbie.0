From: Ray Olszewski <ray@comarre.com>
Subject: Re: Network card and kernel module problems
Date: Mon, 03 Feb 2003 09:24:49 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030203091129.02140130@celine>
References: <000801c2cad3$a696b500$eb6510ac@citechbd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000801c2cad3$a696b500$eb6510ac@citechbd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Amin <raihan@citech-bd.com>, linux-newbie@vger.kernel.org

At 09:56 PM 2/2/03 +0600, Amin wrote:
>Hi all,
>
>I use a Surecom EP-320X-S 100/10M Ethernet PCI adapter; I believe it's
>Myson MTD3xx compatible --- at least, I've used it before with Myson's
>fealnx.o module in Red Hat Linux 7.3.  The problem is I upgraded to RH8.0
>and find that the kernel does not already support the card.  I tried
>recompiling with built-in support (for the Myson module).  kudzu detected
>the card at startup and configured it.  I've set it up it using Red Hat's
>``neat'' tool (it uses DHCP), but it says it can't determine IP
>information, and to check the cables.


Richard has given you good advice in his replies, but in looking at the 
exchange, I think you may need a more plainly described troubleshooting 
strategy. So I suggest this procedure:

1. After boot/init has completed, use "lsmod" to see which modules have 
been loaded. Look for fealnx on the list.

2. If fealnx is not on the list, then look at the dmesg buffer (with the 
"dmesg" comand) or your log files (probably in /var/log) to see if the 
module tried to load and failed.

3. Use "ifconfig -a" to see if your eth0 interface was created. If it was, 
then either the kernel has builtin support for your NIC card or a suitable 
module was loaded. If it was not, then you have some kernel- or 
module-level problem that the prior steps failed to unearth.

4. How does your host get its IP address? (I'm not sure how RH specifies 
this -- look in the init file that starts networking, or see if your system 
uses /etc/network/interfaces to control this.) If it is by DHCP, then check 
if you omitted some kernel feature needed by DHCP when you did your custom 
compile. This is easy to do because some of the kernel capabilities neede 
for DHCP are not well described in the kernel-make Help file.

Likely candidates for this mistake are in this part of the config file:

         # Networking options
         #
         CONFIG_PACKET=y
                 # CONFIG_PACKET_MMAP is not set
                 # CONFIG_NETLINK_DEV is not set
                 # CONFIG_NETFILTER is not set
         CONFIG_FILTER=y
         CONFIG_UNIX=y
         CONFIG_INET=y

5. If your interface gets its address by some means other than DHCP, you'll 
need to tell us what it is.

Finally -- in the future, please quote commands and their error-message 
replies completely and exactly. Do not summarize of paraphrase ... it 
requires us to guess too much about what is going on.
--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
