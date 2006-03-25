From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Lexar Jump Drive & Linux??
Date: Sat, 25 Mar 2006 09:22:24 -0500
Message-ID: <20060325142224.GB1239@lnx2.kvinet.com>
References: <20060324213842.GA1272@lnx2.kvinet.com> <442441BB.6010702@gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <442441BB.6010702@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: chuck gelm <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

On 03-24, chuck gelm wrote:
> Hi, Hal:
> 
> I have two (128MB) USB (flash,thumb) drives and usually
> use them as 'vfat' formatted systems.  They are partially
> linux compatible, because 'vfat' does not carry as many
> permissions as 'ext2' does.  I'm guessing that all 'full'
> linux distributions support 'vfat' file systems by default.
> So, these USB drives are basically linux compatible.
> I looked in my filesystem list (/usr/src/linux/fs/) and see
> over 25 filesystems.  I have even heard of some of them:
> cramfs, ext3, fat, jffs, minnix, msdos, ramfs, reiserfs,...
> 
> You could have formatted them 'vfat' with linux.  :-|
> 
> Chuck

	I have done that and checked it with dosfsck as AOK..
However, as mentioned, fsck returns an Error 2, but I wont worry
about it for now...

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
