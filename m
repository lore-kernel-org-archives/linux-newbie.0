From: Ray Olszewski <ray@comarre.com>
Subject: Re: CD-ROM settings and hardware resources...
Date: Wed, 23 Oct 2002 12:34:50 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021023122814.0215dac0@celine>
References: <02102315493607.00497@unix.pa3gcu>
 <MSGID_110=3a260=2f1_3db551be@linuxnet>
 <1035315950.22123.76.camel@localhost.localdomain>
 <02102315493607.00497@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035400822.31016.14.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 03:20 PM 10/23/02 -0400, Bryan Simmons wrote:
>The CD-ROM in question is a CD-RW.  The system set it up as /dev/scd0
>which is not accessible from hdparam.  if I turn it into an ide device,
>I will no longer be able to write CDs with it.

The underlying ide device (/dev/hd*) remains accessable to hdparm (NOT 
"hdparam"). You change the DMA setting on the "real" IDE device, not the 
emulated SCSI device. (I'm assuming here that the drive really is an IDE 
drive, and you are using the kernel's ide-scsi driver to "turn it into" a 
scsi device for cdrecord or cdrdao or whatever you use to burn. Details 
matter in troubleshooting discussions.)

>Does anyone know a way around this?  I can't hardly believe that all the
>millions of Linux users have been, and still are, stuck with CD-RWs that
>have to masquerade as SCSI devices.

Believe it. Or take it up with the folks who write the CD burning programs 
(at least the two I named above, anyway).


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
