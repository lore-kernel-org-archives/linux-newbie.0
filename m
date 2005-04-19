From: Ray Olszewski <ray@comarre.com>
Subject: Re: Gutenbrowser Not Opening
Date: Tue, 19 Apr 2005 08:08:30 -0700
Message-ID: <42651EEE.30407@comarre.com>
References: <200504190853.j3J8r8tq000407@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504190853.j3J8r8tq000407@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux <linux-newbie@vger.kernel.org>

Peter H. wrote:
> Hi,
> 
> Slackware 10.1 kernel 2.4.29
> 
> Trying to open Gutenbrowser I get before it aborts:
> 
> Setting up slots.
> init finished.
> QLayout "unnamed" added to Gutenbrowser "unnamed", which already has a layout
> Floating point exception
> 
> with strace ending:
> 
> write(3, "\22\0\n\0\1\0@\1\"\0\0\0\37\0\0\0\10\0\0\0\r\0\0\0gute"..., 4328) = 
> 4328
> ioctl(4, FIONREAD, [1])                 = 0
> --- SIGFPE (Floating point exception) @ 0 (0) ---
> +++ killed by SIGFPE +++
> 
> Any suggestions what to do that gutenbrowser will open again? What means 
> Floating point exception?
> 
> Thanks & regards
> 

This signal can mean any of various sorts of errors with floating point, 
and I **think** it even gets returned for an integer (not floating 
point) divide-by-zero error. In context, I'd guess a divide-by-zero 
error of some sort ... possibly unrelated to the preceding strace output 
you quote (signals are sometimes delayed so could be a response to 
something a bit earlier in the strace output).

As to what to do ... first, round up the usual suspects.

1. Is this a case where gutenbrowser used to run and has stopped 
running? Or is it a program you are installing for the first time (or 
upgrading to a newer version)?

2. If gutenbrowser used to run, what has changed recently in your 
system? (Don't say "nothing", because you've recently posted about 
problems upgrading that Slackware-specific X WM you use, and that could 
have left some debris. If you believe the assurance you got from the 
other list that xmms was the "only" program affected, then you're much 
too trusting ... how the devil can *anyone* know that sort of thing?)

3. What does ldd tell you about gutenbrowser? Check for recent changes 
in any of the libraries that it relies on. (Just on a hunch, be 
especially alert regarding libgcc1.)

4. In my experience, divide-by-zero errors can be a sign of a hardware 
problem (CPU or RAM, caused by heat or a strained power supply). This is 
a bit of a leap based on what you've told us, but consider if you're 
seeing anything else consistent with that interpretation.

5. This is another long shot, but is it possible that your hardware is 
old enough, or odd enough, that the kernel is using floating-point 
emulation? (This is almost unheard of on modern i86 systems, but it is 
still common with some other architectures, like ARM7.)

6. Finally, the obvious question: what version of gutenbrowser are you 
using? The project home page (on Sourceforge) lists a recent new 
version, but apparently only for ARM architectures and with no 
comparably dated or versioned source. The current i86 version is almost 
4 years old, which invites speculation about shared-library concerns.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
