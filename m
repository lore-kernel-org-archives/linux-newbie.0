From: Ray Olszewski <ray@comarre.com>
Subject: Re: olivetti p100 with onboard ATI Mach64
Date: Wed, 30 Apr 2003 11:54:53 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030430114653.01f79408@celine>
References: <3EB00CFD.5040100@arrakis.es>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EB00CFD.5040100@arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

See below.

At 07:50 PM 4/30/2003 +0200, Andrew Langdon-Davies wrote:
>Hello,
>I have two machines as described above and both give me exactly the same 
>problem. Soon after booting from a Linux floppy the screen goes blank. In 
>the case of Tomsrtbt this happens just after the screen for choosing a 
>video mode.
>The manual describes the video controller as:
>-Component ATI Mach64-CT with 1 MB or 2 MB of video memory, integrated on 
>the motherboard, and the DPMS, DDC 1 features
>-Board IN2052 with video connector output.
>Is there a solution to this?

I'm unfamiliar with your hardware, and I can't recall ever seeing a system 
that did not boot/init successfully to a console prompt. So I'm guessing 
here quite a bit.

You mention testing with tomsrtbt. As I recall, it uses a framebuffer 
device to let it set the video mode. You don't say what you have tested 
with other than tomsrtbt. So I don't know if you've tried any distro that 
does not default to using the framebuffer (in general, the small penguin 
picture on the boot screen indicates use of the framebuffer).

Offhand, I don't know whether any of the full-strength distros do not use 
the framebuffer by default, particularly in their installers (since you 
talk about testing with floppies). Offhand, I know that the router-oriented 
LEAF distros (leaf.sourceforge.net) do not use it, and probably other 
floppy-based distros (trinux? maybe) also omit this. So you might try one 
of them to see if this is your problem. If it is, you can easily compile a 
custom kernel that leaves out framebuffer support, assuming you are working 
toward a hard-disk install.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
