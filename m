From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: RE: RedHat 8
Date: 23 Oct 2002 14:44:07 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035380647.1920.128.camel@zebra.vil.ite.mee.com>
References: <003601c27a94$8c75e400$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003601c27a94$8c75e400$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

Surprisingly, it works ok. It's not quite as fast as a real system, but
it is certainly handy for testing the functionality of stuff.

I _have_ done this on a P3-500 with 256M Ram and some disk, but it's not
_really_ usable with less than a 1GHz CPU and 512M Ram. The memory is
the key, since you have to dedicate a chunk of memory to the virtual
machine which then can't be used by anything outside the VM. You want to
make sure it has enough memory not to need to swap. Since you  probably
want to give at least 128M to your VM, it follows that you must have at
least 256M to keep your real system going as well. If you are going to
do anything interesting, you'll probably need 512M.

My current workstation on which I daily use Windows 2000 in a virtual
machine is a Pentium 4 1.9GHz with 512MB RAM and an IDE Hard disk. (It's
a DELL Precision 340, if you're interested). I'm shortly hoping to get s
dual Athlon system (as part of a trial we are doing) which will, I
think, cope even better with the virtual machine concept - one CPU will
look after the VM while the other looks after the real one.

Incidentally, you need a fair amount of hard disk to do this; it _is_
possible to share space, but it's much more reliable to give each VM
it's own local hard drive space, which is actually a virtual hard disk
-  it's really just a big file on your host machines file system.

The best VM I have found so far is called VMWare (www.vmware.com). It's
not cheap ($300 or so for a license) but one license covers as many
virtual machines as you want to run on your PC. I currently have three
VMs set up on mine - one running Win98, one running Win2k and one for
messing around with Linux builds.  I don't usually run more than one at
a time, though - that really would hammer the system!

Inside the VM, you can run pretty much any O/S that runs on a normal PC
- from DOS through Windows 3.x, 9.x, NT, 2k, XP, NET to Linux, BSD, and
Novel. You can even try others, and they sometimes work, even although
not directly supported by VMWare, because VMWare emulates a real PC for
the software; Windows has no idea that it's running in a window under
linux.

VMWare doesn't support Joysticks, though, and it doesn't often work well
with sound - at least, not in the places I have tried it.

Paul.



On Wed, 2002-10-23 at 14:03, Paul Kraus wrote:
> What kind of system do you need to be able to run a full Linux
> distribution including X in a virtual machine? It seems like the
> overhead would kill you.
> 
> -----Original Message-----
> From: linux-newbie-owner@vger.kernel.org
> [mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Paul Furness
> Sent: Wednesday, October 23, 2002 8:56 AM
> To: linux-newbie@vger.kernel.org
> Subject: Re: RedHat 8
> 
> 
> > What does everyone think of RedHat 8.
> > 
> 
> I have negative feelings about it.
> 
> I nuked my workstation and installed RH8.0 from scratch. The
> installation was a lot nicer than previous versions, but once it had
> installed I found that, for me at least, there was a lot missing. The
> window manager had changed again (I'm not entirely sure why). Lots of
> apps seemed to be missing, and the impression I got was that a lot of
> multimedia stuff particularly had been removed from the default set up.
> I did a custom install and still found it lacking a lot of nice
> multi-media stuff.
> 
> On the flip side, Gnome 2 is nice, and definitely performs better on my
> workstation that 1.4. OpenOffice.org 1.0.1 ships with it as well, which
> is nice, and the icons look lovely.
> 
> I struggled against RH8 for about 3 days before giving up, wiping my
> hard disk, and putting 7.3 back on here. That's not to say that RH8 is
> no good, and it could be that I was just expecting it to behave in a
> different way. I had only minor gripes, really, but in my job of
> supporting everyone else in the company, I couldn't really afford to be
> messing around with my workstation for hours.
> 
> If you aren't particularly used to previous versions of Red Hat as a
> desktop O/S, you'll probably not find much fault with Red Hat 8.
> Personally, I felt (possibly incorrectly) that the customisations which
> I likes were not available, so I stopped using it.
> 
> I fully intend to build a second machine (or probably a VMWare virtual
> machine) using 8 to give it a proper, fair hearing.
> 
> Of course, other people may agree with me, so I might not be completely
> wrong... :)
> 
> Paul.
> 
> 
> -- 
> Paul Furness
> 
> Systems Manager
> 
> 2+2=5 for extremely large values of 2.
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie"
> in the body of a message to majordomo@vger.kernel.org More majordomo
> info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

2+2=5 for extremely large values of 2.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
