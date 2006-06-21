From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Lost HD Partition
Date: Wed, 21 Jun 2006 15:47:49 -0400
Message-ID: <20060621194749.GA1255@lnx2.kvinet.com>
References: <44995A5E.2030004@skyinet.net> <4498D5F9.6040803@comarre.com> <44999CC5.9050807@skyinet.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <44999CC5.9050807@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On 06-21, Peter wrote:
> 
> /sbin/e2fsck /dev/hda6
> e2fsck 1.38 (30-Jun-2005)
> Couldn't find ext2 superblock, trying backup blocks...
> /sbin/e2fsck: Bad magic number in super-block while trying to open /dev/hda6
> 
> The superblock could not be read or does not describe a correct ext2
> filesystem.  If the device is valid and it really contains an ext2
> filesystem (and not swap or ufs or something else), then the superblock
> is corrupt, and you might try running e2fsck with an alternate superblock:
>    e2fsck -b 8193 <device>
> 
> /sbin/e2fsck -b 8193 /dev/hda6
> e2fsck 1.38 (30-Jun-2005)
> /sbin/e2fsck: Bad magic number in super-block while trying to open /dev/hda6
> 
> The superblock could not be read or does not describe a correct ext2
> filesystem.  If the device is valid and it really contains an ext2
> filesystem (and not swap or ufs or something else), then the superblock
> is corrupt, and you might try running e2fsck with an alternate superblock:
>    e2fsck -b 8193 <device>

	IIRC, with the usual disclaimers, if the original fs was
created with 4K blocks the superblock would be: -b 32768.. The -b
8193 is for 1K block fs's... I hope that's right.. Also, IIRC, a fs
should not be checked if it's mounted which, in this case, it might
be but you don't know it.. I hope I'm not talking thru my hat.. <g>

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
