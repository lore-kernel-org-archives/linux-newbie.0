From: Ray Olszewski <ray@comarre.com>
Subject: Re: Has anyone burnt a Redhat boot CD?
Date: Mon, 05 Jul 2004 09:18:20 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040705084455.01fb4d28@celine>
References: <Pine.LNX.3.96.1040705101700.2702A-100000@trillian.megadodo
 .umb>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.3.96.1040705101700.2702A-100000@trillian.megadodo
 .umb>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:22 AM 7/5/2004 -0500, Kenneth Stephen wrote:
>Hi,
>
>         I downloaded the iso images for Redhat v9 from ftp.redhat.com and
>burnt CD's with them. I am using xcdroast, and I expected that simply
>burning the iso images would result in the first CD being bootable. That
>didnt work. So I mounted the iso in the loop device and saw that there was
>an isolinux.bin file in the isolinx directory. I re-burnt the CD
>specifying this as the boot image and with the boot.catalog file as the
>boot catalog and specified a no emulation boot. Still no dice - this time
>I get a message about the checksum failure on the boot image. However,
>(1) I've verified that the md5sums of the iso that I downloaded and the
>md5sum provided on the ftp side matched and (2) The md5sum of the
>isolinux.bin on the loop device as well as on the CD that I burnt match
>too. What am I doing wrong?

I can't tell you specifically. I can tell you that I routinely use cdrecord 
(xcdroast is just a frontend to it and other related apps) to burn CDs from 
isos. I haven't burned RH CDs, but I have burned Debian ones, and they boot 
just fine, with no special requirements in the burning. So my initial 
expectation would match yours.

I believe the boot image for your CD is images/bootdisk.img, not 
isolinux/isolinux.bin, though I'm not completely certain of this  ... but 
this part normally gets handled during iso creation (see the man page for 
mkisofs), not during burning ... leavming me a bit puzzled about how you 
are "specifying" this in the burn process and wondering if you are simply 
using the wrong method to burn (treating the iso image as a file to put on 
a CD, rather than as itself an image of a CD, which would probably cause 
xcdroast to invoke mkisofs).

So ... two questions.

First, is the CD that results from your procedure mountable? That is, is 
your problem specifically with booting, or is it really with reading? (And 
am I correct in assuming that you have had no trouble burning *other* iso 
images to mountable -- and bootable(?) -- CDs?) If it is mountable, what do 
you see on it?

Second, what *is* your procedure? That is, what is the underlying 
command-line instruction that is being passed to cdrecord by xcdroast? 
(Since I don't use the xcdroast frontend, I'll probably be unable to 
interpret an answer framed in terms of it, but if that's all you can offer 
here, possibly someone else will be able to respond to it.) Do you get 
anywhere better if you bypass xcdroast and run cdrecord, from a command 
line, in this way:

         cdrecord dev=0,0,0 speed=24 filename.iso

replacing the dev= part with the settings appropriate to your drive, 
setting the speed= part conservatively for your drive, and substituting the 
appropriate *.iso name for your RH image?

Oh, one other ... what is the size of the iso image? Is it possible that 
you need to overburn? (Definitely a long shot. If you are using any of the 
images located in ftp://ftp.redhat.com/pub/redhat/linux/9/en/iso/i386, this 
is not an issue.)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
