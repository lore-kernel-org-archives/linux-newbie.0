From: cr <cr@orcon.net.nz>
Subject: Re: problems with dual boot
Date: Sat, 26 Oct 2002 17:08:59 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021026025631.276127321C@smtp.orcon.net.nz>
References: <20021025.133927.134682184.1.lawson_whitney@juno.com>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021025.133927.134682184.1.lawson_whitney@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: lawson_whitney@juno.com, abhijit_v@yahoo.com
Cc: linux-newbie@vger.kernel.org

On Friday 25 October 2002 14:45, lawson_whitney@juno.com wrote:

(snip)

>
> > Doing fdisk /dev/hda
> > gives me the error "Unable to load /dev/hda"
>
> if this                         ^^^^ is a typo for open,
> maybe you were not root and had not permission?
>
> Why do you need fdisk?  Do you not know where is /boot?
>

My system went down recently - I *think* because one of the three(!) hard 
drives was failing.    And I definitely needed to read the drives to see what 
partitions I had on each one....

So I intalled a new system on a spare drive, then added each old drive in 
turn and checked it with  fdisk, Antivir (just in case) and fsck.   I had to 
mount it to use Antivir, using the partition names I got from reading fdisk.
All as su to root, of course.

cr
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
