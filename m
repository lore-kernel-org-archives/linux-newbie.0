From: Ray Olszewski <ray@comarre.com>
Subject: Re: problem mounting cdrom
Date: Sun, 18 Aug 2002 09:41:38 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020818093129.020efc80@celine>
References: <34bd7234ae08.34ae0834bd72@homemail.nyu.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <34bd7234ae08.34ae0834bd72@homemail.nyu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Anshuman Singh Rawat <asr245@nyu.edu>, linux-newbie@vger.kernel.org

At 12:22 PM 8/18/02 -0400, Anshuman Singh Rawat wrote:
>hi,
>recently, installed the kernel sources (v2.4.18) and compiled them to 
>create my own kernel.
>Everything seems to be fine except that i can no longer mount my cdrom. 
>The mount command returns an error "hdc driver not found.". i had enabled 
>'Loadable kernel module support' during configuration.
>I thought this mite have soemthing to do with the problem, so i tried with 
>that option disabled, but the error didn't change.
>what am i doing wrong?

Your description is a bit too sketchy for me to be sure ... but I would 
*guess* from what you wrote that you did not compile ide-cd either into the 
kernel or as a module. Or possibly you are missing support for the iso9660 
filesystem.

To fix the first, in kernel configuration, go to "IDE, ATA and ATAPI Block 
devices" and select "Include IDE/ATAPI CDROM support".

To fix the second, go to "File Systems" and select "ISO 9660 CDROM file 
system support".

(The directions above are for the "make menuconfig" method; if you use one 
of the others, adapt as needed.)

If you did compile these choices as modules, then for some reason your 
system is not loading them. Module loading methods vary a bit from distro 
to distro, so I can't help you here, since you don't say what distro you 
are using. If you think they are present but not loading, test this (as 
root) by modprobe'ing the relevant module names. (I don't know what they 
are, since I compile these options directly into my kernels, but if you 
look around in /lib/modules/2.4.18/kernel/drivers, you should find them 
without too much trouble.)

There are some hidden assumptions in my suggestions, such as that hdc is 
the right /dev device for your CD and that it is standard ATAPI. The need 
to make such assumptions follows from the sketchy nature of your description.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
