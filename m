From: Peter <heisspf@skyinet.net>
Subject: Re: dma turned off
Date: Thu, 11 Nov 2004 15:33:17 -0500
Message-ID: <20041111153317.41d12e62@Knoppix>
References: <20041111031327.278F03F57C@heisspf>
	<4192EAD8.3070400@verizon.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4192EAD8.3070400@verizon.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jim Nelson <james4765@verizon.net>
Cc: linux <linux-newbie@vger.kernel.org>

Thanks Jim!

On Wed, 10 Nov 2004 23:30:16 -0500
Jim Nelson <james4765@verizon.net> wrote:

> Peter H. wrote:
> > Hi,
> > 
> > Slackware 10
> > 
> > When I switch to kernel 2.6.7 I get the following error message on boot:
> > 
> >  * Warning: The dma on your hard drive is turned off. *
> >  * This may really slow down the fsck process. *
> > 
> > Apparently with the command "hdparm -d /dev/hda" dma is turned on.
> > 
> > Where in /etc/rc.d if that is the place do I put this command?
> > 
> > However, giving the command from the console as root after booting I get:
> > 
> > setting using_dma to 1 (on)
> >  HDIO_SET_DMA failed: Operation not permitted
> >  using_dma    =  0 (off)
> > 
> > How to resolve?
> > 
> > Thanks & regards
> 
> What kind of hard drive and IDE chipset does it have?  I know some drives were 
> recently added to a no-DMA blacklist for behaving badly.  Normally, dma is 
> supposed to be enabled by default, and only disabled when a known-bad hard drive 
> or IDE controller is found.
> 
hdparm -i /dev/hda

 Model=Maxtor 2F040L0, FwRev=VAM51JJ0, SerialNo=F1J91XNE
 Config={ Fixed }
 RawCHS=16383/16/63, TrkSize=0, SectSize=0, ECCbytes=57
 BuffType=DualPortCache, BuffSize=2048kB, MaxMultSect=16, MultSect=16
 CurCHS=4047/16/255, CurSects=16511760, LBA=yes, LBAsects=80293248
 IORDY=on/off, tPIO={min:120,w/IORDY:120}, tDMA={min:120,rec:120}
 PIO modes:  pio0 pio1 pio2 pio3 pio4 
 DMA modes:  mdma0 mdma1 mdma2 
 UDMA modes: udma0 udma1 udma2 udma3 udma4 udma5 *udma6 
 AdvancedPM=yes: disabled (255) WriteCache=enabled
 Drive conforms to: (null): 

I think it is kernel related since with kernel 2.4.26 in slackware I do not get those error messages neither in Fedora Core2 with kernel 2.6.5.... on the same HD.

Regards

-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
