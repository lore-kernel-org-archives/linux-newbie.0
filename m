From: Ray Olszewski <ray@comarre.com>
Subject: Re: problem with Real Tek RTL-8139, SMC EZ Card
Date: Thu, 06 Nov 2003 10:23:15 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031106100759.01fac768@celine>
References: <20031106171124.64183.qmail@web80604.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031106171124.64183.qmail@web80604.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:11 AM 11/6/2003 -0800, Ravi Kumar Munnangi wrote:
>Hello,
>
>   I have just now installed RedHat Linux 8.0 on my
>system. It has the Real Tek RTL-8139, SMC EZ Card.
>
>  After ifup eth0, it gave the message,
>
>  modprobe:Can't open dependencies file
>/lib/modules/2.2.14-5.0/modules.dep(No such file or
>directory)
>
>
>The same message appeared even at the time of booting.
>
>Please help me come out of this problem!

To fix it, you first need to find out why it is occurring.

After boot/init is finished, log in as root and check by hand for the 
"missing" file. Is there a directory named "/lib/modules/2.2.14-5.0/"? If 
not, then most likely something went wrong during install (or, in the 
unlikely event that you compiled your own kernel, you forgot to do "make 
modules_install").

If the directory is present, does it contain a file named "modules.dep"? If 
not, see if running "depmod" from the command line fixes the problem.

If both directory and file are present, then the problem is *probably* that 
the modprobe occurs in the "wrong" place in the init sequence (I'm assuming 
here that the "ifup eth0" is in an init script, not something you are doing 
by hand after boot/init). Offhand, I cannot think of why that might occur 
... this is such an odd possibility, I cannot even think of what additional 
information to ask you for, should it be the case.

Finally ... 2.2.14 is a very old Linux kernel ... it is not even an 
up-to-date 2.2.x. Distros do still use these old 2.2.x kernels for their 
install disks (Debian does, anyway, and I'm not really surprised that an 
older Red Hat does too). But they are not really meant for production 
systems. You should look into installing via rpm whatever 2.4.x Linux 
kernel is currently available in Red Hat ... either just install the 
pre-made image or compile a custom kernel locally, as you prefer. This may 
be the real solution to your problem.

BTW, the advice someone else posted was wrong in one detail. If modprobe is 
not finding modules.dep, then attempting "/sbin/modprobe 8139too" is 
pointless. Instead, try "/sbin/insmod 8139too", since insmod does NOT 
handle dependency issues so will not look for modules.dep . It may fail too 
(if, for example, the module itself is not present), but at least it will 
fail for a different reason.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
