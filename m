From: Ray Olszewski <ray@comarre.com>
Subject: Re: Setting EXTRAVERSION (was Re: Kernel error)
Date: Tue, 28 May 2002 09:54:38 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020528094425.0275d8f0@celine>
References: <20020527165031.GA2875@cam.ac.uk>
 <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH>
 <20020527165031.GA2875@cam.ac.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <m3ptzge0qn.fsf_-_@wobble.eth.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:14 PM 5/28/02 +0530, G Anna wrote:
>[...]
> > My suggestion would be to compile a new kernel, and set
> > EXTRAVERSION.  If the new kernel is version 2.4.5<extra>, then put
> > the System.map in /boot/System.map-2.4.5<extra>.
>
>I installed RH 7.1.  It came with 2.4.2-2 kernel.  I then upgraded the
>kernel to 2.4.16.  While compiling the new 2.4.16 kernel I didn't not
>set the EXTRAVERSION in /usr/src/linux/Makefile. Will this cause any
>problem in the future?

Not if you only need one compiled version of 2.4.16 on your system at any 
time. If you compile and completely install a new version, its modules tree 
will replace the prior one. If that is never a problem, you are fine. If it 
is (or might be), then you should be using EXTRAVERSION.

>What is the significance of this EXTRAVERSION?

It allows you to distinguish different variants of the same kernel. It is 
useful in two sorts of instances that I can think of --

1. If you use a workstation to compile specialized kernels for other Linux 
hosts (say a dedicated Web server or a firewall/router). It lets you keep 
better track of things. (It also works nicelty with Debian's system for 
packaging custom kernel binaries; if other distros have something similar, 
it probably works nicely with them too.)

2. If you have an existing 2.4.x kernel on your workstation, and you want 
to compile a second one to experiment with some new features ... but you 
want to be sure your old kernel is available as fallback. In this instance, 
it keeps the two compiled module trees separated.

>Can I choose any value
>for this variable?

Not *quite* any value. You need to choose a value that contains only 
characters that are legal as part of directory and file names, since the 
kernel version name gets used in the compiled modules tree. For example, no 
embedded spaces (and especially no trailing spaces; they indroduce 
hard-to-spot errors).

>Also, should this value always start with -, by
>convention?

Yes.

>$ ls /lib/modules
>2.4.16
>2.4.2-2
>
>$ uname -a
>Linux wobble 2.4.16 #8 Tue May 14 14:15:58 IST 2002 i686 unknown

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
