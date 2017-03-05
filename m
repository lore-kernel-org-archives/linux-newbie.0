From: Suraj Choudhari <surajschoudhari@gmail.com>
Subject: Query - Related to kernel changes for GFP_NOIO flag
Date: Sun, 5 Mar 2017 14:37:17 +0530
Message-ID: <CAGvB2rP=C6AdDw=43pRhS85wbrxcpXE6cypXc=hSdQfJx=q-Fg@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=WhMCJt/k4Bo9rHRZxXk/eno/sOwYZkqmknfUwUvoq4w=;
        b=ClBPTulQuChYylQbLwL4iuiurDzXvhDTbBymaq88al9NzWwMzzp0lLsZMY/FyPZSsY
         4+yAJ3QzJaQtlt+iQuWdvfYEq35fbf8dyEWFkdrSD6DCGwOLkqJJD7dOa8Tln2iiBQE+
         uCqPNex8o02IzVh/uh+wJslUCyKxPewO5GiGSXA005Ug3gW71O3976op5d4BJ8rW0OzI
         woYiRkbFVUCds9+7iIhMyIeCKxXnIL++TR4EXBvSQ98esTV6rl0Hd/DL9NyzO+qZZJU1
         cXmoKX2gfoDqSVOisb9OGEoZsvZyem6BiD2DgsKExrzXdLoZyio6kLKfjXSlnMITHcKx
         Yqww==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

The GFP_NOIO flag used for kmalloc is currently defined to be '__GFP_RECLAIM'

#define GFP_NOIO        (__GFP_RECLAIM)

#define __GFP_RECLAIM ((__force
gfp_t)(___GFP_DIRECT_RECLAIM|___GFP_KSWAPD_RECLAIM


However, prior to 4.4 kernel, this flag was defined as __GFP_WAIT.
#define GFP_NOIO        (__GFP_WAIT)


Queries -
======
1]  Can any physical disk IO happen due to memory allocation done
using 'GFP_NOIO' ?

      The reason to ask is since the GFP_NOIO is now modified to use
__GFP_KSWAPD_RECLAIM,  so I am thinking that physical disk IO may
probably happen whiel swapping the stale pages to disk in kswapd.

2] If kernel code wants to use kmalloc() and wants to ensure there is
NO any physical/disk IO due to kmalloc,  shall the kernel code use
__GFP_DIRECT_RECLAIM instead of GFP_NOIO ?


Thanks,
Suraj
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
