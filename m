From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Moving Hard Drive
Date: Mon, 19 Jan 2004 15:37:13 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401191537.13062.pa3gcu@zeelandnet.nl>
References: <20040119071411.35BEF1C902@heisspf> <400BBC95.1020808@sancharnet.in>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <400BBC95.1020808@sancharnet.in>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: gracecott@sancharnet.in, Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On Monday 19 January 2004 12:16, joy wrote:
> Yes, I got the catch. thanks for enlightening me about the matter.
> But I have a doubt....
> As pa3gcu said couldn't you use the bios' boot option to boot thru the
> other drive and since it's lilo.conf is pointing to hdc, could'nt you
> then pass the root= parameter?

When using the BIOS option to boot other disks one needs to install lilo on 
that disk's MBR first, so that means trying to pass root= is not needed 
because the BIOS swaps disks around for you. Rather like the lilo option when 
tricking windows into thinking its installed on /dev/hdaX when in fact its 
on /dev/hdbX as per section, "Booting a foreign operating system" of the lilo 
README.
So all that means we now need to have lilo installed on all bootable disks 
MBR's. To do that simply edit lilo.conf and set;
boot= to /dev/hd(whichever disk) in this case /dev/hdc .

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
