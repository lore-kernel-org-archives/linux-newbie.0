From: Ray Olszewski <ray@comarre.com>
Subject: Re: Re[2]: mouse setup
Date: Wed, 03 Jul 2002 12:10:39 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020703120419.020e9af0@celine>
References: <155376841.20020704002151@sby.centrin.net.id>
 <50420696.20020703074009@sby.centrin.net.id>
 <200207031547.44350.pa3gcu@zeelandnet.nl>
 <155376841.20020704002151@sby.centrin.net.id>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207031902.44210.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl, adwin <fox@sby.centrin.net.id>, linux-newbie@vger.kernel.org

At 07:02 PM 7/3/02 +0000, Richard Adams wrote:
>On Wednesday 03 July 2002 17:21, adwin wrote:
> > Hello Richard,
>
>Hello.
>
> >
> > yes ... if I use my ps2 port..it will work..but unfortunatly .. my ps2
> > port is broken...so I cannot use any ps2 mouse anyomore...:(
> > so the choice is .. use my usb port. :)
>
>What leads you to belive its broken, to be honest i have never seen or come
>across a M/Board that had a broken ps/2 port, i would point fingers at a
>disconneted plug or broken wird somewhere in its connector because to be
>honest all a ps/2 port is is a resurved channel to IRQ12.
>Or have you setup your BIOS to allow other things/devices to use IRQ12.??


Richard -- While do I do not know this fellow's situation, I have had 
experience encountering defective PS/2 interfaces. In my last job, I 
inherited as Win2K development workstation from my predecessor, and it used 
a serial-port trackball. I wondered why, wince the same physical trackball 
could be connected either way (serial or PS/2). When I tried to switch it, 
or to use a different PS/2 pointing device, the machine consistently 
crashed, early enough in the startup process that it looked like a BIOS 
problem. I did the usual fiddling with the BIOS -- this was over a year 
ago, so I don't recall the exact details of what I did -- but it was no help.

So a defective PS/2 interface is a legitimate possibility. That said ... is 
dropping even further back, to a serial-port mouse, an option for him? 
While USB support is good now (on current 2.4.x kernels, at least), I don't 
know how good support is for pointing devices (or even if it exists).




--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
