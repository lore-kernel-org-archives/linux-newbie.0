From: Hal MacArgle <haltec@kvinet.com>
Subject: Slack9.0 and Loadlin???
Date: Thu, 19 Aug 2004 14:45:47 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040819184547.GA481@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Anyone loading a Slack9.0 kernel using Loadlin 1.6C, also
tried Loadlin 1.5, without getting an "Not an image file" report??

Wanting to install SLack9.0 I noted the CD I have does not boot even
when the BIOS is set to boot a CD, so I thought, no problem, I'll
just use Loadlin in a Dos partition, running DRDos 7.03, with the
proper set up assigning drive E: to the 32X CDRom drive..

Following the RTFM instructions I entered:
loadlin e:\kernels\bare.i\bzimage initrd=e:\isolinux\initrd.img -
that should load the kernel thence the setup program.. I tried
copying bzimage and initrd.img to C:\ and still get the same "Not an
image file" report.. Just invoking 'loadlin bzimage' screen reports
the usual "loading..................", but then stops with "Not an
image file."

I tried two other kernels including the one this machine uses and
still get the same report no matter what I do...

I'm beginning to think that Loadlin will just not load a 9.0 kernel..
I note that Slackware safety floppies generated after version 8.01
use SysLinux as a loader, wondering if the kernels are different and
not what Loadlin is expecting...

Any light to be shed?? TIA. (BTW, I have SL9.1 and it's CD boots OK
on the subject machine but due to space constraints wanted to use 9.0
instead.)  (I, finally, booted with 9.1, thence installed the files
from the 9.0 CD, using it's bzimage kernel.) There must be a better
way?

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20-1)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
