From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: Free BSD 5.0 - Installation Error
Date: Sat, 3 May 2003 12:44:43 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAKEDFCKAA.Riley@Williams.Name>
References: <678FF08CF467D4118DA400508BD9365706B43BC8@mail02.adt1.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <678FF08CF467D4118DA400508BD9365706B43BC8@mail02.adt1.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Linovitz, Scott" <slinovitz@adt.com>
Cc: andre@linux-ide.org, linux-newbie@vger.kernel.org

Hi Scott, Andre.

Andre: Can you verify that I've explained this correctly? You know EIDE
       drives better than I do.

Unfortunately, this is a list for newbies to the Linux operating system,
not the FreeBSD operating system. Most people on here (myself included)
have no experience of FreeBSD and are thus unable to offer any advice.
You may wish to take this to a list specialising in the FreeBSD operating
system instead, as you will probably get some sensible answers there.

However, part of this is a hardware issue and I can comment on that aspect
thereof as it doesn't change based on the OS. As you can see, I've asked
Andre to check me on this as he's rather better than I am at IDE issues.

 > Any help will be appreciated, thanks in advance. Scott.
 >
 > Hardware relevant to problem
 > **********************************
 > PC = Compaq Deskpro EN, Series SFF
 > CPU = Celeron 466, 810 Chipset
 > Hard Drive = Western Digital 40gig (Model #WD400BB)
 >
 > Problem
 > **********
 > Note: If I install Free BSD v4.7 from CD on the exact same system I don't
 > get the following error.
 >
 >
 > While installing Free BSD v5 from CD I get the following error when the
 > SysInstall utility probes the hard disk:
 >
 > ".....Warning: a geometry of 77504/16/63 for ad0 is incorrect.......enter
 > what your BIOS thinks the geometry is"
 >
 > The BIOS will only show the hard disk as 40, no additional information.
 >
 > SysInstall will still let the installation continue and the fdisk window
 > appears and reports a hard drive geometry of:
 >
 > cyls = 4,863 / heads = 255 / sectors = 63
 >
 > The actual hard disk geometry from the Western Digital Website is:
 >
 > cyls = 16,383 / heads = 16 / sectors-tracks = 63

According to the figures given, your drive has the following capacities:

SYSINS:  77,504 x  16 x 63  = 78,124,032 Sectors = 39,999,504,384 Bytes
FDISK:    4,863 x 255 x 63  = 78,124,095 Sectors = 39,999,536,640 Bytes

WEB:     16,383 x  16 x 63  = 16,514,064 Sectors =  8,455,200,768 Bytes

The web figures are those for the maximum values that the original EIDE
implementation could handle, and is the so-called "8G limit" for suchlike
systems. It can safely be ignored as your system clearly handles larger
drives without worrying about this limit.

SysInstall is reporting the raw parameters that the drive presents when not
asked to offer translations, and FDISK is offering the translation mode.
Both figures would be described as being 40G in advertising blurb, and
neither reflects the real layout of the disk as that can't be described in
a simple CHS triplet. However, the SysInstall figures include a cylinder
count larger than 65,535 which could easily cause problems elsewhere, so
are not safe to use. Since the FDISK figures give a slightly higher
capacity, that isn't a problem.

 > I'm trying to understand the issues/interactions between the OS
 > and the BIOS that may be present. Can anybody help?

The basic issues are these:

 1. The BIOS asks the drive what its parameters are.

 2. The drive reports THREE sets of parameters, one with 16 heads (NORMAL),
    one with 32 heads (LARGE) and one with 255 heads (LBA). These always
    get reported in that order.

 3. The BIOS is clearly taking the LBA set and recording those.

 4. The SysInstall utility is presumably also asking the drive what its
    parameters are, but is assuming it will only receive one set in reply.
    As a result, it is only seeing the NORMAL set, and is complaining
    because the cylinders figure is larger than the 65,535 cylinder limit
    that it is expecting to see.

 5. FDISK is presumably also asking the drive what its parameters are, and
    is aware that it may receive more than one answer. It is correctly
    making use of one of the translated sets, defaulting to the LBA set.

The basic problem for you would thus be a bug in the SysInstall utility,
and it needs teaching that it can receive multiple sets of parameters for
a single drive size request. That's when it gets outside my knowledge as,
like I stated above, I know nada about FreeBSD.

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.

---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.476 / Virus Database: 273 - Release Date: 24-Apr-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
