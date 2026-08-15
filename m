Received: from mail-pj2-f8.google.com (mail-pj2-f8.google.com [74.125.227.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A473E3A7F7E
	for <linux-newbie@vger.kernel.org>; Sat, 15 Aug 2026 14:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.227.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786803117; cv=none; b=ZJBg3EzR2Ada/EH10kNRTn/CM6xt+Z+OK9RfVU/gRp1iGidlz4dYhkoCTe/DDddfT9kQ9TNmafb0oiXIsujIoHmL5rUd0m8P1RghtmFx7WQLUOJyy0tTusg1cdcGr+/SfUJ17KPqJERGMRHNvyUafEwkD2eK/HmJoQkqbV6VyH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786803117; c=relaxed/simple;
	bh=JtJNun84AB8PQtiS4v2IkN5Q/XqzcdoxhPYS3VYMCHw=;
	h=From:Date:To:Subject:Message-ID:MIME-Version:Content-Type; b=gpPC9sLZuRTVb+lOjwIO2tY2C0KrrqHhWPtFY5uq/pHrA369mP5DUrp1YV0pjb2Mv2fejbD5GW2VJlJP7NSPMOwcA11OlHnsMsIok7h/ZNz1yj+CazzlHStXBmaPugisJAROC9pxCRQ2H1UExkzsNOsnlZo34aQ6n6R4c76KUZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C1nvCxEc; arc=none smtp.client-ip=74.125.227.136
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C1nvCxEc"
Received: by mail-pj2-f8.google.com with SMTP id d9443c01a7336-2d313798bf8so14245815ad.0
        for <linux-newbie@vger.kernel.org>; Sat, 15 Aug 2026 07:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786803115; x=1787407915; darn=vger.kernel.org;
        h=content-type:mime-version:message-id:subject:to:date:from:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=rivOFJZ/N+j6Q01tuUP0tqH7Z5Jix2bG0DbOpabwKqQ=;
        b=C1nvCxEcZ6InqPk9aCjzBBEuHiJfTDAfTdBGtF+ke8fKlfuBW/zUlOpRKKTY/vHhzN
         em92IaZq1U8uExhzqWvDynbRm2nAYffJvTRHg+QozHteSc4dCp4DkhLXg8w+Utreva/7
         ynZApiDtdHQVtHvjNd/Vz4xjQ+KRqutWN/WC1drj6bCXBBUDrEXeyKlYpWKuBUSd6a96
         klJJh8S0R7qQ/Fa1sPeHIeWAtpDABoRQ9JPiGA8+4S+obZPcOVRE87zVORYUfil84XMt
         RF4NFd1MgvxM8yNMufNQtisrBUyESornClgfJdh308EXeVXAmSbodyJR9PO3IV63Dlkm
         B6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786803115; x=1787407915;
        h=content-type:mime-version:message-id:subject:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rivOFJZ/N+j6Q01tuUP0tqH7Z5Jix2bG0DbOpabwKqQ=;
        b=rLm9ZIMP7MyMT3YPURlW1/jgtaYXUVZgUi7Y5i6Qzzr+YlXPH12uh2opxaIW+Y1rll
         BZgTk56KACCegB4FobisZHNmUfQ3sIbw/a5FmAIhsPC9CXMs0BqbhhvRnRIWqQ/23LCC
         KHJqRkmN+vxiGl9Q3MldTVU+6xoUfBI3SCI/JtZiwWjhuGgpgt3YTOBo7ecQTexu8cdl
         /2H22NTcHQhgOjTXzM3KrRE+n0zmL9kA3lBbfLu/6DaKsVgGzzzX6a7GPyDg2eShGxtY
         C/CSAPBSVqytTMpQi/0CW16wvoSrvrHvQ1rKPLk25jFhmcNRz9M1vX4A/J7JO+jnNbtl
         CMEQ==
X-Gm-Message-State: AOJu0Yx5551k2gyubEFRYGVyVfiamOJcikxvHrWNjKAGPCV7mZHALw2m
	nmVBZBfqDvx9nlVzIVyw+2k9caVslPt09iuY2n3JrIXss+soIaqh7bczpmaCF5VH
X-Gm-Gg: AR+sD13VpjiS6b2bRg/KoApreKO4x6I6nuNHvkbnzne+hpoedXnnCBQdZ0MnvzKYpL+
	KUmFtf6/oW5dkwP6AInyyl8pEN/+/SEQ+KWoIy0x7aUoYMl4bNlZ0+bcfI7DIOnu7t9TmJYCHIK
	1n/GwfiObo6Rfn+zodqpID4QNQa+ulO9rPCMUf3Im82ZeqJdvEEJ7PHX5WWVuCdWUXtknB4GtmU
	4kbQ1cLyA1GgF09s2MkGjkL4p+z408dFNj62GFY5wbN+SBx4HZjM90chQdkcJjjTi/al0LPGwcA
	48U8CaILw/tV6sKnBVi5DcG9nj6OxxeEnIz1JhRJt9lJKQSDOYChlKHLV6bZ1VAoToMOHoIlBIX
	lx/97rlRCOJ0Doa295tXhzeKWlcxlUS0+Rp1vYquq8GNrkqn/UClGWYc8/VTMu2Pgs2mIRSphy9
	R+y7nqap6GYyhLBEqAV7RfI7e6vqwTDIlGdCaahDe+D8sSKnp/OpXG
X-Received: by 2002:a05:6a20:c6c1:b0:3c4:48da:8102 with SMTP id adf61e73a8af0-3cc71e1b525mr15003949637.29.1786803114697;
        Sat, 15 Aug 2026 07:11:54 -0700 (PDT)
Received: from 192.168.1.2 ([157.85.198.7])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-320d61e1568sm15508423eec.11.2026.08.15.07.11.53
        for <linux-newbie@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 07:11:54 -0700 (PDT)
From: Foxie Flakey <foxieflakey@gmail.com>
X-Google-Original-From: Foxie Flakey <foxie@gmail.com>
Date: Sat, 15 Aug 2026 21:11:50 +0700 (WIB)
To: linux-newbie@vger.kernel.org
Subject: [PATCH] userfaultfd: reset err when move_pages_ptes succeeded
Message-ID: <2d54f4a9-4836-362e-ad12-0c59d89d6914@gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


There is an edge case when move_pages_ptes fails with EAGAIN and then outer
loop attempt to retry and succeeded but "err" isn't reset, outer loop did
retry erroneously on same set of pages that was successfully moved. This is
fixed by resetting "err" when move_pages_ptes succeeded.

Fixes: 50944692052b ("userfaultfd: opportunistic TLB-flush batching for present pages in MOVE")
Signed-off-by: Foxie Flakey <foxieflakey@gmail.com>
Assisted-by: ChatGPT:GPT-5.6-Luna
---
 mm/userfaultfd.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/mm/userfaultfd.c b/mm/userfaultfd.c
index c3adedaaf7d5..595e7e232f90 100644
--- a/mm/userfaultfd.c
+++ b/mm/userfaultfd.c
@@ -2069,10 +2069,12 @@ static ssize_t move_pages(struct userfaultfd_ctx *ctx, unsigned long dst_start,
 			ret = move_pages_ptes(mm, dst_pmd, src_pmd,
 					      dst_vma, src_vma, dst_addr,
 					      src_addr, src_end - src_addr, mode);
-			if (ret < 0)
+			if (ret < 0) {
 				err = ret;
-			else
+			} else {
+				err = 0;
 				step_size = ret;
+			}
 		}

 		cond_resched();

base-commit: 62cc90241548d5570ee68e01aaba6506964e9811
-- 
2.55.0

