From: Ray Olszewski <ray@comarre.com>
Subject: Re: RTC Problem?
Date: Wed, 28 May 2003 08:27:02 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030528081628.01eb4b08@celine>
References: <5.1.0.14.1.20030526083250.01f26728@celine>
 <20030526112242.A186@lnx2.w8mch.ampr.org>
 <5.1.0.14.1.20030526083250.01f26728@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030528100415.B201@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

See below.

At 10:04 AM 5/28/2003 -0400, Hal MacArgle wrote:
[...]
> > To figure out what the kernel error is, look for a module called rtc.o in
> > /lib/modules/whatever_the_path_is_for_your_kernel . This module is not
> > required for basic clock operation, so you may well not have compiled it
> > (especially not with "helter-skelter" patching).
>
>                 There is a rtc.c but no rtc.o file.. Searching
>Google to see if I could find one for that kernel got me hopelessly
>bogged down. <grin> I'm going to try and compile it myself, don't
>really know why, but did find one problem in that the directory that
>rtc.c listed for two of the includes - was wrong..

This path -- /lib/modules/whatever_the_path_is_for_your_kernel -- should 
never contain any *.c files. They are source. You want compiler output -- 
*.o files -- ready for linking into the kernel. I don't know how source 
files eneded up here, but they should only be in your kernel source tree 
(usually /usr/src/linux).

SInce this is a kernel you compiled yourself, Google is not the place to 
look for pre-compiled modules for it. Your kernel source tree is. If there 
is not already a comp;iled rtc.o there, then you'll have to compile the 
module. Select RTC (as a module) in the Character Devices section, save the 
.config file, then do "make modules" followed by "make modules_install" 
(assuming you've still got the source tree set up from compiling your 
existing kernel).

The "includes" problem you mention may be preventing the module from 
compiling. I can't comment on that without details ... both the actual 
errors you are seeing and basic info (what distro, what kernel source tree, 
whether you followed the procedure for compiling specified in the kernel 
docs ...).

[...]
>                 OK - good - I found the above and tried to flatten my
>learning curve.. I'm a "little" confused about one point however: Are
>the object files, with the '.o' suffix, as modules, the same as an
>object file created by gcc before linking?? Or - are they .o's in
>mame only with much more involved.. Is that a dumb question??
>Probably. I note the newer packages have the module 'o' files also
>compressed - not to confuse my poor brain. :^)

Well, they have to work as kernel modules. I've never written a kernel 
module, so I can't help you with what's involved there. At the compiler 
level, I believe they are the same as any other .o file. At another level, 
they have to be written in a way that will let them linmk to the kernel 
properly. I haven't noticed the compressed module files you refer to so 
cannot help you there either.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
