From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: RTC Problem?
Date: Wed, 28 May 2003 10:04:15 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030528100415.B201@lnx2.w8mch.ampr.org>
References: <20030526112242.A186@lnx2.w8mch.ampr.org> <5.1.0.14.1.20030526083250.01f26728@celine>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20030526083250.01f26728@celine>; from ray@comarre.com on Mon, May 26, 2003 at 08:42:38AM -0700
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 05-26, Ray Olszewski wrote:
> First, rtc = real time clock. It's a kernel module that supports the device 
> /dev/rtc . I don't have this running on my everyday workstation (and I 
> don't have access this morning to any system where it is running), so I 
> can't give you the details of its operation right now.

		Greetings and thanks for the input: I have that part
now and note that not one of our machines' routines uses /dev/rtc, but
only one reports the modprobe failure..



> To figure out what the kernel error is, look for a module called rtc.o in 
> /lib/modules/whatever_the_path_is_for_your_kernel . This module is not 
> required for basic clock operation, so you may well not have compiled it 
> (especially not with "helter-skelter" patching).

		There is a rtc.c but no rtc.o file.. Searching
Google to see if I could find one for that kernel got me hopelessly
bogged down. <grin> I'm going to try and compile it myself, don't
really know why, but did find one problem in that the directory that
rtc.c listed for two of the includes - was wrong..



> To read more about RTC, turn to kernel documentation. The "Help" choice for 
> RTC, in "make menuconfig" under Character Devices, is one place to find a 
> short sdescription.Or read (also in the kernel source tree) 
> Documentation/rtc.txt .

		OK - good - I found the above and tried to flatten my
learning curve.. I'm a "little" confused about one point however: Are
the object files, with the '.o' suffix, as modules, the same as an
object file created by gcc before linking?? Or - are they .o's in
mame only with much more involved.. Is that a dumb question??
Probably. I note the newer packages have the module 'o' files also
compressed - not to confuse my poor brain. :^)

Appreciate!! 
Hal

> 
> At 11:22 AM 5/26/2003 -0400, Hal MacArgle wrote:
> >Greetings: For some time now I've noted, when booting Slackware8.0 -
> >kernel 2.4.18, that was patched up helter skelter from the original
> >2.4.5, that the boot report lines seem OK with one exception:
> >
> >"Setting system time for hardware clock.
> >modprobe: modprobe: Cant locate module character major 10,135"
> >(None of the above is in dmesg - only during boot."
> >
> >If, after booting, I view /var/log/syslog I find the following:
> >( The 08:33 line only on the original boot and the 10:3X lines on
> >reboot..)
> >----------
> >May 26 08:33:56 lnx2 kernel: Symbol table has incorrect version number.
> >May 26 10:37:50 lnx2 modprobe: modprobe: Can't locate module char-major-10-135
> >May 26 10:37:51 lnx2 rpc.mountd: Caught signal 15, un-registering and 
> >exiting.
> >May 26 10:38:48 lnx2 kernel: Symbol table has incorrect version number.
> >--------------
> >I note that 10, 135 is /dev/rtc and has the proper permissions etc..
> >

> >I'm not familiar with what "Symbol table" means either, so any hints
> >will help. Could it be I have a wayward non 2.4.18 module somewhere
> >that I can't find??
> >
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
