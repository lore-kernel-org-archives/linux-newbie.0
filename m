From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Multi-kernel in grub
Date: Tue, 22 Jul 2003 18:11:13 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307221811.13462.pa3gcu@zeelandnet.nl>
References: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: travis@wsor.net, linux-newbie@vger.kernel.org

On Tuesday 22 July 2003 17:15, Travis wrote:

> My problem came at "Next, you have to copy the appropriate files so that
> linux can boot from the new kernel."  I copied the vmlinuz image created
> by the compilation to /boot/vmlinuz-matrox.  I then edited grub's conf
> file by copy-and-pasting my current RH boot section and simply changing
> the label and pointing the vmlinuz-matrox as the kernel to load.
>
> When booting I got an error very quickly.  I have been searching for a
> grub multi-boot kernel tutorial and have read most of the applicable
> grub user-guide, but to no avail.  If someone could point out a good
> tutorial or give a few things to try, I would appreciate it.  Thanks in
> advance.

It would have been a "very" good idea to have mentioned the error you got or 
are getting.
The way you word things i get the impression the kernel starts to boot, that 
means grub did its work and you forgot some or other important kernel compile 
option, just what was the error message.???

BTW; I'm no grub expert, once again i read it to be a kernel compile problem 
and not a bootloader problem. I've been wrong before however with the error 
we can go from there.


> -- Travis

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
