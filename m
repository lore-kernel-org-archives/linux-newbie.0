From: Ray Olszewski <ray@comarre.com>
Subject: Re: Change the screen resolution at boot screen
Date: Sat, 18 Sep 2004 14:12:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040918112624.020302f0@celine>
References: <cih4un$tv4$1@sea.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <cih4un$tv4$1@sea.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Ole Martin Handeland <oli@oasenlan.com>, linux-newbie@vger.kernel.org

At 01:08 PM 9/18/2004 +0200, Ole Martin Handeland wrote:
>Hi,
>
>My friend installed linux on his old notebook (dsl or deli, don't 
>remember), and we came up with one problem: his screen could only handle 
>800x600 resolution, but the boot screen used 1024x768 or something. So 
>when the login prompt should show, its way below the screen. (no, the 
>screen doesn't clear before the login prompt.) So, do anyone know how to 
>change this resolution?


Exactly how to fix this depends on unreported details.

As a general matter, your friend is running a Linux install that switches 
to the console framebuffer (vesafb - the one with the little Tux at the 
top, initially) after the kernel boots, and (I'm guessing) switches to 
something like a 40-line mode. But your friend's laptop doesn't support the 
standard VGA-mode switching. This is all a guess, of course ... I'm just 
trying to make clear what I interpret your sketchy description to be about.

One possible fix is at the lilo prompt, if your friend can intervene there. 
Try adding "vga=NORMAL" (or maybe "vga=0x301") and see if that helps. One 
of these should get you to 24-line (640x480) mode.

If not, and he or you can somehow manage to login, you can edit 
/etc/lilo.conf to add the appropriate vga= call to the default lilo boot. 
(Then run the Linux app lilo to update the lilo booter.)

The long term solution is probably not to use the framebuffer. That might 
mean changing kernels, if this feature is compiled in, or stopping the 
kernel from loading the vesafb.o module during boot/init. Can't be more 
specific without knowing a lot more about the specifics of the Linux 
installation.

In general, read up on this in the kernel documentation, at 
/[path_to_kernel_source]/Documentation/fb/vesafb.txt .

If you post a followup question, please provide specifics about the system.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
