From: chuck gelm <chuck@gelm.net>
Subject: Re: USB Flash/Jump Drives-Linux??
Date: Sat, 29 Jan 2005 22:48:57 -0500
Message-ID: <41FC5929.70409@gelm.net>
References: <20050129140343.GA599@lnx2.w8mch.ampr.org>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050129140343.GA599@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> Greetings: Running Slackware 9.0 and 9.1; kernels 2.4.20 or 2.4.22,
> bare.i installation, I've experienced good support for all USB
> devices except Flash Drives.
> 
> First one bought was a Link-Max UL-641 that, plugged in, was
> immediately accessible by the kernel with no configuring by me..
> 
> Later attempts with other brands, no such luck.. As I look at the
> retail boxes not a single one mentions Linux, so was wondering what
> others have discovered.. It's no fun buying then returning just to
> see what works or doesn't... <grin>
> 
> Most of the comments on the Web seem to indicate this is not a
> problem but I've found otherwise.. One vendor, Kingston, said flat
> out that Linux is not supported by their devices..
> 
> Best and TIA.
Hi, Hal:

  I have a SanDisk Cruzer micro (128 MB) and just plugged it into
3 systems running kernel-2.4.22 (Slackware 9.1) and
1 laptop  running kernel-2.4.26 (Slackware 10.0)
and all reported a new USB device and
SCSI Emulation for Mass Storage Devices assigned it
sda:sda1

  I think that 'hotplug' helps to accomplish this automagically.

  So, these devices support USB and if your linux kernel
supports 'SCSI emulation' and USB, it should work.

I think.

HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
