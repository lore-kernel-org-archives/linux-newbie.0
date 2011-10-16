From: NANDA <heramba85@gmail.com>
Subject: Memory ZONES in PPC board
Date: Sun, 16 Oct 2011 09:12:17 +0530
Message-ID: <4E9A5299.6040609@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=message-id:date:from:user-agent:mime-version:to:subject
         :content-type:content-transfer-encoding;
        bh=DgxC7jxpWubTLE4r2rD3QESjrIYDNhnhAfSb6Hu2GNQ=;
        b=GOFKJ1YMAFz/6S4hQLP9Jqdu9+jiSlU/NOPUP3MvI4R4wbrM+5K4QQfZD7s8W/6M2o
         XsiiCiM7r5jRDCBBL5/icpkLoGyG+CUmvWn4dmFOWwm5aAVAOmCpFcVVftyl6dNtA43l
         WowCmnTYHNdKKQiwBAPnALfq7QyE0q6L184b4=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello all,

We have PPC board which runs on linux kernel. When I looked at dmesg, 
the memory ZONES were divided as below

768MB for ZONE_DMA
256MB for ZONE_HIGHMEM
ZONE_NORMAL is not present.

Now what does this mean? Is that kernel space entirely mapped to 
ZONE_DMA? Does user process get only 256MB of physical memory? I am 
pretty much confused about these zones.

Is this particular to only PPC architecture?

Kindly clarify

Thanks in advance
Heramba
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
