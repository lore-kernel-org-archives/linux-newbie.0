From: "James Miller (office)" <jamtat@mailsnare.net>
Subject: Re: problem with Real Tek RTL-8139, SMC EZ Card
Date: Thu, 6 Nov 2003 12:56:25 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0311061250040.240@Debianbox>
References: <5.1.0.14.1.20031106100759.01fac768@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031106100759.01fac768@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: 
Cc: linux-newbie@vger.kernel.org

On Thu, 6 Nov 2003, Ray Olszewski wrote:

> At 09:11 AM 11/6/2003 -0800, Ravi Kumar Munnangi wrote:
> >Hello,
> >
> >   I have just now installed RedHat Linux 8.0 on my
> >system. It has the Real Tek RTL-8139, SMC EZ Card.
> >
> >  After ifup eth0, it gave the message,
> >
> >  modprobe:Can't open dependencies file
> >/lib/modules/2.2.14-5.0/modules.dep(No such file or
> >directory)
> >
> >
<snip>
>
> Finally ... 2.2.14 is a very old Linux kernel ... it is not even an
> up-to-date 2.2.x. Distros do still use these old 2.2.x kernels for their
> install disks (Debian does, anyway, and I'm not really surprised that an
> older Red Hat does too). But they are not really meant for production
> systems. You should look into installing via rpm whatever 2.4.x Linux
> kernel is currently available in Red Hat ... either just install the
> pre-made image or compile a custom kernel locally, as you prefer. This may
> be the real solution to your problem.
>
My (rather unlearned) assumption here is that this individual is trying to
use a non-standard kernel.  I really don't know for sure what kernel RH 8
uses, but I seriously doubt it's 2.2.14: that's the kernel from RH 6.2, if
memory serves.  So, to the initial poster: have you loaded a different
kernel, like maybe the one from RH 6.2 on this machine to take the place
of the RH 8 kernel?  If you did, this is likely where the problem lies:
the machine needs modules that were compiled for the running kernel.  If
you want, or need, to run the 2.2.14 kernel, you'll also need to get, or
compile, the modules for that kernel.  Switching back to the standard RH 8
kernel - if you've loaded a different one in its place - could resolve the
problem in the simplest fashion.

Just the thoughts of an uppity newbie,
James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
