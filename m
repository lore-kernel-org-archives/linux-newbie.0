From: Donald Duckie <schipperke2000@yahoo.com>
Subject: Re: Invalid kernel header included in userspace; multi-line string literals are deprecated
Date: Tue, 14 Sep 2004 18:30:54 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040915013054.47905.qmail@web53607.mail.yahoo.com>
References: <200409141121.12145.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200409141121.12145.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

hi!

i do not want to be assuming now, since i only got
some errors from my assumptions. i have performed the
options mentioned below but got some errors.


what is sn0 and sn1?
can modprobe or insmod know that snull.o is snull? (or
am i getting the wrong idea here?)


planning to do the following: 
> cd /to/snull/dir
> modprobe snull
> ifconfig sn0 10.1.2.11 up
> ifconfig sn1 10.1.2.12 up
> route add -net 10.1.2.0 netmask 255.255.255.0 sn0
> route add -net 10.1.2.0 netmask 255.255.255.0 sn1

and the result:
---> cd /lib/modules/2.4.18-sh/misc
     ls 
         snull.o 
     modprobe  snull
         modprobe: Can't locate module snull
     (i supposed that i cant continue from here, but
just tried)
     ifconfig sn0 101.11.21.111 up
         SIOCSIFADDR: No such device
         sn0: unknown interface: No such device
         sn0: unknown interface: No such device
     ifconfig sn1 101.11.21.121 up
         SIOCSIFADDR: No such device
         sn1: unknown interface: No such device
         sn1: unknown interface: No such device
     route add -net 101.11.21.0 netmask 255.255.255.0
sn0
         SIOCADDRT: No such device
     route add -net 101.11.21.0 netmask 255.255.255.0
sn1
         SIOCADDRT: No such device


planning to do the following:
> You can also place the snull modules in
/lib/modules/2.4.18/kernel/drivers/net
> run depmod -a
> place the following in /etc/modules.conf
> alias sn0 snull
> alias sn1 snull

and the result:
---> cp /lib/modules/2.4.18-sh/misc/snull.o
/lib/modules/2.4.18-sh/kernel/drivers/net/.
     depmod -a
     then edited /etc/modules.conf to add the
mentioned aliases
     the redo the procedures: modprobe snull; ifconfig
sn0 101.11.21.111 up; ifconfig sn1 101.11.21.121 up;
route add -net 101.11.21.0 netmask 255.255.255.0 sn0;
route add -net 101.11.21.0 netmask 255.255.255.0 sn1
         the same results were seen


what seems to be wrong with sn?
am i doing something wrong in here?

thanks for all the information and assistance . . .



--- Richard Adams <pa3gcu@zeelandnet.nl> wrote:

> On Tuesday 14 Sep 2004 05:48, Donald Duckie wrote:
> > hi!
> >
> > thank you very much :-)
> > the make mrproper; make oldconfig; and make dep
> were
> > all that was lacking . . . whew!!!
> >
> > for my next steps though, where can i find some
> > information on snull_load and snull_unload?
> > running them gave me the following errors:
> 
> No idea, but here is your answer(s).
> 
> > [aphrodite@aphrodite2 snull]$ snull_load
> > ./snull.o: ELF file ./snull.o not for this
> > architecture
> 
> You need to be root to insert modules.
> As root do;
> cd /to/where/snull_load/file/is
> chmod a+x snull_load
> 
> ./snull_load
> But you will still get some errors because local0
> and local1 are not know on 
> your system, either define them in /etc/hosts or
> edit snull_load and replace 
> local0 and local1 with an internal IP# as in.
> ifconfig sn0 10.1.2.11
> ifconfig sn1 10.1.2.12
> 
> 
> > local0: Host name lookup failure
> > ifconfig: `--help' gives usage information.
> > local1: Host name lookup failure
> > ifconfig: `--help' gives usage information.
> 
> They are not defined in /etc/hosts.
> 
> >
> > [aphrodite@aphrodite2 snull]$ snull_unload
> > sn0: unknown interface: No such device
> > sn1: unknown interface: No such device
> > snull: Operation not permitted
> 
> Because the ifconfig line had an invalid host
> nothing gets configured.
> 
> You can as root simply do;
> cd /to/snull/dir
> modprobe snull
> ifconfig sn0 10.1.2.11 up
> ifconfig sn1 10.1.2.12 up
> route add -net 10.1.2.0 netmask 255.255.255.0 sn0
> route add -net 10.1.2.0 netmask 255.255.255.0 sn1
> 
> You can also place the snull modules in
> /lib/modules/2.4.18/kernel/drivers/net
> run depmod -a
> place the following in /etc/modules.conf
> alias sn0 snull
> alias sn1 snull
> Now if you use ifconfig to up the interface without
> loading the module first 
> then it should get loaded automaticly altho, i have
> not tryed it here because 
> i do not intend to use snX ifc's.
> 
> --
> If the Linux community is a bunch of thieves because
> they
> try to imitate windows programs, then the Windows
> community
> is built on organized crime.
> 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
> 



		
__________________________________
Do you Yahoo!?
Yahoo! Mail - 50x more storage than other providers!
http://promotions.yahoo.com/new_mail
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
