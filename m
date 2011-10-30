From: "dE ." <de.techno@gmail.com>
Subject: Fwd: freezes when transferring to USB
Date: Sun, 30 Oct 2011 16:57:17 +0530
Message-ID: <4EAD3495.20408@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=message-id:date:from:user-agent:mime-version:to:subject
         :content-type:content-transfer-encoding;
        bh=x2iBI0iRvXkYltX+87xFKAKG4HxmwVopTPlHYxLHy8I=;
        b=IgB/297lyqUUfpIaQy4Wd/L9PmDq8wMkX9lXHLBif37q2F8uDD1Xx/3CUyI5GnXKve
         NjQ2Vfzmb2yg0yjGKgoOVEqqCEcsVG9QNE1aBuLgrF6ZDI5BvjyCxYETjq8nRk00MP+O
         aqSTJMa+zUmwEcBaUrEJABkyvDJsSk3Xh6AwA=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi.

I'm a very much end user, but this issue at hand is a kernel problem.

I'm running a custom made vanilla linux-3.0.4; when I transfer a large 
file to a slow USB flash device, there're random freezes in random 
applications -- top target is Chromium and Yakuake.

Someone told me this's cause of excessive dirty buffers in memory, but 
after trying a verity of combination from the kernel parameters in 
/proc/sys/vm, it didnt work.

By my understanding if the dirty pages exceed the dirty_ratio/bytes 
limit all IO freezes, but in my case applications in memory freeze, the 
I/O is not related. For e.g. the the Yakuake terminal drops down, it 
hangs for a minutes -- this action doesn't have to do anything with IO, 
but only in memory.

Then tabs in chromium hang randomly, this's again not related to I/O.

I tried reducing ditry_raio, dirty_background_ratio to 2, then I 
increased min_free_kbytes, but none of them matter. I noticed that even 
when an application freezes, there's ample of free memory.

This problem was not reproducible with vanilla kernel 2.6.38.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
