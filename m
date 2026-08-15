Received: from mail-pj2-f1.google.com (mail-pj2-f1.google.com [74.125.227.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E6C2F746D
	for <linux-newbie@vger.kernel.org>; Sat, 15 Aug 2026 14:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.227.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786803216; cv=none; b=dZKHlxSjW6wkgrwyNcInlIqUp9GPYK3yqxiKMGN8MAbsMgsnZFnyE5FBLrXsJ49cTuhLmXouLGbxyLXQBbV/fFS9dp1a36FCt8gmyE5niZlYqUJa5OXoP1RxrrjvHUr+K0WgGFkmArL9oAVsDN9+evw2s3z3nCl9e/P5PJPo/fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786803216; c=relaxed/simple;
	bh=UxWe5JsD7UKLlraD5g92JzPmL+1QRjMVI+c26gqsFrc=;
	h=From:Date:To:Subject:Message-ID:MIME-Version:Content-Type; b=YOh1y1Igwl+YelTEO8x1FAQA4yZw4J2DdQykAUE/yk1iJFyQaNncUBNWSg30YjNGZqjI6MMkv4n58QMt+EFEJ316vMn6xxomKRHEA7Ffuny2zlrF4BOHg4t57IgS7UYWPvuTwf89CdilpKZqZ9Rt+UkBVClO9l0ZXIrfe+lKqpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OdTl3959; arc=none smtp.client-ip=74.125.227.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OdTl3959"
Received: by mail-pj2-f1.google.com with SMTP id 98e67ed59e1d1-3810f0aba07so1114458a91.1
        for <linux-newbie@vger.kernel.org>; Sat, 15 Aug 2026 07:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786803215; x=1787408015; darn=vger.kernel.org;
        h=content-type:mime-version:message-id:subject:to:date:from:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=CZh3sdBVc0p8pXnW2qClJ/CO4GyyF/pKece+1xuRPdk=;
        b=OdTl3959rjv3fS4o96IyGLOr43JJOEeqZP+sarMFwQz+6nfn9GL5RMBp05QJmVRMAq
         XEiw3RtNQ6ZSwTujUMHBG5985I3zOmfiVcU2o1WkrdY8BI5SEGjmEg7Q9lID+6CfNt7A
         J8K/4Sl+E2vQksAsGhh8mZlUJVS66/W7wGC+tBo69SzDaWUJucvQtmIN3A6Lc24/8hiG
         bGGQXXX9pw848HhNDYipfPXBGxMlzjpYmneAEj9k7O2aFsLh+p3aqd53xkuVGXyKsV/Y
         tGsQ4Myd/UbeFO42/FT4f0Hu3q7kmvzZslvYlR4iIbaZ5WyMgRbsTKGkYvc5HSmiOXmv
         d38w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786803215; x=1787408015;
        h=content-type:mime-version:message-id:subject:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CZh3sdBVc0p8pXnW2qClJ/CO4GyyF/pKece+1xuRPdk=;
        b=XxMX1R/PFxrWNojpa5TseWeqqPrQBtgfQlXoO4oHWiaYIMA8SXJFvnXikDeaazwS7g
         sVmics2SyoZobvCA5G9xfblzIqpeJ9wOWgCXF0GmAo7QEKtUhMjNE/FYivqXdAZIDJ6V
         /FBYCgDdH8e5pPWtOHO3l/FQqV/eO2rDOzlO3Ozw/GSzJGlsOIN7Dmg5JISfJXP/sLgX
         XLioyNJPc2fXgkKhDpuA/oJRfrZ7O1W3AuNLiohAqFiHx4g6Di7Ezs1/FeoA0ENDM0am
         n8r3/J4twAVOec/6rbT0zdaBIkoIdBEdEyD0PDAvXLYrR+9CC32M0uRURM54uue1bxdE
         3lHA==
X-Gm-Message-State: AOJu0Yx2dEDxwAO79nvgGByZUMlqbLBqUk3ruKVfki9PPbQh1ro+yo3Z
	ax70ZtqqPTmSpmezFcmJVPoXqWcq47kQUeJFoeN0aUCYV0ox3YlzW6onZ2gulATQ
X-Gm-Gg: AR+sD11IKgFKGPhmNXGPgDjFYThR7o4HggxCtz5jQooPoSTQqePBO4sQTrLyxhaeSP3
	POi1kejiu+sQKhFeDyxmAX1NblY+0nFFNU+jFKgIxe4lHKf9gCP5GWIulcrv8be2I12LYynG8Eu
	DYTLSaW+Tr5f9v3IRil8vXZbyiugOjnpDqlaHHGt9AfFTcXqiPIeMY8D5bxAXcfMDLl2LfWP+im
	gcIN+QNsdDLepjt9rd0dn10JyuDTD5j0OUTtJLfflUA6zDhJUmLndG6Yv8aOreSwAhlKGHdkQE/
	OdZFaixUeh47NYr3LlndB6RjqavekSeguyRcEjOVlw6Pi67aJutnsiUeAnphac67fMg8j5UZ4av
	cAHFD401znYAUGZvCaevs0aP3i+D6QgSI4cZExpP3BYR4VObDGV7nYDqqew5WcbWQ5MYDIcbpYb
	2LHCU5SIdlGe7eiwdrb1oFA/BPkYOcUuPu1lrsZHN8IdBdnlOKXX3h2lvXTBUWIo4=
X-Received: by 2002:a17:90b:2d07:b0:381:3b5d:30f4 with SMTP id 98e67ed59e1d1-3933bd18856mr14688356a91.1.1786803214632;
        Sat, 15 Aug 2026 07:13:34 -0700 (PDT)
Received: from 192.168.1.2 ([157.85.198.7])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-320ea7fe465sm16386513eec.25.2026.08.15.07.13.33
        for <linux-newbie@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 07:13:34 -0700 (PDT)
From: Foxie Flakey <foxieflakey@gmail.com>
X-Google-Original-From: Foxie Flakey <foxie@gmail.com>
Date: Sat, 15 Aug 2026 21:13:31 +0700 (WIB)
To: linux-newbie@vger.kernel.org
Subject: [PATCH] userfaultfd: reset err when move_pages_ptes succeeded
Message-ID: <80b30bbd-dfa0-e8b9-0af3-e89116a464fe@gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


There is an edge case when move_pages_ptes fails with EAGAIN and then outer
loop attempt to retry and succeeded but "err" isn't reset. This leads to
outer loop retry erroneously on same set of pages that was successfully
moved. This is fixed by resetting "err" when move_pages_ptes succeeded.

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

