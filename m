From: caszonyi@rdslink.ro
Subject: Re: help on dmesg output
Date: Tue, 12 Apr 2005 00:48:02 +0300 (EEST)
Message-ID: <Pine.LNX.4.60.0504120028150.1855@grinch.ro>
References: <Pine.LNX.4.61.0504110958420.6036@localhost.localdomain>
 <Pine.LNX.4.60.0504112155400.1512@grinch.ro> <Pine.LNX.4.61.0504111504390.5967@localhost.localdomain>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504111504390.5967@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Mon, 11 Apr 2005, James Miller wrote:

> On Mon, 11 Apr 2005 caszonyi@rdslink.ro wrote:
>
>> On Mon, 11 Apr 2005, James Miller wrote:
>> 
>>> input: PC Speaker
>>> Real Time Clock Driver v1.12
>>> ad1848/cs4248 codec driver Copyright (C) by Hannu Savolainen 1993-1996
>>> ad1848: No ISAPnP cards found, trying standard ones...
>>> cs4232: set synthio and synthirq to use the wavefront facilities.
>>> cs4232: Must set io, irq and dma.
>>

I think the driver cannot automatically detect your io, irq and dma 
settings

> I think these problems might have been related to the module loading twice. 
> Apparently the kernel does some sort of detection and loads the module, and 
> there was no need for me to enter it in /etc/modules. At least the problem 
> output I posted previously goes away when I remove the snd-cs4236 line from 
> /etc/modules.
>

they seem to be related to the fact that you load a lot of modules for the 
same thing (in this case your sound card)

> ad1848/cs4248 codec driver Copyright (C) by Hannu Savolainen 1993-1996
> pnp: Device 01:01.00 activated.
> ad1848: PnP reports 'CS4236B' at i/o 0x534, irq 5, dma 1, 3
> cs4232: set synthio and synthirq to use the wavefront facilities.
> cs4232: probe of 01:01.00 failed with error -16
> cs4232: Must set io, irq and dma.
> pnp: Device 01:01.01 activated.
> gameport: NS558 PnP at pnp01:01.01 io 0x3a0 size 8 speed 755 kHz
> NET: Registered protocol family 17
> NET: Registered protocol family 10
> Disabled Privacy Extensions on device c032abe0(lo)
> IPv6 over IPv4 tunneling driver
> eth0: no IPv6 routers present
>
> Things seem to have gotten detected and at least partially configured. Not 
> sure why cs4232 is in there: as mentioned, my sound chip is cs4236. I didn't 
> cause any module by that name to load. Thus, I can't very well stipulate any 
> io, irq or dma for it. If it refers to settings for the cs4236 chip, those 
> are io=0x534 irq=5 and dma=1, 3--as the output a little further up shows. 
> Man, this stuff is recondite.
>

cs4232 is in there because the cs4232 module is also the driver for cs4236 
AFAIK (i have a CS4239 chip)

>
>> What do you mean that you couldn't assign that adress ? The fact that the 
>> card didn't worked usually means that IO + IRQ + DMA probing for the card 
>> was unsuccessfull and/or the driver initialization failed.
>
> Like I said in my earlier posts on the other soundcard, when I would 
> specified io for the module in /etc/modules, the module would still not be 
> associated with that io after boot when I would check cat /proc/ioports 
> output. I tired it several times. The irq (the Soundman irq, anyway) would be 
> associated with the module, but not the io. And the card *did* work--sort of. 
> It would output sound, but the sound was crackly and when other processes 
> started on the computer, the sound would pause. So, something was wrong. 
> What, I don't know, and I'm not trying to pursue it any further now anyway. 
> Just was noting something associated when trying to load modules for what I 
> thought would be a surefire solution.
>

Could also be an error in your kernel because, normally in the 2.6 kernel,
the OSS and ALSA sound modules should not be used with the same kernel in 
the same time.

I'm a slackware user and usually compile the kernel myself so what i 
sugest to you is to compile the kernel yourself (if know how to do it) 
and put the modules for your sound card in kernel without using modules
for sound to see if there's a difference. But taken into account that
debian is using an initrd to boot the system this could be quite a task.

Another solution is to comment out all the lines in /etc/modules.conf and 
then uncomment only the necessary one for your kernel to work
(i.e. usb stuff, zip, vesa and sound). Also for this to work you must 
make sure that nos script is loading the modules. Take care that mixing 
ALSA sound modules with OSS sound modules is a bad idea

--
?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
