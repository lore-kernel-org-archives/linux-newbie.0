From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: switching to debian (... and installing the NVIDIA  GeForce4)
Date: Thu, 25 Mar 2004 21:20:39 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403252120.39439.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.44.0403250945300.26064-100000@legolas.personal.engin.umich.edu> <5.1.0.14.1.20040325082305.01f8d7d0@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040325082305.01f8d7d0@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Thursday 25 March 2004 17:28, Ray Olszewski wrote:
> >No No No, /usr/src/kernel-source-2.4.18/ is NOT what you want i can assure
> >you.
> >
> >When you untarred the source a directory called linux-2.4.18 should have
> > been created you then need to create a symlink to "linux" for my example
> > underneat, so lets start again.
>
> Actually, Richard, this is just a Debian naming convention that you are
> unfamiliar with. Here, for example, is a relevant portion of my /usr/src
> directory:

If you retrive the offical kernel source from www.kernel.org and use 'tar' to 
extracht the archive then a directory called linux-2.4.18 is created that is 
a linux FAQ of cource if one retrives some or other distro RPM then your on 
your own. The nvidia installer wants to find a /usr/src/linux or 
/lib/modules/'uname -r'/build
.
I am sure i dont need to give you Ray an example but for others heres what i 
have.

In /usr/src
linux-2.4.22-ac4/
linux -> linux-2.4.22-ac4/

So that means i have /usr/src/linux pointing to /usr/src/linux-2.4.22-ac4

Uname -r shows 2.4.22-ac4-2

if we look at /lib/modules we see;

build -> /usr/src/linux-2.4.22-ac4/

My Makefile has.

EXTRAVERSION = -ac4-2

Works like a charm.

cat /proc/driver/version
pa3gcu@localhost:/lib/modules/2.4.22-ac4-2$ cat /proc/driver/nvidia/version
NVRM version: NVIDIA Linux x86 NVIDIA Kernel Module  1.0-5336  Wed Jan 14 
18:29:26 PST 2004
GCC version:  gcc version 3.2.3

cat: /proc/driver/nvidia/cards/: Is a directory
pa3gcu@localhost:/lib/modules/2.4.22-ac4-2$ cat /proc/driver/nvidia/cards/0
Model:           GeForce4 Ti 4200
IRQ:             16
Video BIOS:      04.25.00.30.00
Card Type:       AGP

This is my slackware system, i can assure you my suse 9 system looks the same.

Yes one can do it in otherways i suppose, i say do it my way because i know it 
works period.

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
