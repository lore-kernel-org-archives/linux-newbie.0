From: Adwin <fox@sby.centrin.net.id>
Subject: a trouble with OpenGL
Date: Mon, 16 Sep 2002 09:11:35 +0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209160910.49335.fox@sby.centrin.net.id>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: Learn-linux@yahoogroups.com

hello.

	I am using Mandrake 8.2 with KDE 3.02. Every time I run a qt program (even it 
is a helloworld) from my console, it always display "Loading Required 
libGL.so.1.3.401" on console. The program run as usually.
I have been checked my /usr/X11R6/lib/ and I can found a libGL.so.1.3.401. 
I have been try to make a link (ln -s libGL.so.1.3.401 libGL.so), and it still 
doesn't work.

I have another problem, I tried to install NVIDIA graphic driver for Linux 
(driver for : RivaTNT2). The drivers (rpm)  that I installed are :
1. NVIDIA_GLX-1.0-3123.i386.rpm (GLX)
2. NVIDIA_kernel-1.0-3123.mdk82up.i586.rpm ( kernel driver)
After I restart my X Server, now I completly cannot run any openGL application 
on Linux. It always said : "  OpenGL not supported " 

I checked on /usr/X11R6/lib again, and I found that 
all libGL* was renamed become 
xxx.libGL.so.1.2.RPMSAVE*
xxx.libGL.so.1.3.401.RPMSAVE*
xxx.libGL.so.x.RPMSAVE*
xxx.libGL.so.1.0.RPMSAVE*

What should I do to make my system work well again (especially OpenGL)? 


thxs 
adwin

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
