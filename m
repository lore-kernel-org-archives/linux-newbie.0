From: Ray Olszewski <ray@comarre.com>
Subject: Re: how to use appl of one image in another
Date: Thu, 19 Jun 2003 10:21:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030619101246.01eca2c0@celine>
References: <5.1.0.14.1.20030619065253.02f596b8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030619164645.41097.qmail@web20510.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

You sent this to me personally; I'm replying to the list, since that is how 
I prefer to provide technical assistance.

I think your error is in misunderstanding what "make oldconfig" does. It 
does NOT magically cause the new compile options to match your running 
kernel. It simply makes whatever is currently in (in this case) 
/home/cs0205/linux/.config match the current kernel source.

The purpose of this option is to simplify moving from an older to to a 
newer kernel source tree; it will prompt you to answer only questions that 
are not already addressed in the .config file. But if this is the first 
time you are compiling a kernel on the machine, it will have no way of 
knowing what options are in the current, running kernel-image.

As you use it, you are compiling the kernel with the as-shipped .config 
settings. They are unlikely to match your requirements. Your kernel is 
mising features you need to work with your overall setup.

To avoid this problem, use instead one of the configuration choices that 
has you review the entire .config file -- "make config", "make menuconfig" 
(I prefer this one, personally), or "make xconfig" -- and configure the 
kernel to match your needs.

The "make clean" step you add is not called for in the README doc. I doubt 
it causes a problem, but if your problems persist after you follow the 
preceding advice, try doing it before you do the "make config" or equivalent.

At 09:46 AM 6/19/2003 -0700, Ravi Kumar Munnangi wrote:

>Iam using Redhat linux 2.4.18-14(which came with
> > > installing RHlinux-8.0.
> > > Now I want to reconfigure  the kernel.
> > >
> > > I have download the linux 2.4.18 from
> > ftp.kernel.org
> > >
> > > Ihave put the file in /home/cs0205/
> > > There itself I unzipped the file.
> > > Then I saw a new directory /home/cs0205/linux
> > > then cd /home/cs0205/linux
> > > make mrproper
> > > make oldconfig
> > > make dep
> > > make clean
> > > make bzImage
> > > make modules
> > > make modules_install
> > > make install
> > >  I have then changed my /etc/lilo.conf file as
> > > follows
> > >   prompt
> > > timeout=50
> > > default=linux_new
> > > boot=/dev/hda
> > > map=/boot/map
> > > install=/boot/boot.b
> > > message=/boot/message
> > > linear
> > >
> > > image=/boot/vmlinuz-2.4.18-14
> > >         label=linux
> > >         initrd=/boot/initrd-2.4.18-14.img
> > >         read-only
> > >         append="root=LABEL=/"
> > > image=/boot/vmlinuz-2.4.18
> > >         label=linux_new
> > >         initrd=/boot/initrd-2.4.18.img
> > >         read-only
> > >         root="/dev/hda1"
> > >
> > >
>  > I have run /sbin/lilo




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
