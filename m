From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: self-made potato driver-1.bin
Date: Sun, 25 Aug 2002 20:46:43 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02082520464300.02211@unix.pa3gcu>
References: <1030305001.695.18.camel@highflyer>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1030305001.695.18.camel@highflyer>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Michael Gruner <stockraser@yahoo.de>, linux-newbie@vger.kernel.org

On Sunday 25 August 2002 19:50, Michael Gruner wrote:
> Hello,
>
> trying to install a debian potato via ftp on a pc with a smc-ultra-card
> is driving me crazy :-/.
>
> It seems not to be possible to get debian potato to work with smc-ultra
> NICs. Some times ago i tried to get it installed on a P90 with a
> smc-ultra but had no sucess. Installing SuSE on that pc I had no
> problems to get the NIC work. Today the next try: I put the card into a
> 486 pc result: potato didn't load the module smc-ultra whether I gave
> the io and irq i set the jumper on the card on nor i gave no options to
> load it: potato every-time told me: device or resource busy... starting
> the distribution fli4l (www.fli4l.de) on that pc the card worked without
> any problems.
>
> I searched google and groups.google for that but without any sucess
> solving the problem.
>
> So i decided to compile my own kernel for the installation disk. I've
> got the kernel sources for 2.2.21. I sucessfuly mounted the rescue disk
> of my potato so I can put the bzImage as "linux" on it. But what about
> the driver-1.bin-disk? I'm not able to mount that disk to replace the
> modules on it.
>
> Any hints for solving the problem with the origin potato disks or how to
> mount and replace the driver-1.bin disk with the new kernel modules?

You make it impossable for any hints as you dont say what commands you use, 
execpt, 
"potato didn't load the module smc-ultra whether I gave
the io and irq i set the jumper on the card on nor i gave no options to
load it:"

You dont even say what options you used./////

Now i have a lot of experiance with smc nics, some "early ultra's" have buggy 
firmware and will give you problems as you seem to be having, those early 
type's (some) work with the module  "wd" (in most cases).
Some cards may look like a smc-ultra but have a 8013 chip, the old wd had 
8003's or was called 8003 cant remember, but AFAIK they were 8 bit cards.

A typical modprobe command for the wd module is simply;
 'modprobe wd'

Now if the card is a true smc-ultra then you have 2 jumpers on the card.
With the card placed with component side up and the coax and RJ45 connectors 
on the righthand side there are jumpers at top left.
The first set of jumpers from left to right is numberd W1.
J1 = soft configurated (under linux not in use)
J2 = I/O=280 IRQ=3 
J3 = I/O=300 IRQ=10

W2 Rom ADDRESS
J1 = none/soft 
J2 D8000 (under linux not in use)

I always used the following;
W1, J1 and J2 open, J3 closed 
W2, J1 closed J2 open

I have encounterd many problems with these cards, here are some hints, as far 
as i can remember, its been a long time since i used them.

Dont use IRQ 3 as it is normally used by serial ports.
Use the jumper settings above to avoid memory and I/O address problems.
Make sure your BIOS is set for ISA/PnP on IRQ 10 otherwise some systems will 
quite possably assign irq10 to some PCI adaptor during the init process and 
will produce the error message you mentioned above, 
"  device or resource busy "
It really means the IRQ or I/O address is in use rather than the ethernet 
card is in use.

There are more hints and kinks for the dam cards, i cant think of anymore at 
the minute, however i am sure that those mentioned are the most important.

If your problems persist you have 2 choosie's, 

1) Send another mail, i/wee wil try and help.
2) Throw the dam things away as they are way outdated and olny 10M cards.

>
> thank you
>
> micha

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
