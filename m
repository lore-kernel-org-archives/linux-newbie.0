From: Ray Olszewski <ray@comarre.com>
Subject: Re: Installation of sources
Date: Sun, 21 Jul 2002 09:48:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020721093953.02197c80@celine>
References: <772267a00d.7a00d77226@homemail.nyu.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <772267a00d.7a00d77226@homemail.nyu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Anshuman Singh Rawat <asr245@nyu.edu>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

At 12:34 PM 7/21/02 -0400, Anshuman Singh Rawat wrote:
>Does the files valhalla-SRPMS-disc1.iso/valhalla-SRPMS-disc2.iso
>contain the source code?

Almost surely yes. SRPM is the standard RH code for Source RPM..

>If yes, then do we have to burn them to cd as
>iamge file and boot from that cdrom to install them, as done for
>installing linux?

No. You don't BOOT an SRPM CD. You just mount it and get the SRPMs you 
need. (In my experience, people don't install ALL the source on a working 
Linux system. When they need a particular package's source, they just 
install that. YMMV, though.)

Burning a set of CDs and mounting them is one way to do this. Another is to 
use the loopback device to mount the iso image as a filesystem without 
actually burning it to a CD.  Which is better for you depends on your level 
of expertise, the hardware on the Linux system itself (how fast is its CD 
drive? how big is its hard disk?), and probably other considerations that 
don't come at once to mind.

BTW, in discussing source, I've been thinking in terms of source for the 
applications. Kernel source is usually handled differently -- it is almost 
invariably included on the binary-distributions disks, no doubt because 
custom kernel compiles are about fifty times as common as recompiling any 
*single* other source package. For these, look on your RH disks for 
packages with names like kernel-source-2.4.XX.rpm (replace XX with the 
appropriate number for whatever kernel version RH distributes).


>----- Original Message -----
[old stuff deleted]


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
