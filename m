From: James Miller <jamtat@mailsnare.net>
Subject: Re: framebuffer console problems
Date: Fri, 22 Oct 2004 16:14:00 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410221604590.1287@debian-emach>
References: <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221351360.1287@debian-emach> <417968FE.3070405@verizon.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <417968FE.3070405@verizon.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 22 Oct 2004, Jim Nelson wrote:

> If you are using a 2.6 kernel (and maybe the 2.4), the kernel module for
> the ATI Rage series of graphics systems is aty128fb, not atyfb.  I've
> had problems with vesafb myself, but with really old hardware (Trident
> TGUI 9660 on an old Thinkpad).

Thanks for your response, Jim.  Not sure if you recall what sort of card I
mentioned, but it's an older, onboard one with low memory.  According to
an infomrational page I found at
www.sharplabs.com:8668/space/video+boot+arguments , I should be using the
atyfb module (and they do list the aty128fb there for other ATI Rage
models).  So, do you still think I"m using the wrong module?  I really
don't know.  I consider myself a total neophyte at this

> If you are always going to use the framebuffer, go ahead and compile it
> into the kernel.  Saves a bit of trouble, and if you don't need modules
> to load for accessing any of the devices necessary for reaching the init
> scripts, you can probably dump the initrd altogether.  It's crucial on
> distro-provided kernels, since they have to support a broad array of
> equipment, but if this is a one-off kernel for your own personal
> equipment, and you don't need modules (i. e. nforce drivers from Nvidia,
> etc.) to access the boot disk, an initrd is not necessary.  None of my
> systems use them.

Yes, I have in mind to compile myself a kernel at some point.  Just trying
to defer it until I have some more basic problems solved.  But they seem
to appear at least as fast as I can solve them :).

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
