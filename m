Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31EE221721
	for <linux-newbie@vger.kernel.org>; Fri,  1 May 2026 06:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777616261; cv=none; b=dgTRfy6Mhn8WRxOHaqPr6lcwujEgpyLNBmR9qo+ggJWt/taDknOT24aglg9vujSbflnXbbjo3skLsgRwtluH5AFLskcK8SZ0JS77HQ7MAbeaY6a43Hl+0S6ify3bWflFn2cSAMIE2ZItSYM/SOX6cEKDC4+BcMU1zqodZvxXWFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777616261; c=relaxed/simple;
	bh=2kQR55hUoZP1p0+dKK8HsKCOhj69qyLHzG8JXmouYks=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hpGtsjKrqdb9NjsXm8kC2dQZLxved1N/JAbsMiUwyuN76jKTBCNjm2hCLTC+S3td/OET7PPNDPdw297txClGF58uXVZmZ/EjxYvhPmrWmIA00nXtsUeJdpLU7/CTgx10qvUdA6wjK0WmDZMLY7dU0XQ44tFsaNGplytgWTH31+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CSgyktrr; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CSgyktrr"
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2b461310af5so6652215ad.1
        for <linux-newbie@vger.kernel.org>; Thu, 30 Apr 2026 23:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777616259; x=1778221059; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2kQR55hUoZP1p0+dKK8HsKCOhj69qyLHzG8JXmouYks=;
        b=CSgyktrrR4rvpJLXmuotiKuk2sl0SmHG+3GXE12qmswlgIyRfRi7We2xyFYtsClzHq
         6+6wYDgoTkHxKUApFLcGVfzOtjJl8p8XEQ0FUp0Q1mGO3S4WlJh0nRZ/0CTQYlv9Md7j
         1Jm42SDJOFVfWrC8q3RQdnGytF/B8MBbrYnxKQBVdxjczapGNZd+8/xLGd6qzltIc7gf
         s+Pu7Fe1nPVDBCr1HaryLmlHXxJnx7GPQdHrJgjclhP6FudwO3e7oO81mw4Uawo+nwNd
         +3SSifSWgclJCmYZzTeDdgXrqqga8w2jSobdcE+NM8LbqEOM99DBeNrYpk0zUfwz+Px+
         jryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777616259; x=1778221059;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2kQR55hUoZP1p0+dKK8HsKCOhj69qyLHzG8JXmouYks=;
        b=JZ+4barZgQ/Kc3ZyaqPFQcr/S2NX5i1JeUE+HZ/c7Vd8cFCrDPETcNb9Rext3YSYsP
         tdsthSpailGeK0T1Et6dRfYucTJ3g6uin9jiJbFxQzeIzIt38c6NaG21uZJRWvZWFHK0
         xwMforv5oJfXoLjTdjWQoI2zyZXDFr4zMcEVHZcSbLb7ET9QlwxaGbwOgRaMLYTpJZsb
         SW2GuMVnwICP1wqXf2e4ulG4kkLA91y4GEyZL5WNfHHc4QP92dwL0I1zEtYLmHoeONz6
         VXC3m7fCCJDZZfUS5Im50ZpUZCZx66UYNHq8LSElqGpqiMlOi59wUsU/SOcURXdmnYAN
         QRAQ==
X-Gm-Message-State: AOJu0YxBcyDu4BHfjbtICWO2VHvpuyCvZxnoDhZXaY53dy8OIA1R+A4i
	TWLqtQqYNIMHifDb5avuMGtgDX+diMzstIILoE5XxkjtN4B2WKjvOYuncFcgMcbG
X-Gm-Gg: AeBDietRfKM81hn0n2KjTJUyw3QVd+BIsHIArjHOx1+/QwnmJA+iDSPjHMUmZYS0+js
	pOykSVvp5ssf4e2/9JGjJVwV7K0wMM+Ri3g+ouE/EAqSM+V88i6vpvWJfa6ykmAZUS0XjjfnoaS
	6ldde1i4ilBhXS4/m7623ycIxuJonTwyGPGa5n1Up/oLx593inFcve8xiORxSVpHLOab3BHUZbZ
	QwTpYRg0o/u3AbVfkmMgb4V4Q/Bwn0lYoufKmYBinjlwRgQ1leFrFjtiUin8ngsxdCVAvFEVS4P
	Dvr2Gedj2Q26IZx3ObqYdEw5Xy48yJ2eh2Xv/0fgGCFLVDt4s/cWpS2OAmL3sPUhB3yXMjpYLbQ
	N4zg0xCJDd7PTcxpU3keDGX3w4tcnjdoHqoHJ9ptq19zPV1kCgcDr72Mwr9CNl7SDNuqm6iXfU9
	RF+pM/lol1x20io2j2AIGUTwUcKagZPz20wv3mFwMWnSUTAWyU0U1JIr1dOhfuLkStI+yxeGzd3
	Hic4/Yg9di0zQSOBX13UXLnevS0CfghhvD8vZCZ
X-Received: by 2002:a17:903:94d:b0:2b9:6a4a:137 with SMTP id d9443c01a7336-2b9a434a22cmr48464505ad.15.1777616259083;
        Thu, 30 Apr 2026 23:17:39 -0700 (PDT)
Received: from DESKTOP-84HKR32.localdomain ([119.14.59.61])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b9cae363d9sm13450265ad.57.2026.04.30.23.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2026 23:17:38 -0700 (PDT)
From: Wis Chiang <hjtiun852@gmail.com>
To: linux-newbie@vger.kernel.org
Cc: sef1548@gmail.com
Subject: [TEST] send-email check
Date: Fri,  1 May 2026 14:17:35 +0800
Message-ID: <20260501061735.7444-1-hjtiun852@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

This is a test email to kernelnewbies.

Thanks,
Wis Chiang
