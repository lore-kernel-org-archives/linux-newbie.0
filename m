From: James Miller <jamtat@mailsnare.net>
Subject: Re: kernel 2.6.4 report, further assistance requests
Date: Tue, 13 Apr 2004 21:57:43 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0404132144580.4215@debian-emach>
References: <Pine.LNX.4.58.0404121355350.673@debian-emach> <407B2158.6070702@jpl.nasa.gov>
 <Pine.LNX.4.58.0404122152500.688@debian-emach> <407B7EE3.4000206@comcast.net>
 <Pine.LNX.4.58.0404130954380.1012@debian-emach> <Pine.LNX.4.58.0404131215470.743@debian-emach>
 <Pine.LNX.4.58.0404131814170.4215@debian-emach> <407CA44E.5020900@sancharnet.in>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <407CA44E.5020900@sancharnet.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 14 Apr 2004, joy wrote:

> the modules for the 2.4 style kernels are different from the 2.6 ones
> and I don't think they are
> compatible ,i.e, if they compile on a 2.4 they wouldn't compile on a
> 2.6. better check for a 2.6
> compatible version of vmware. also could you tell me where you can
> download the same?
> I've heard a lot about it and want to see what it's about.

They've issued some patches that are supposed to make compiling for the
2.6.x kernels possible, and I've used them.  make still fails for some
reason (I'm posting to the vmware forum in hopes of getting help with
that).  vmware is available as a 30day trial version from their site (
www.vmware.com ).  It's pricey if you're really considering buying it:
over $300 for end users.  I got an educational discount on mine, or I
wouldn't have bought it.  Were I to do this again, I'd probably try
Win4Lin, which is alot cheaper, because I only need Win98.  If you need
to run something newer, vmware might be your only choice (unless you want
to try more beta-ish stuff like Bochs or maybe Colinux).

> >the 2.6.4 kernel.  echo -e "\a" from the command line gives an extra blank
> >line, as though the system is doing something, but I hear no sound.  I ran
> >
> the system speaker is not governed by alsa. that would be like killing a
> microbe with a road roller actually;-)
> cat your .config if you compiled your own kernel or the
> System.map((?)not sure) and grep for speaker
> and check if it is enabled on your kernel.

Yes, I checked that.  It is marked with "m" in the config file, so can be
loaded as a module.  The solution turned out to be "modprobe pcspkr."  I
suppose I should add that to /etc/modules?  Turned out to be simpler than
I thought, thankfully.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
