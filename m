From: James Miller <jamtat@mailsnare.net>
Subject: Re: net (& module, I guess) problems after dist-upgrade
Date: Mon, 14 Jun 2004 17:44:36 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406141735060.1101@debian-emach>
References: <Pine.LNX.4.58.0406141228040.1108@debian-emach>
 <5.1.0.14.1.20040612204315.02004830@celine> <Pine.LNX.4.58.0406121445360.1825@debian-emach>
 <5.1.0.14.1.20040612111803.01fd5808@celine> <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach> <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach> <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine> <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040612121108.01fc9a80@celine> <Pine.LNX.4.58.0406121445360.1825@debian-emach>
 <5.1.0.14.1.20040612204315.02004830@celine> <5.1.0.14.1.20040614084449.01ff4bf0@celine>
 <Pine.LNX.4.58.0406141228040.1108@debian-emach> <5.1.0.14.1.20040614113439.01fa6ff0@celine>
 <Pine.LNX.4.58
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406141358180.1145@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 14 Jun 2004, James Miller wrote:

> On Mon, 14 Jun 2004, Ray Olszewski wrote:
>
> > This is a wordy way of telling you that you should run depmod. The modutils
> > init script is supposed to do this for you, but it may interact with initrd
> > in funny ways. So to be safe, do this (following the dpkg-reconfigure):
> >
> >          1. Reboot the system.
> >          2. Log in as root and run "depmod -a".
> >          3. Reboot the system.
> >
> > This may not fix your modules problem. But it will fix the problem that
> > this message is warning you about.
>
> Ok.  I did that once before but I'll do it again right after I send off
> this email (I've just done depmod -a - no error output - so all that
> remains is to reboot).

Well, I'm sorry to say that running depmod -a after dpkg-reconfigure --all
didn't get those NIC modules auto-loading like they used to (still loading
them by hand using modprobe, though I do realize adding them to
/etc/modules is another solution).

There are some missing parts to this puzzle, and I can't conjecture what
they would be.  My assumption is that the kernel modules error message I
got is somehow related - which seems logical.  But I suppose the
possibility exists that something else has gone awry with the dist-upgrade
(as, they say, is wont to happen with Sid).  I suppose I may have to pose
some queries on a Debian list and find out if others have had such
problems with this kernel, or with recent Sid dist-upgrades.  Perhaps
another option would be to apt-get remove the new kernel and apt-get
install it again.

Meantime, the one other thing that differs between the 2.6.5 and 2.6.6
kernels that I've noted is this sit0 thing.  I definitely did not see that
before.  I don't know how or if it could be related in any way.  But, here
is some ifconfig output related to it, in case this may ring any bels for
anyone:

sit0      Link encap:IPv6-in-IPv4
          NOARP  MTU:1480  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 b)  TX bytes:0 (0.0 b)

Puzzled, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
