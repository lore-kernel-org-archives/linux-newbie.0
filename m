From: Adam Luchjenbroers <adam@luchjenbroers.com>
Subject: Problems installing nVidia drivers
Date: Fri, 19 Jul 2002 21:24:04 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207192124.04363.adam@luchjenbroers.com>
Reply-To: adam@luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

When I start up X using the nVidia drivers I get a blank screen and the 
machine locks hard.

I'll start off by giving the relevant hardware and software configuration 
information.

Hardware:
Soltek SL-75DRV5 Mainboard
Athlon 900Mhz CPU
Winfast GeForce DDR 256 (AGP)

Software
Linux Mandrake 8.1
Kernel 2.4.18 (compiled from kernels.org source tree, unpatched)
XFree 4.1.0
nVidia Kernel module + GLX version 1.0-2960

Because I have a non standard kernel I have to download the driver 'source', 
which is a few C code and header files plus a chunk of pre-compiled object 
code that is the real driver.

I've built it using both

# make

and

# make SYSINCLUDE=/usr/src/linux-2.4.18

and the problem persists.

(GLX has also been compiled).

Using the nv driver I get no problems but I also don't get the 3d performance 
their drivers offer.

Analysis of the /var/log/XFree86.0.log file shows that it stops immediatly 
after loading the PCI module.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
