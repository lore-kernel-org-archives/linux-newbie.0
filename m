From: Arno Seitzinger <spam2_arno@lucienet.de>
Subject: Re: system hangs after reboot
Date: Mon, 16 Dec 2002 20:25:08 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <atl99e$jbu$1@main.gmane.org>
References: <5.1.0.14.1.20021216080217.021330f0@celine> <1040055299.2905.19.camel@zebra.vil.ite.mee.com>
Reply-To: spam2_arno@lucienet.de
Mime-Version: 1.0
Content-Transfer-Encoding: 7Bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi Ray and Paul,
thanks for your interest.

I investigated a little bit deeper, but am stil clueless:

_changed 20:20 CET: no more clueless._ A couple of days ago I removed the 
PCMCIA CAN-Card which was innocently sitting in my cardslot for months. 
Maybe it received a different configuration when I re-inserted it. After 
removal of the CAN-Card, the system reboots as usual. Thank you for your 
assistance.


> 1. If you change /etc/init.tab so that the system boots into run level
> 3, then reboot, do you get any errors?

Errors (errormessages), no, but the system hangs like before.


> 3. It sounds like you have a network thing going on. If you wait long
> enough, it might start anyway. sendmail often does this when your host
> table doesn't agree with your IP address. Other programs also have this
> problem. Therefore, check that you have an "/etc/hosts" file and that it
> is correct and complete (at least as far as info about the problem
> machine goes).

I also think it is a network problem because if I boot into a runlevel w/o 
network, the system does not freeze. It also does not freeze when I remove 
the network card from the configuration.
My /etc/hosts is
127.0.0.1       localhost
::1             localhost ipv6-localhost ipv6-loopback
fe00::0         ipv6-localnet
ff00::0         ipv6-mcastprefix
ff02::1         ipv6-allnodes
ff02::2         ipv6-allrouters
ff02::3         ipv6-allhosts
127.0.0.2       esw44.mdom1     esw44
and was set up automatically by yast-setuptool

When the freeze occurs, the cursor stops blinking, the animated ball on the 
boot screen stops jumping and the system won't react to anything (ctrl-c, 
ctrl-alt-del etc), only power-off and display brightness. A cold boot 
always works, and it also boots up correctly when I do a warm reboot 
(shutdown -r now) but switch off the power the moment the bios screen 
appears.


>> 1. In the "good init" sequence, what happens next? You're asking us to
>> compare a bad init to nothing (as regards the part that is bad).

In the "bad init" sequence, the file ends after 
<notice>/etc/init.d/rc5.d/S05network start

In the "good init" sequence, I cut the rest of the file after the 
configuration of eth0. ppp0 is started next (manual dialup w/ cellphone).
After that, hotplugging services are started.


>> 2. When you say the system "hangs" and "freezes", how carefully have you
>> assessed that? How long have you waited before giving up? What happens if
>> you CRTL-C when the system is "hung"?

I waited for about 15 minutes. ctrl-c does not do anything... but it doesn't 
do anything elsewhere in the bootup process anyhow...
I will let the machine sit overnight trying to boot, but I dont think it 
will bring us further. Is there a possibility to redirect

>> 3. What is eth0 and how does it connect to the Internet? If the problem
>> is associated with a DHCP failure of some type, the details of the
>> interface it is using may matter.

eth0 is the only ethernet port on that machine (builtin Accton EN1216 card).
The problem is not associated with a DHCP failure because the freeze also 
occurs when the machine is assigned a fixed IP-address


>> 4. Is the problem only associated with a soft ("shutdown -r") reboot? If
>> you do a power-down reboot, does the system boot and init properly?

2*Yes


Greets and thanks

Arno





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
