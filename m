From: Amin <raihan@citech-bd.com>
Subject: Re: /dev/cdrom is not a valid block device?
Date: Fri, 4 Apr 2003 10:45:16 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030404044516.GA866@localhost.localdomain>
References: <20030403123500.GA749@localhost.localdomain> <5.1.0.14.1.20030403082113.01e99628@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20030403082113.01e99628@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Cc: linux-newbie@vger.kernel.org

On Thu, Apr 03, 2003 at 08:33:04AM -0800, Ray Olszewski
wrote:

> The most likely cause is that you omitted some kernel
> driver needed to access the device when you recompiled
> your kernel.

Ray, that was it exactly.  I did indeed somehow manage to
leave out support for my CD-ROM drive during the creation of
the kernel configuration file.  I guess this just goes to
show that we have to be very careful when doing that.  The
option I think I left out by mistake was ``ATA/IDE/MFM/RLL
support ---> IDE, ATA and ATAPI Block devices ---> Include
IDE/ATAPI CDROM support''.

Anyway, I recompiled again, making doubly sure that
everything was in order this time.  I had previously gone to
the CDROM-HOWTO, as Richard suggested, and decided that
recompilation was the first thing to do.

Barring a few hitches, I got the new kernel working, and now
I've got CD-ROM support as well.  Thanks, everybody!

Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
