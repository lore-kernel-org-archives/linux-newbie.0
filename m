From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Reinstallation
Date: Tue, 30 Mar 2004 19:50:58 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403302050.58925.pa3gcu@zeelandnet.nl>
References: <200403301320.10936.wheds8@ms66.hinet.net> <200403301144.29483.pa3gcu@zeelandnet.nl> <200403310229.48743.wheds8@ms66.hinet.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403310229.48743.wheds8@ms66.hinet.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "S. Barret Dolph" <wheds8@ms66.hinet.net>, linux-newbie@vger.kernel.org

On Tuesday 30 March 2004 20:29, S. Barret Dolph wrote:
> I would have guessed that reformatting the disk would wipe everything out
> but it seems not to be the case.

That is your MBR not your disk partitions working, your disk MBR is the first 
512 bytes and is NOt a partition as such.

If you boot from a CDrom or floppy then you will have no problems with your 
disks MBR (Master Boot Record) as it will be ignored.

Mandrake cdroms are bootable, you will possably need to set your BIOS to boot 
from CDrom, is that your problem, you seem to be getting things all mixed up.

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
