From: Travis Osterman <travis@wsor.net>
Subject: Re: Multi-kernel in grub
Date: 22 Jul 2003 16:54:46 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1058910886.2992.10.camel@localhost.localdomain>
References: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu>
Reply-To: travis@wsor.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: newbie list <linux-newbie@vger.kernel.org>

I tried to compile my kernel again and here are the results.  I'm really
new to this, and thank you for your patience.

# make dep // no errors
# make clean: // no errors
# make bzImage // below

make[3]: *** No rule to make target
`/usr/src/linux-2.4.20-8/drivers/pci/devlist
.h', needed by `names.o'.  Stop.
make[3]: Leaving directory `/usr/src/linux-2.4.20-8/drivers/pci'
make[2]: *** [first_rule] Error 2
make[2]: Leaving directory `/usr/src/linux-2.4.20-8/drivers/pci'
make[1]: *** [_subdir_pci] Error 2
make[1]: Leaving directory `/usr/src/linux-2.4.20-8/drivers'
make: *** [_dir_drivers] Error 2

# make modules // below

/usr/src/linux-2.4.20-8/include/linux/module.h:187: warning: function
declaration isn't a prototype
/usr/src/linux-2.4.20-8/include/linux/module.h:196:
`try_inc_mod_count_R_ver_str' declared as function returning a function
/usr/src/linux-2.4.20-8/include/linux/module.h:196: warning: parameter
names (without types) in function declaration
make[2]: *** [dummy.o] Error 1
make[2]: Leaving directory `/usr/src/linux-2.4.20-8/drivers/net'
make[1]: *** [_modsubdir_net] Error 2
make[1]: Leaving directory `/usr/src/linux-2.4.20-8/drivers'
make: *** [_mod_drivers] Error 2

# make install // below

make[3]: *** No rule to make target
`/usr/src/linux-2.4.20-8/drivers/pci/devlist.h', needed by `names.o'. 
Stop.
make[3]: Leaving directory `/usr/src/linux-2.4.20-8/drivers/pci'
make[2]: *** [first_rule] Error 2
make[2]: Leaving directory `/usr/src/linux-2.4.20-8/drivers/pci'
make[1]: *** [_subdir_pci] Error 2
make[1]: Leaving directory `/usr/src/linux-2.4.20-8/drivers'
make: *** [_dir_drivers] Error 2

Thanks again.

-- Travis

On Tue, 2003-07-22 at 10:15, Travis wrote:
> I am a recent convert to RH9 and have been trying to compile a kernel to
> allow dual head video support for my matrox g400-tv card.  Here is the
> main tutorial I was following:
> http://www.intel.com/support/platform/pentium4/linux.htm
> 
> I used xconfig , and the compilation process seemed to go fine (no
> errors were display when I got the command prompt back) from running the
> following.
> 
> make dep
> make clean
> make bzImage
> make modules
> 
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
> 
> -- Travis
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-- 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
