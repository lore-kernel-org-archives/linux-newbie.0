From: chuck gelm <chuck@gelm.net>
Subject: Re: Lexar Jump Drive & Linux??
Date: Fri, 24 Mar 2006 19:00:11 +0000
Message-ID: <442441BB.6010702@gelm.net>
References: <20060324213842.GA1272@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060324213842.GA1272@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

Hi, Hal:

 I have two (128MB) USB (flash,thumb) drives and usually
use them as 'vfat' formatted systems.  They are partially
linux compatible, because 'vfat' does not carry as many
permissions as 'ext2' does.  I'm guessing that all 'full'
linux distributions support 'vfat' file systems by default.
So, these USB drives are basically linux compatible.
I looked in my filesystem list (/usr/src/linux/fs/) and see
over 25 filesystems.  I have even heard of some of them:
cramfs, ext3, fat, jffs, minnix, msdos, ramfs, reiserfs,...

 You could have formatted them 'vfat' with linux.  :-|

Chuck

Hal MacArgle wrote:

>Greetings: One year ago I bought a Lexar 256mB Jump Drive; put an
>ext2 FS on it and used it to transport small files from one Linux
>machine to another, all running 2.4.XX kernels, and mounting the
>drive as /dev/sda1, per dmesg...
>
>All of a sudden I couldn't write to it unless the files were less
>than 30mB total size.. I figured the drive must be bad; still in
>warranty according to Lexar, so I contacted their support people..
>
>First off they say I must reformat the drive using Windows and
>included instructions for doing this with Win98SE or XP... SE didn't
>even see the drive so I fetched the newest driver from their site and
>never did get it to work...
>
>Then I went to an XP machine and was able to format the drive as per
>their instructions so it now seems to work fine as long as it's
>formatted FAT32  (VFAT)...
>
>Am I presuming I have to _not_ use a Linux FS with this or other jump
>or flash drives?? (I do have a UL641 64mB drive that's fine ext2, so
>far) I've been telling some that the Lexar 256 drive works with
>Linux.. I'll have to retract that unless I can figure out what
>happened, eh?? Any comments. TIA.. (Of course the drive 'specs' don't
>list Linux, as usual.) :^(
>
>  
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
