Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B584071FF
	for <linux-newbie@vger.kernel.org>; Sat, 15 Aug 2026 12:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786797300; cv=none; b=sq8qt+4HH9VmmwbqEgNVTuLlPgI4Gh2oLFYWsP9iA3VmPeq70rTYJ9x4NkfF/J7hC0b32kW1gm1ZZCdV+6JRnXSAVEnFzbKpdYQuoJbMYS3Dv4dV+tmJZh47A8UNpPtJVXua71cxO8jaKrxO22bnCCwE3kO8lI0zTbO6KUmirA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786797300; c=relaxed/simple;
	bh=ZzBg/Cu5rUfdQeE+onKly5MN8EZCoZFw+UNjm6oSkyE=;
	h=From:Date:To:Subject:Message-ID:MIME-Version:Content-Type; b=lyHYuLPYsuVH13aTQVX3f4xy1vGSJ01s/0ke91SUAXwqDYB1vG36szqfIxEm01QnZ82UYqYiJDLj8GfmvG0ZBZQnnYB8b7GqDg31htq55bhGKMuufRjOBiocEO69jtFDvA1eO/CGiqGenu6Fk96CVzQuQDZwmByAk0ZFAgeBeB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rQ51Mkl8; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rQ51Mkl8"
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-cbe6295f05bso2112672a12.1
        for <linux-newbie@vger.kernel.org>; Sat, 15 Aug 2026 05:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786797299; x=1787402099; darn=vger.kernel.org;
        h=content-type:mime-version:message-id:subject:to:date:from:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=VAYQmx+N2GSiLQt+NzLGFRqyw/gHRQ3E9TuxBVflb1M=;
        b=rQ51Mkl8o86EA0SjGnX3Ih4IWVPc0rC09Qy1XIQynltefeqiXTT7jzkKep5FqQP2H3
         +SWZbsY2rhc35SG+uqFOU8ygKHJCiVarP09tak7ay5PUlUxX9x5Z/0iTP5i9g3DKqq5R
         Q+eaqDJWih9LhpHQPUh4JBE8CF6MpAtoiyteBr4eAm2uyMaGSG9Ol7XvTsUjupInGqMw
         vuYxfu1/wakF87sAUx58WL0P5oM0Jbr8AqO2CfobZ6T3LKE2t1Z1DPMQ/WMi7bp0J5AJ
         Lqwv0yu5TXZ9qOaWzVegU8PwvKhNukFGjQnpSSWr/VO2XgqFqirVtYWyuHomVGgyZ45D
         t1Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786797299; x=1787402099;
        h=content-type:mime-version:message-id:subject:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VAYQmx+N2GSiLQt+NzLGFRqyw/gHRQ3E9TuxBVflb1M=;
        b=WT81iyuOC2EdGCPbnI7gffxVEcwJZ2S6X8HqTzNnVqUyNxnaW2rsKSSTGytNcqH2eT
         PQc4JxOSftC6qPwZvftgr0Ri4nB4ALcJ3LChI8TKcGWoTfJub/6Nl6bOdBAsw+qmzV+1
         yLSwLJ9bkg2mo5Vg+iYE92TxgkxEwibte+BrZp8ZkPBclgy46zOdB2hLN38bJVcMG0K4
         DR/4+g80mW6W8tKsOYrsirubd9B3DB0ycnNGwksIq0uZnR08AxQ9yxDK39GUSRpj3DyH
         OBrkLh6mloFDVdbsL2lXV6/hMQAL/Vh7cjhYqsJ8oT0FxCFPRQjGCI00aUM3BH8JKe1Y
         cDtw==
X-Gm-Message-State: AOJu0YzAp0qyarvchZu8BX6AeyrN3gXzeDAxF6CvTRTzq0PPXHT21PDy
	K74hJunqkYtjzhJA5QvlOpLRSDe0ey1GZz4xx+g9dNV82bJ//RvuSDI9NCnkfbbE
X-Gm-Gg: AR+sD13sKDPo+txDC+kUty0eFdMDzc2Sx5kX9GB71iSiK9iEqw/7UYnkCk0If5JdXSA
	uXl9U2wfRFl79q3C0btenBXEHv7l/TsZ+TRLT9BmVabiO9i6K3u9F87VlDuRTw4Uph8fNRJ4Yvt
	LSfrNXxeCSsUVhHFMkwAP7AonbFs8jKjPKuFjQ5ugeUcc6Eie9qVMYVjhN2YeQcrbLDzmDa6qOE
	usDaYHpCpvxrg8t0UJ7ZT/LrFnxLRF7ccbOBs9cs3afRxGj0ZesSikZhvPI9woBkMoxG18j+dIn
	e3d48y6Mrzxqusd4uWpwdxCcPUNHPYVaAS1R8ZXaHH+UfOh572YxYOUPVMCBFGpk1Pg7GdfgmRA
	g0O/IWjzBrQE+S6FcURfM2wA5CbbRgfuAftGTiEmng81zlLkEMfCi0mM4o3P/E/CZLjsSpsyEfl
	2ESCclRa1YxfXl7SYGyj+7K6QdqBpfYk3I4Dmd4aM7Lo/aLrA/GlQZ
X-Received: by 2002:a17:90b:2b47:b0:37f:e5b1:ec4b with SMTP id 98e67ed59e1d1-3931f47db02mr16264959a91.5.1786797298841;
        Sat, 15 Aug 2026 05:34:58 -0700 (PDT)
Received: from 192.168.1.2 ([157.85.198.7])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-320ead105a9sm14742370eec.31.2026.08.15.05.34.56
        for <linux-newbie@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 05:34:58 -0700 (PDT)
From: Foxie Flakey <foxieflakey@gmail.com>
X-Google-Original-From: Foxie Flakey <foxie@gmail.com>
Date: Sat, 15 Aug 2026 19:34:54 +0700 (WIB)
To: linux-newbie@vger.kernel.org
Subject: [PATCH] userfaultfd: reset err when move_pages_ptes succeeded
Message-ID: <db93293b-2e02-7ca9-2f92-f52447d2849c@gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


When UFFDIO_MOVE moves non huge pages and temporarily fails, then the outer
loop retries again and succeeded but in that path "err" isn't reset to 0.
Later, when checked for EAGAIN error, the loop mistakenly retries moving
same page again which will fail because its already moved.

When the UFFDIO_MOVE returned, this is what userspace observed.

Source:      [ .. unmapped  .. ][ .. mapped    ..]
Destination: [ .. mapped    .. ][ .. unmapped  ..]
                          ^     ^
                          \     Kernel moved this far in actuality
                           What is reported to userspace on struct
                           uffdio_move's move field

When the previous behaviour is
Source:      [ .. unmapped  .. ][ .. mapped    ..]
Destination: [ .. mapped    .. ][ .. unmapped  ..]
                                ^
                                Reported to user space via uffdio_move's
                                move field

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

