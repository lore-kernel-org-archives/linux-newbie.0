From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to mount CD-ROM?
Date: Thu, 31 Oct 2002 08:05:56 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021031075555.020ce520@celine>
References: <5.1.0.14.1.20021030075115.020ef7a0@celine>
 <5.1.0.14.1.20021029083056.0215aec0@celine>
 <5.1.0.14.1.20021030075115.020ef7a0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021031115622.E56C8759E5@smtp.orcon.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:29 AM 11/1/02 +1300, cr wrote:
>[...]

>I don't have enough info about your setup (kernel details,
> > mostly) to know why you are getting ghe "unresolved symbol" errors, but the
> > usual reasons are kernel-version mismatch or missing dependency. See what
> > effect "modprobe sr_mod" has.
>
>Same list of four   "unresolved symbol" errors, then
>"insmod /lib/modules/2.4.7-10/kernel/drivers/scsi/sr_mod.o  failed"
>
>The module's there in /lib/....    , I looked.

Yes, of course it is. The messages you are seeing say that some external 
function calls *in* the module cannot be resolved.

Usually this occurs because some other module that the one you are trying 
to load provides the missing functionality; modprobe is supposed to handle 
this for you (by consulting modules.dep and loading anything that is 
needed). After the unsuccessful modprobe, what does "lsmod" tell you about 
what is loaded? Is the module scsi_mod loaded, and what does the output say 
about what other modules are using it (the stuff in [] after the size)?

The other reason this occurs is because the module was compiled for a 
different kernel than the one loaded. Did you compile (or otherwise change) 
your kernel? If so, did you also compile (or otherwise change) modules, 
including sr_mod specifically?

> > >X-cd-roast seems to work quite happily without it, though.
> >
> > That's because it accesses the device by (pseudo-)LUN, not through the
> > block device /dev/scd0.
>
>OK, so it's a useful confirmation that the hardware's all working, but that's
>all.   Though it certainly does seem to need ide-scsi to be present.

Yes. A LUN is a scsi attribute, so you need ide-scsi to use it.

>How does one find what modules are working - does  lsmod   list them all?

Yes.

>Is it possible to 'switch off'  modules once installed?   It occurs to me I
>could switch off  ide-scsi and sg and see if I can get my  IDE  CD-ROM
>reading back.

Well, you can remove modules with "rmmod". I don't know how that interacts 
with the lilo.conf settings that tell the kernel to use ide-scsi emulation 
for an IDE device.




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
