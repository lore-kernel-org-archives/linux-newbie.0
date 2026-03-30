Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD1D3C5555
	for <linux-newbie@vger.kernel.org>; Mon, 30 Mar 2026 12:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774874693; cv=none; b=nl72RD267IpcKjyDGOgx5cU5WuPmsRLmMH5SQXLsUJthe9Hz8Lo+Gcd1tLYTXrs1Yngqq9wx1tbVWWuVFLgDcrlwdYH4LWyzDt+a/+uUmi4GOt/v/10ODLn0U/tInRjnmTkvyWsmyyS96xQNZ+YmZXTJ+WZWr+6Rx2pnvx7cESc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774874693; c=relaxed/simple;
	bh=nGrfTdx4MGV8Ajz2Lqr8X8SpPqy7PJw/e+vKIYOrbLM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=jKvLkjAVJewJs5edDiC/jv1DjCl0B2Ehbxd5EBWPWp2VWZYvFG292TnSGCJazpYXV6xh5jk/MbEYTz2X0DNwXIMppnwmx+1OCDNP64frRfxrhBi6V35FqGYUNjv4XI9v/gEOotvOSyJTY5wPfaSFCOXxXnvrxLmSR8UP4jRjYn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mirrorstack.ai; spf=none smtp.mailfrom=mirrorstack.ai; dkim=pass (2048-bit key) header.d=mirrorstack-ai.20230601.gappssmtp.com header.i=@mirrorstack-ai.20230601.gappssmtp.com header.b=zHxlVZNL; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mirrorstack.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mirrorstack.ai
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mirrorstack-ai.20230601.gappssmtp.com header.i=@mirrorstack-ai.20230601.gappssmtp.com header.b="zHxlVZNL"
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-35d9749c26dso1399549a91.2
        for <linux-newbie@vger.kernel.org>; Mon, 30 Mar 2026 05:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mirrorstack-ai.20230601.gappssmtp.com; s=20230601; t=1774874691; x=1775479491; darn=vger.kernel.org;
        h=mime-version:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mbDjyBhFfANTbP+3FxJ4UiK6cfWOwuEXnIhpVojPUZc=;
        b=zHxlVZNLDjnbvaKuTEEL95hhl7HYGAyEHz1Jkyxy+NaMx+UhhaDFM5YX4P73oaqhT9
         ajkzkZwIL96OX9S1KuGl6O3X3TJUAwwNtNshjladGBVyRMiEL9LQw3A4ZAJOOhIReSWD
         8nCXwVZ72O3x7kq3ovh/tS6KL6pCVpnvKTA7k6d26gvNW+tDl+Xd5hnAHiuuM/zG6uPd
         xSEL71ZDRkQ0FoWInu7xDLC3H5vzEKli6aVccKiJCsXFzaaVaOlmNOmrrlTg7iRkL9j6
         JonXY9CJJs20G1ZKyszMK3hmFdY1VGWvThu2RHxyeegmspyfHvPD3PmjY3jGj5fZF2Cb
         sIjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774874691; x=1775479491;
        h=mime-version:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mbDjyBhFfANTbP+3FxJ4UiK6cfWOwuEXnIhpVojPUZc=;
        b=DZcmq3FcyUE9F7GgdF7EnsBGykWIGGW327L6438d/XxWNTQZ2EvqKydy0+nGbplSJx
         TlOPOftMGpTKQ2upZ+l40rVFJF3p1M25zVP+zexXMyDzNNAHrL4Pau570aosxJebbbvE
         YA9oHRWJbQhFunT0DdcBYbRKS1E0qG6amQrX4ObUKpY6PUhBt1geuW960FadI2cskwsc
         KiBCYfexqXYalscX8QPqpy8ymDXU1C3luPDz5+ABjftuvkVSW6iHEgP39C7uhoNrBm1M
         S+oXJosvI932BpAdrFCKYeKVu3cE7oLNXxb2oa4RzJwUYQertdv6Fxyz3GNDAP0Xyxss
         Kxxg==
X-Gm-Message-State: AOJu0Yy8PRCcQsY5fKzRGMVfMdMsp7TpEY9L/hZKYV7a8FLaN7UDBz1O
	9EuXRcIahbhu7oBWHMK3g5L/irh9sh7mgFxBMSe0kpV8idOi7pd4JkXqzrko84kLDX05v0lfkh3
	9II53XRn6khC5tZbbGod9QbOPcEjsfc6gh9hIcTWfZtJzkD/heKdCIzQI1nCpdLBcNV5BVIPdGv
	ZNsg==
X-Gm-Gg: ATEYQzyICJ0UKzz6MVBHSYMp9sSjjVnoVpjAKfuewe6fLsUHGc3sANEpMXno5syP4pP
	PGXsi200DhLr6pAieCHBKBstlXeteHYqrQprpT4OnZE9SoXfgSyv0s0/9QR6kO+WmamO+F18nuo
	JGkFHCXlYCv56lnJugiPCVy1An08y5c6IdgufLtruMJzdbN5vgRoWntfB36j0RTntV4phWtQ0o7
	007QhJDcL6DGWNaUkgbcNbILBuGjrVn9o2SNZ/jBwlbkH75qgnGJATIjFKfGWGeOeW39o344e64
	UDYUhI6nzA944W/0eM6rSJsCXy6m6CWAVnfoR8wPCp9UR0E8f241o3PEzh/r9qidN2vlU4AIPw9
	6RebI+/akpdJkbmpTvxkODlWgKw0oxAPlk4yCo03c/Pe4nhp5Y8rRbHwy5byeHyoujyJszKtSyP
	FwmFmHezLO/hlXSQIZZleoJal254KGR0GPBM6w2TAe3yXhga4fHAQcSOXEhyKE8VvGK/kT5hKVn
	/9eCyq94aEL2nHDozEGG7K4WhSB/Ys=
X-Received: by 2002:a17:90a:e705:b0:353:5595:3247 with SMTP id 98e67ed59e1d1-35c2ff618edmr11579302a91.12.1774874690870;
        Mon, 30 Mar 2026 05:44:50 -0700 (PDT)
Received: from localhost.localdomain ([2402:7500:a19:69d6:9c07:247c:a7ee:78bc])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35c2ec27da0sm3916927a91.8.2026.03.30.05.44.48
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 30 Mar 2026 05:44:50 -0700 (PDT)
From: Sheng Kun Chang <nothingchang@mirrorstack.ai>
To: linux-newbie@vger.kernel.org
Cc: sef1548@gmail.com,
	Sheng Kun Chang <nothingchang@mirrorstack.ai>
Subject: [PATCH] [TESTING] just trying
Date: Mon, 30 Mar 2026 20:44:20 +0800
Message-Id: <20260330124420.82770-1-nothingchang@mirrorstack.ai>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"

I'm just trying if mailing to a list works now.

Signed-off-by: Sheng Kun Chang <nothingchang@mirrorstack.ai>
---
 testfile | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 testfile

diff --git a/testfile b/testfile
new file mode 100644
index 000000000000..e69de29bb2d1
-- 
2.39.5 (Apple Git-154)


-- 
================================================= Mirror Stack | Where AI 
ends wasted time. 


NOTICE: This email and any attachments are 
confidential and intended for the designated recipient(s) only. This 
content may be legally privileged. If you have received this email in 
error, please delete it and all copies, and immediately notify the sender.
=================================================
