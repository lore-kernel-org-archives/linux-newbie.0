From: Ray Olszewski <ray@comarre.com>
Subject: Re: Heavy load of graphics
Date: Wed, 06 Oct 2004 22:48:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041006224402.02071d28@celine>
References: <Your message of "Tue, 05 Oct 2004 06:01:00 +0100." <20041005050100.76032.qmail@web52902.mail.yahoo.com> <20041007020702.020204B4@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041007020702.020204B4@heisspf>
References: <Your message of "Tue, 05 Oct 2004 06:01:00 +0100." <20041005050100.76032.qmail@web52902.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: newbie <linux-newbie@vger.kernel.org>

At 10:07 AM 10/7/2004 +0800, Peter wrote:
>Want to free memory?
>
>$ free
>              total       used       free     shared    buffers     cached
>Mem:        223708     220120       3588          0      28356     107936
>-/+ buffers/cache:      83828     139880
>Swap:       128480       3996     124484
>
>$ locate /usr/bin/f* or x* or g* ...
>
>
>$ free
>              total       used       free     shared    buffers     cached
>Mem:        223708      41364     182344          0       1520      28592
>-/+ buffers/cache:      11252     212456
>Swap:       128480       5056     123424

Peter -- This is a pretty strange consequence of running the "locate" 
command. And I cannot replicate it here. For example:

ray@waverly:~$ free
              total       used       free     shared    buffers     cached
Mem:        773892     742056      31836          0      87600     441912
-/+ buffers/cache:     212544     561348
Swap:            0          0          0
ray@waverly:~$ locate /usr/bin/f*
/usr/bin/factor
[about 40 more lines, deleted here]
ray@waverly:~$ free
              total       used       free     shared    buffers     cached
Mem:        773892     742076      31816          0      87608     441924
-/+ buffers/cache:     212544     561348
Swap:            0          0          0

Any idea what's causing the change on your system? My understanding of 
Linux says it shouldn't work the way you report seeing it, so I'm wondering 
what I am missing.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
