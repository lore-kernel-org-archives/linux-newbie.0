From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Re[2]: mouse setup
Date: Wed, 3 Jul 2002 20:10:25 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207032010.25005.pa3gcu@zeelandnet.nl>
References: <155376841.20020704002151@sby.centrin.net.id> <5.1.0.14.1.20020703120419.020e9af0@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020703120419.020e9af0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Wednesday 03 July 2002 19:10, Ray Olszewski wrote:
> At 07:02 PM 7/3/02 +0000, Richard Adams wrote:
> >On Wednesday 03 July 2002 17:21, adwin wrote:
> > > Hello Richard,
> >
> >Hello.
> >
> > > yes ... if I use my ps2 port..it will work..but unfortunatly .. my ps2
> > > port is broken...so I cannot use any ps2 mouse anyomore...:(
> > > so the choice is .. use my usb port. :)
> >
> >What leads you to belive its broken, to be honest i have never seen or
> > come across a M/Board that had a broken ps/2 port, i would point fingers
> > at a disconneted plug or broken wird somewhere in its connector because
> > to be honest all a ps/2 port is is a resurved channel to IRQ12.
> >Or have you setup your BIOS to allow other things/devices to use IRQ12.??
>
> Richard -- While do I do not know this fellow's situation, I have had
> experience encountering defective PS/2 interfaces. In my last job, I
> inherited as Win2K development workstation from my predecessor, and it used
> a serial-port trackball. I wondered why, wince the same physical trackball
> could be connected either way (serial or PS/2). When I tried to switch it,
> or to use a different PS/2 pointing device, the machine consistently
> crashed, early enough in the startup process that it looked like a BIOS
> problem. I did the usual fiddling with the BIOS -- this was over a year
> ago, so I don't recall the exact details of what I did -- but it was no
> help.
>
> So a defective PS/2 interface is a legitimate possibility. That said ... is
> dropping even further back, to a serial-port mouse, an option for him?
> While USB support is good now (on current 2.4.x kernels, at least), I don't
> know how good support is for pointing devices (or even if it exists).

Oops i see from my own words that i implied that it was not really possable to 
get a broken ps/2 port, i did not mean to imply that at all, i mean i have 
never come across a broken one, i have had many problems with ps/2 devices
presented to me tho' all or which i found an answer for.

Things which i have found concerning ps/2 ports which were said to be 
non-working were;
Some concern windows some all some others.

Hot-plugging, after the voltage/current falls because a device is unplugged 
the voltage/current will not return untill the machine is rebooted.

A BIOS problem, the owner assiged IRQ 12 to some other device.

Broken or lose wires.

On older Mobo's an internal plug lose or bad contacts.
Possably more but i cannot really remember at this minute.

I just took a peek at kernel source 2.2.21 USB has come up one hell of a lot, 
all i did was grep for the word USB and then MOUSE in 'less' on the file 
linux/Documentation/Configure.help

One which i think Adwin would like to see is;
Mouse support
CONFIG_INPUT_MOUSEDEV
  Say Y here if you want your USB HID mouse (or ADB mouse handled by
  the input layer) to be accessible as char devices 13:32+ -
  /dev/input/mouseX and 13:63 - /dev/input/mice as an emulated ImPS/2
  mouse.  That way, all user space programs will be able to use your
  mouse.

There are more.

Please forgive a lenghy mail, but i thought it relavant not to snip this one 
considering the details.
If one thinks it was too long, sorry.....

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
