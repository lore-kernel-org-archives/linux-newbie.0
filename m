From: Ray Olszewski <ray@comarre.com>
Subject: Re: Nvidia graphics driver doesn't work
Date: Sun, 24 Aug 2003 08:19:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030824075952.067aeaa0@celine>
References: <20030824133013.51204.qmail@web10710.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030824133013.51204.qmail@web10710.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

You need to be a bit more clear about what you did (after the first time, 
when it worked). Something is different, and I can't tell what based on 
what you wrote.

1. You write about "reinstall the driver". The proprietary nvidia X support 
includes both (a) a kernel module (a custom framebuffer, I think) called 
"nvidia" and (b) a proprietary X driver also called "nvidia". Are you 
installing *both* of them?

2. After you recompile the kernel, you need to recompile the nvidia driver 
(the kernel module, that is). Are you doing so? (The process you call 
"installed" in your first paragraph below handles this compilation.)

3. As Richard suggested, you may have left out of your custom kernel some 
support that the nvidia module needs. I'd expect depmod to pick this up, 
though, so I don't know what you suggest here. Oh, one thought ... you 
mention that you are using NvAgp. In compiling the kernel, did you than NOT 
compile in support for AGPGART? (See the nVidia driver's README file for 
details here.)

4. Since you reinstalled Woody from scratch, you may have selected some 
different X settings. Check this. (In particular, check if your system is 
defaulting to 800x600 -- for some reason I've never understood, a lot of 
otherwise fine card/display combinations show errors at that setting.) You 
might want to post your complete "Device", "Monitor", and "Screen" sections 
from XF86Config-4.

If you post again, please give a more exact description of the visible 
problem than "a scrambled nvidia logo, (not just scrambled but it's 
wrecked)" -- I can't envision what you are seeing from this description. 
Also mention what display you are using -- is this a regular monitor, or 
are you using an nVidia card that has TV out?

As I recall, the nVidia logo comes up when the kernel module loads, not 
when X starts ... so this symptom suggests a problem at that earlier stage 
of the process, not one that can be diagnosed through X. (But my memory may 
be wrong -- I haven't worked at the console of my nVidia-card system in a 
couple of months.)

At 06:30 AM 8/24/2003 -0700, Jesse Armand wrote:
>I use Debian Woody 3.0
>I have downloaded the nvidia graphics driver version
>1.0-4496 from
>nvidia.com,
>i have installed it succesfully, with sh
>(filename).run
>--kernel-include-path (my kernel source path).
>
>Before it's working okay, the X-window starts
>successfully.
>but then the other time, I reformat my hard-disk,
>reinstall my debian
>woody, recompile kernel 2.4.18 and reinstall my nvidia
>driver, the
>problems happen.
>
>the x-window starts with a scrambled nvidia logo, (not
>just scrambled
>but it's wrecked), and the x-window won't start, and
>keeps idle until i
>restart with ctrl+alt+del,
>
>I check the XFree86.0.log, and after
>loading the nvidia glx extension
>there is a signal 11 error (i suppose it happens
>because i press
>ctrl+alt+del)
>besides that there is no problem
>
>i have configured XF86Config-4 according to readme
>file,
>adding Option "NvAgp" "1" on the devices section line,
>and i read the log files, the nvagp were loaded
>successfully
>
>so what is the problem actually ??,
>this is very weird, I don't do any system change, all
>i'm doing is
>reinstalling debian, recompile kernel and reinstall
>the driver, why is the
>situation could be differ ?
>
>by the way i'm using GeForce4 Ti4200-8X and ASUS
>A7N8X-X with nforce2
>chipset
>
>so help me pls ?




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
