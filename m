From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: USB Hotplug??
Date: Sun, 5 Oct 2003 22:48:50 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200310052248.50693.pa3gcu@zeelandnet.nl>
References: <20031005145055.GA882@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031005145055.GA882@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

On Sunday 05 October 2003 16:50, Hal MacArgle wrote:
> Greetings: I thought that "hotplug" merely meant a device could be
> plugged in/out without shutting off the power to the computer..

Thats correct, thats what its for, just imagen having to turn off the power 
simply to connect a small camera then bootup retrive the pics' and reboot 
again so one could disconnect it.

"Hot plug" a nice word and a very good answer to the above, it means what it 
says.

> Apparently there's more to it than that as I see a man and directory
> dedicated to "hotplug."

It is rather complicated in its workings, however it does seem scary to say 
the lease.

>
> I'm a bit lost at this point especially since I've plugged in a flash
> drive, with the power off; noted the kernel finds it; changed the
> default filesystem to ext2; and use it as a regular drive mounted as
> /dev/sda1... So it's obvious that Slackware9.0/2.4.20 has configured
> things to work right out of the box..

Never tryed it like this, maybe i should, i cant see how a camera (i will take 
my camera) as an instance, how it can get assigned the ext2 filesystem when 
it is really a (fat16) filesystem.
Anyway, i cant really comment as i dont have the device here at the minute to 
try.

>
> Seeing the hotplug directory and files I thought I might find an
> answer to my basic query: Can the device actually be plugged in and
> unplugged with the power on?? I read somewhere that firewire is
> hotpluggable but "don't do it," in many cases.. No details.. I still
> can't find the theory behind hot plugging.. As an EE you don't
> connect anything to a live bus with impunity; unless the bus is
> "dead" until it senses a load.. Maybe I can learn something here.
> <grin>

I have plugged my camera in and out many times, it is none the worse for it 
and they as they say thats how it works.

What scares me is the new PCI hotplugging system. I suppose we (i at least) 
compare our presant day PCI devices to what the new systems are desinged for.
I know little if nothing of that new PCI hotpugging system so i will have to 
wait and see what the futcher brings.

On another note about developments, i was presented with a new 120Gig SATA 
device by a windows shop keeper who bet me i could not get it to work with 
linux, tommorrow i will inform him it does as i am using it now with a 
patched 2.4.22 kernel.

I can say they do work rather faster than a normal IDE device and it was not 
so hard to get it recocnised under linux, the problems start when one wants 
to install a distro on it, there's no support for thoses disks as yet.
I have slack-9.1 installed on it now.
If anyone is interested i will place a small howto on my site this week (i 
hope).

>
> Any comments? TIA & enjoying the list..

For what mine are worth, your welcome.

>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
>                 Proprietary  Formats  Unacceptable

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
