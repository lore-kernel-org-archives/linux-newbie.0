From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Invalid kernel header included in userspace; multi-line string literals are deprecated
Date: Wed, 15 Sep 2004 14:04:55 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200409151404.55492.pa3gcu@zeelandnet.nl>
References: <20040915013054.47905.qmail@web53607.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040915013054.47905.qmail@web53607.mail.yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Donald Duckie <schipperke2000@yahoo.com>
Cc: Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

On Wednesday 15 September 2004 03:30, Donald Duckie wrote:
> hi!
>
> i do not want to be assuming now, since i only got
> some errors from my assumptions. i have performed the
> options mentioned below but got some errors.
>
>
> what is sn0 and sn1?

They are interface names, that and that only, compare them to ethernet 
devices, they are called ethX.

> can modprobe or insmod know that snull.o is snull? (or
> am i getting the wrong idea here?)

Modprobe is the best to use as it is more intelligent, i suggest you read the 
manual page for modprobe.
Basicly modprobe looks in /lib/modules/`uname -r`/ for modules, now that 
suggests there is somthing wrong with your system IF everything is like you 
say below.

>
> planning to do the following:
> > cd /to/snull/dir
> > modprobe snull
> > ifconfig sn0 10.1.2.11 up
> > ifconfig sn1 10.1.2.12 up
> > route add -net 10.1.2.0 netmask 255.255.255.0 sn0
> > route add -net 10.1.2.0 netmask 255.255.255.0 sn1
>
> and the result:
> ---> cd /lib/modules/2.4.18-sh/misc
>      ls
>          snull.o
>      modprobe  snull
>          modprobe: Can't locate module snull

This can be cause by at least 3 main factors,
1) You have not run 'depmod -a'
2) Your kernel is not called 2.4.18-sh
3) Your not root.

>      (i supposed that i cant continue from here, but
> just tried)
>      ifconfig sn0 101.11.21.111 up
>          SIOCSIFADDR: No such device
>          sn0: unknown interface: No such device
>          sn0: unknown interface: No such device
>      ifconfig sn1 101.11.21.121 up
>          SIOCSIFADDR: No such device
>          sn1: unknown interface: No such device
>          sn1: unknown interface: No such device
>      route add -net 101.11.21.0 netmask 255.255.255.0
> sn0
>          SIOCADDRT: No such device
>      route add -net 101.11.21.0 netmask 255.255.255.0
> sn1
>          SIOCADDRT: No such device

You told me in a previous mail that you could load the module right.?
But now trying it in anther way it fails right.???

>
> planning to do the following:
> > You can also place the snull modules in
>
> /lib/modules/2.4.18/kernel/drivers/net
>
> > run depmod -a
> > place the following in /etc/modules.conf
> > alias sn0 snull
> > alias sn1 snull
>
> and the result:
> ---> cp /lib/modules/2.4.18-sh/misc/snull.o
> /lib/modules/2.4.18-sh/kernel/drivers/net/.
>      depmod -a
>      then edited /etc/modules.conf to add the
> mentioned aliases

Here you need to do 'depmod -a' to update the modules database, if its not run 
and you use modprobe you "should get a message" saying something like, 
modules.conf is more recent than bla bla bla.

>      the redo the procedures: modprobe snull; ifconfig
> sn0 101.11.21.111 up; ifconfig sn1 101.11.21.121 up;
> route add -net 101.11.21.0 netmask 255.255.255.0 sn0;
> route add -net 101.11.21.0 netmask 255.255.255.0 sn1
>          the same results were seen
>
>
> what seems to be wrong with sn?

There should be nothing wrong with sn0 or sn1, you said the module compiled,
i suggest you do the following to see once again if all is well.

su -
enter passwd for root. (and press enter of course)
cd /path/to/ldd2-samples-1.0.1/snull
insmod snull
ifconfig sn0 10.11.21.111 up
ifconfig sn1 10.11.21.121 up

That works here and "should work there as well".

> am i doing something wrong in here?


With all due respect, it certainly looks like it.

Now a few questions here,
1) What is the output of the command uname -r
2) What do you whant to use snull for.?
3) What distro are you using.
4) Again with all due respect, if one needs so much basic help to get    
something like this to work then surely one would not even know what to use 
them for would one, now i hope i am wrong on that one.

The following is showing that you dont seem to understand what i am saying,

> > [aphrodite@aphrodite2 snull]$ snull_unload
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The above indicates that you are NOT root.

> > snull: Operation not permitted
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This almost certainly indicates that you are _NOT_ root.

>
> thanks for all the information and assistance . . .

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
