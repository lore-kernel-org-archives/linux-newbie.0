From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: fdisk
Date: Wed, 17 Jul 2002 12:44:30 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020717124430.H1163@neutrino.particles.org>
References: <200207171136.14806.azie@kawan.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200207171136.14806.azie@kawan.net>; from azie@kawan.net on Wed, Jul 17, 2002 at 11:36:14AM +0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: azie <azie@kawan.net>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Wed, Jul 17, 2002 at 11:36:14AM +0800, azie wrote:
> 8 partitions:
> #       start       end      size     fstype   [fsize bsize   cpg]
>   a:        1         7*        6*    4.2BSD     1024  8192    16
>   b:        7*       40*       32*      swap
>   c:        1      2492*     2491*    unused        0     0
>   e:       40*       42*        2*    4.2BSD     1024  8192    16
>   f:       42*     2492*     2449*    4.2BSD     1024  8192    16
> 
> Command (m for help): n
> Segmentation fault

If you had installed *BSD before in this disk, it is possible that fdisk
can understand slices and partitions and thus it segfaults.

It is an fdisk bug for sure. Whatever the case is with your disk, it must
not segfault.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
