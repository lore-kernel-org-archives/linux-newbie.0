From: Donald Duckie <schipperke2000@yahoo.com>
Subject: Re: Invalid kernel header included in userspace; multi-line string literals are deprecated
Date: Tue, 21 Sep 2004 19:51:39 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040922025139.84087.qmail@web53610.mail.yahoo.com>
References: <200409151404.55492.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200409151404.55492.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

hi!

thank you for the patience in explaining things.
there are some other things in linux that i still need
to understand.
and to answer the questions:
> 1) What is the output of the command uname -r
in my compilation machine, it is 2.4.21-4.EL.
   - and i was cross-compiling with 2.4.18-SH. 
     the /linux was linked to 2.4.18-SH/linux.
   - how do I set my environment such that uname -r
can get the 2.4.18-SH? i think depmod uses it right?
in the machine where i run modprobe but got the
unresolved linking errors (this is a separate
machine), it is 2.4.18-SH. 
> 2) What do you whant to use snull for.?
   - currently i am studying the socket_buffers and
ifc2 implementation and happen to see the snull
sample, and thought this would be a good example to
see how it runs/works.
> 3) What distro are you using.
   - using 2.4.18-SH (redhat)
> 4) [aphrodite@aphrodite2] whoami will return root.
     (though maybe i would admit that  in the several
attempts that i have done, there might be a time
wherein i was not root). but i performed the suggested
operations (insuring that i was root) and still got
the same results.

and here are what i have just noticed lately:
in the machine where i run modprobe with unresolved
linking errors, there is no depmod command, so i
assume that i will run depmod where i compiled the
snull files, transfer the makefile.dep to the other
machine for modprobe to use. is this okey?


and just a minute ago (just came back to this task
today since last week); i renamed /lib to /lib.redhat
and am no longer able to perform any other command to
the machine where i compiled. i can't run mv anymore.
is there a way for me to be able to return /lib.redhat
to /lib?

thank you very for your help  . . . 


--- Richard Adams <pa3gcu@zeelandnet.nl> wrote:

> On Wednesday 15 September 2004 03:30, Donald Duckie
> wrote:
> > hi!
> >
> > i do not want to be assuming now, since i only got
> > some errors from my assumptions. i have performed
> the
> > options mentioned below but got some errors.
> >
> >
> > what is sn0 and sn1?
> 
> They are interface names, that and that only,
> compare them to ethernet 
> devices, they are called ethX.
> 
> > can modprobe or insmod know that snull.o is snull?
> (or
> > am i getting the wrong idea here?)
> 
> Modprobe is the best to use as it is more
> intelligent, i suggest you read the 
> manual page for modprobe.
> Basicly modprobe looks in /lib/modules/`uname -r`/
> for modules, now that 
> suggests there is somthing wrong with your system IF
> everything is like you 
> say below.
> 
> >
> > planning to do the following:
> > > cd /to/snull/dir
> > > modprobe snull
> > > ifconfig sn0 10.1.2.11 up
> > > ifconfig sn1 10.1.2.12 up
> > > route add -net 10.1.2.0 netmask 255.255.255.0
> sn0
> > > route add -net 10.1.2.0 netmask 255.255.255.0
> sn1
> >
> > and the result:
> > ---> cd /lib/modules/2.4.18-sh/misc
> >      ls
> >          snull.o
> >      modprobe  snull
> >          modprobe: Can't locate module snull
> 
> This can be cause by at least 3 main factors,
> 1) You have not run 'depmod -a'
> 2) Your kernel is not called 2.4.18-sh
> 3) Your not root.
> 
> >      (i supposed that i cant continue from here,
> but
> > just tried)
> >      ifconfig sn0 101.11.21.111 up
> >          SIOCSIFADDR: No such device
> >          sn0: unknown interface: No such device
> >          sn0: unknown interface: No such device
> >      ifconfig sn1 101.11.21.121 up
> >          SIOCSIFADDR: No such device
> >          sn1: unknown interface: No such device
> >          sn1: unknown interface: No such device
> >      route add -net 101.11.21.0 netmask
> 255.255.255.0
> > sn0
> >          SIOCADDRT: No such device
> >      route add -net 101.11.21.0 netmask
> 255.255.255.0
> > sn1
> >          SIOCADDRT: No such device
> 
> You told me in a previous mail that you could load
> the module right.?
> But now trying it in anther way it fails right.???
> 
> >
> > planning to do the following:
> > > You can also place the snull modules in
> >
> > /lib/modules/2.4.18/kernel/drivers/net
> >
> > > run depmod -a
> > > place the following in /etc/modules.conf
> > > alias sn0 snull
> > > alias sn1 snull
> >
> > and the result:
> > ---> cp /lib/modules/2.4.18-sh/misc/snull.o
> > /lib/modules/2.4.18-sh/kernel/drivers/net/.
> >      depmod -a
> >      then edited /etc/modules.conf to add the
> > mentioned aliases
> 
> Here you need to do 'depmod -a' to update the
> modules database, if its not run 
> and you use modprobe you "should get a message"
> saying something like, 
> modules.conf is more recent than bla bla bla.
> 
> >      the redo the procedures: modprobe snull;
> ifconfig
> > sn0 101.11.21.111 up; ifconfig sn1 101.11.21.121
> up;
> > route add -net 101.11.21.0 netmask 255.255.255.0
> sn0;
> > route add -net 101.11.21.0 netmask 255.255.255.0
> sn1
> >          the same results were seen
> >
> >
> > what seems to be wrong with sn?
> 
> There should be nothing wrong with sn0 or sn1, you
> said the module compiled,
> i suggest you do the following to see once again if
> all is well.
> 
> su -
> enter passwd for root. (and press enter of course)
> cd /path/to/ldd2-samples-1.0.1/snull
> insmod snull
> ifconfig sn0 10.11.21.111 up
> ifconfig sn1 10.11.21.121 up
> 
> That works here and "should work there as well".
> 
> > am i doing something wrong in here?
> 
> 
> With all due respect, it certainly looks like it.
> 
> Now a few questions here,
> 1) What is the output of the command uname -r
> 2) What do you whant to use snull for.?
> 3) What distro are you using.
> 4) Again with all due respect, if one needs so much
> basic help to get    
> something like this to work then surely one would
> not even know what to use 
> them for would one, now i hope i am wrong on that
> one.
> 
> The following is showing that you dont seem to
> understand what i am saying,
> 
> > > [aphrodite@aphrodite2 snull]$ snull_unload
> ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> The above indicates that you are NOT root.
> 
> > > snull: Operation not permitted
> ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> This almost certainly indicates that you are _NOT_
> root.
> 
> >
> > thanks for all the information and assistance . .
> .
> 
> -- 
> If the Linux community is a bunch of theives because
> they
> try to imitate windows programs, then the Windows
> community
> is built on organized crime.
> 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> 
> 



		
_______________________________
Do you Yahoo!?
Declare Yourself - Register online to vote today!
http://vote.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
