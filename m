From: Ray Olszewski <ray@comarre.com>
Subject: Re: USB Flash/Jump Drives-Linux??
Date: Sat, 29 Jan 2005 08:08:14 -0800
Message-ID: <5.1.0.14.1.20050129075916.02be0cc0@celine>
References: <20050129140343.GA599@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050129140343.GA599@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-71C24702"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:03 AM 1/29/2005 -0500, Hal MacArgle wrote:


>Greetings: Running Slackware 9.0 and 9.1; kernels 2.4.20 or 2.4.22,
>bare.i installation, I've experienced good support for all USB
>devices except Flash Drives.
>
>First one bought was a Link-Max UL-641 that, plugged in, was
>immediately accessible by the kernel with no configuring by me..
>
>Later attempts with other brands, no such luck.. As I look at the
>retail boxes not a single one mentions Linux, so was wondering what
>others have discovered.. It's no fun buying then returning just to
>see what works or doesn't... <grin>
>
>Most of the comments on the Web seem to indicate this is not a
>problem but I've found otherwise.. One vendor, Kingston, said flat
>out that Linux is not supported by their devices..
>
>Best and TIA.


I've only used one of these drives, a Lexar 256 MB JunpDrive Secure. Since 
I compile my own kernels, I did have to recompile (2.4.21, I think), 
turning on several USB options and SCSI (the standard way to access USB 
drives uses SCSI emulation), but then had no difficulty on my own systems 
... and a couple of embedded Linux systems, using their manufacturers' 
stock kernels, also accessed the drive with no difficulty.

Since you don't include any details, I don't know if what was unusual about 
your experience was the single success (say with a device that does not 
require SCSI emulation somehow) or your several (few? many? you don't say) 
failures.

Why not tell us more ... in particular, what devices you tried with and 
failed, and how you accessed the Link-Max.




-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.300 / Virus Database: 265.7.4 - Release Date: 1/25/2005


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
