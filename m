From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: char-major-6
Date: Fri, 19 Apr 2002 14:40:50 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0204191440500C.04062@unix.pa3gcu>
References: <m3662o5ol0.fsf@wobble.eth.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <m3662o5ol0.fsf@wobble.eth.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, G Anna <drguruolai@eth.net>

On Friday 19 April 2002 03:55, G Anna wrote:
> Dear All,

I've only seen one reply to this mail, i will try and explain whats happening 
and possably shed some light on the other discussion about devices not being 
found.

>
> When I try to do
>
> # /etc/rc.d/init.d/lpd start
> Starting lpd: Warning - test: \
> cannot open lp device '/dev/lp0' - No such device

Note here it says No such device, normally one can take that to mean there is 
no hardware device found via /dev/lp0 (in this case) that in turn does not 
mean one has to go hunting in /dev/ and (re)create /dev/lp0 because 99,9% of 
the time its there but its only a file with No device attached.

Redhat like most all distro's create those files at install time, my Redhat 
system here has never had a printer attached to it nor have i configured a 
printer, but the file /dev/lp0 is there..

>
> [I broke the line into two.]
>
> And in the /var/log/messages file I have
>
> Apr 19 09:19:05 wobble modprobe: modprobe: Can't locate module char-major-6
> Apr 19 09:19:05 wobble lpd: lpd startup succeeded

The above message is saying that the program modprobe cannot find a module 
called "lp" which is char-major-6 (to answer your question), now either you 
configured your kernel without lp support or the needed modules were not 
installed beforehand, those are;
parport and parport_pc
if those are loaded (can be seen with the command 'lsmod') then you did not 
configure your kernel with lp module support.
Or it could be that IRQ 7 is in use by some other device, check that with the 
command 'cat /proc/interrupts'.

To see just what you configured (or did not configure) in your kernel you can 
look at the file .config found in /usr/src/linux that is providing you have 
not done a make distclean or make mrproper after you compiled the last kernel.

>
> Can anybody tell me, which config option is this char-major-6?

As above, "lp" printer.

>
> I am using RH 7.1,
>
> $ uname -a
> Linux wobble 2.4.16 #2 Fri Apr 19 01:09:19 IST 2002 i686 unknown
>
> Thanks for all the help.
>
> Cheers,
> anna

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
