From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Invalid kernel header included in userspace; multi-line string literals are deprecated
Date: Sat, 2 Oct 2004 07:45:10 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200410020745.10467.pa3gcu@zeelandnet.nl>
References: <20040922025139.84087.qmail@web53610.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040922025139.84087.qmail@web53610.mail.yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Donald Duckie <schipperke2000@yahoo.com>
Cc: Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

On Wednesday 22 Sep 2004 04:51, Donald Duckie wrote:
> hi!

Sorry for the long delay, i just returned from holiday.

> thank you for the patience in explaining things.
> there are some other things in linux that i still need
> to understand.
> and to answer the questions:
> > 1) What is the output of the command uname -r
>
> in my compilation machine, it is 2.4.21-4.EL.

Then you are using a kernel named 2.4.21-4.EL

>    - and i was cross-compiling with 2.4.18-SH.

I doubt _very much_ that you were cross compiling,
Simply because the linux symlink points to another name other than the running 
kernel does _not_ mean you are cross compiling.

>      the /linux was linked to 2.4.18-SH/linux.
>    - how do I set my environment such that uname -r
> can get the 2.4.18-SH? i think depmod uses it right?

WRONG, if you want uname-r to show 2.4.18-SH then you _must_ boot that kernel 
then and only then will uname -r show 2.4.18-SH as that would then be the 
running kernel.

Kernel modules compiled against 2.4.18-SH source will not normally be usable 
with another kernel.

> in the machine where i run modprobe but got the
> unresolved linking errors (this is a separate
> machine), it is 2.4.18-SH.

You can compile a kernel and its modules on one machine and transfer them to 
another machine _only_ if the kernel is the same, if the kernel versions do 
not match then modules will give unresolved symbols period.

>
> > 2) What do you whant to use snull for.?
>
>    - currently i am studying the socket_buffers and
> ifc2 implementation and happen to see the snull
> sample, and thought this would be a good example to
> see how it runs/works.
>
> > 3) What distro are you using.
>
>    - using 2.4.18-SH (redhat)

Then compile modules on that machine and not on another using a different 
kernel.

>
> > 4) [aphrodite@aphrodite2] whoami will return root.
>
>      (though maybe i would admit that  in the several
> attempts that i have done, there might be a time
> wherein i was not root). but i performed the suggested
> operations (insuring that i was root) and still got
> the same results.
>
> and here are what i have just noticed lately:
> in the machine where i run modprobe with unresolved
> linking errors, there is no depmod command, so i
> assume that i will run depmod where i compiled the
> snull files, transfer the makefile.dep to the other
> machine for modprobe to use. is this okey?

If you do not have the depmod command then you installation is !ucked up, it 
cannot possably work properly without it, depmod normally resides in /sbin
Use the 'whereis' command to dind it.
whereis depmod
You run 'depmod -a' after;
1) Installing a new module
2) After editing /etc/modules.conf
3) Possably at startup (done automaticly).

No you _dont_ run depmod on another machine at all if the module(s) are to be 
transfered to another machine.

No you dont even use makefile.dep at all.

>
> and just a minute ago (just came back to this task
> today since last week); i renamed /lib to /lib.redhat
> and am no longer able to perform any other command to
> the machine where i compiled. i can't run mv anymore.
> is there a way for me to be able to return /lib.redhat
> to /lib?

You seem to be trying to run before you can walk, you say you are studing 
socket_buffers and there workings which gives me the impression you know 
about things, then again you !uck up your system by doing a chilish 'mv' 
operation.
No unix system in the world will run without lib's, in its path enviroment.

You will quite possably need to use the install cd to boot your machine into 
resuce mode or start an install to be able to access a console.

I dont know how redhat does it anymore as i do not have a running redhat 
system here to try, The idea behind is to use a install boot meduim to be 
able to 'mount' the damaged partition, once mounted you can simply 'mv' back 
what you did wrong, then simply reboot start the system like you always do 
and all should then be fine.
I can explane into more detail but as i said i do not have a redhat system 
here so i may well get some or other redhat spesific then wrong and mislead 
you, with slackware i would do;

Place the install cd in the drive and start the system, at the lilo boot 
prompt i would smply hit enter to boot the default CD image.
Type root to start.
I now have a root console
mount -t auto /dev/hda1 /mnt
cd /mnt/
mv lib.redhat lib
reboot

Under redhat i would try the same.
boot, let redhat start its installer
When it has started hit CTRL-ALT-F1 or 2 or 3 or 4 etc, find a console with a 
shell, there should be one where you can enter commands, now use my example 
above to change the dir structure back to how it should be.
 
As i said, its redhat so your mileage may vary.

-- 
If the Linux community is a bunch of thieves because they
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
