From: Ray Olszewski <ray@comarre.com>
Subject: Re: two eth devices ...
Date: Mon, 26 Jan 2004 11:35:52 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040126112512.01f943f0@celine>
References: <4011C87400000704@mail-bcm02.alestra.net.mx>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4011C87400000704@mail-bcm02.alestra.net.mx>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:29 PM 1/26/2004 -0600, rgomez@bancomer.com wrote:
>Hi, I've been assigned a PC with two eth devices, What utility can I give
>them? or is better if i unplug one, my network is configured
>to assign an IP address via dhcp.
>
>As you can see I'm a Linux newbie in network thems...
>TKS

I cannot know for certain what is installed on your system. The usual 
command for checking eth* interfaces (not "devices") is

         ifconfig -a

Some newer, or stripped down, Linux systems may lack this command. In that 
case, see if you have the command "ip" on your system. If you do, the command

         ip link show

should give you information about the interfaces.

I am assunming here that your Linux kernel has in it, or loads modules that 
provide, support for the actual NICs in your system. If not, you don't have 
the eth* interfaces, and you'll need to do something to create them. I 
cannot say what without knowing a few more things, namely ...

         what sorts of NICs they are (you may have to open the case to find 
out, or the command "lspci" may tell you)
         what Linux distrubution and version you are using
         what Linux kernel ("uname -a") you are running, and whether it is 
a stock or a custom-compiled kernel.

You should be logged on as root to execute any of the commands I listed above.

As to whether you should "unplug" one ... it depends on unreported details 
of your setup. Again, approaches vary a lot from one Linux distro to 
another, but newer versions are tending to use /etc/network/interfaces as 
the config file for the eth* (and some other) network interfaces. You might 
see if you have such a file and, if you do, what it says about setup of 
eth0 and eth1. Which of them (or are both) is set up here to get an IP 
address via DHCP?

And am I correct in inferring that both eth* interfaces are connected to 
the *same* network (the same LAN, probably)?If they are, you probably want 
to ask the sysadmin if the network is setup to allow the interfaces to be 
bridged, so they can work together to double your connection speed. If they 
are not, advising you as to what you should do depends enough on what they 
are connected to that no advice can make sense without your providing more 
information.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
