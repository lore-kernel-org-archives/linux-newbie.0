From: Jim Nelson <james4765@verizon.net>
Subject: Re: framebuffer console problems
Date: Fri, 22 Oct 2004 16:09:34 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <417968FE.3070405@verizon.net>
References: <Pine.LNX.4.58.0410221108580.1287@debian-emach> <Pine.LNX.4.58.0410221351360.1287@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0410221351360.1287@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:
> Looking over the framebuffer how to again (fairly dated document by now)
> I'm beginning to wonder if maybe my video card doesn't require a special
> framebuffer module.  There, under section 5.6 "Got an ATI card?" they
> mention a particular module--atyfb.  In my initrd, on the other hand, I
> appear to have only the generic vesafb module available.  To test this, I
> suppose my options are: 1) recompile the kernel with built in atyfb
> module; 2) create a new initrd with atyfb in place of vesafb [and 2a)
> enter the correct command for loading that module into menu.lst].  Before
> going to the trouble of either of those (a big distraction considering my
> level of ignorance and the amount of study and experimentation I'd need to
> do for either), I'd just like to ask for an opinion about whether anyone
> thinks I might be on the right track to resolving my problem with not
> being able to get a 1024x768 console by trying one or other of these?
> Feedback, please?
> 
> James
> 

If you are using a 2.6 kernel (and maybe the 2.4), the kernel module for 
the ATI Rage series of graphics systems is aty128fb, not atyfb.  I've 
had problems with vesafb myself, but with really old hardware (Trident 
TGUI 9660 on an old Thinkpad).  With the 2.6 kernel sources, you can use 
"make deb-pkg" to create a .deb of the custom-compiled kernel.  I'm a 
Red Hat/Slackware man myself, so I really can't help you on the Debian side.

If you are always going to use the framebuffer, go ahead and compile it 
into the kernel.  Saves a bit of trouble, and if you don't need modules 
to load for accessing any of the devices necessary for reaching the init 
scripts, you can probably dump the initrd altogether.  It's crucial on 
distro-provided kernels, since they have to support a broad array of 
equipment, but if this is a one-off kernel for your own personal 
equipment, and you don't need modules (i. e. nforce drivers from Nvidia, 
etc.) to access the boot disk, an initrd is not necessary.  None of my 
systems use them.

Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
