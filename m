Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C932223DE9
	for <linux-newbie@vger.kernel.org>; Sat, 21 Mar 2026 12:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774097715; cv=none; b=rkJxnZMVSZQo8Vhr7Qc/+QD3PJURu+m7+EOf0v5LjKrhc0qkQNNKhT4+SnxiWTi/MRRYjUnxStF46Bl/NKw2yWOLwBruJQZM6OaCgpUudCzjgdxZglPMdEB8JNA6ExEjo7Xj3av1UmDUeZv66temd+gtZZyxYjQ0TKGneEO93ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774097715; c=relaxed/simple;
	bh=NZ8W7TB2q6TSzstWemyPti3pokTNmBstUMQd08suACI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=WaKXyR390U3i/VUnbNTAJYlMpGXg6ikyi1ZMLP7L3NOqhFm1ETDmPLZ0IMkit8NCyhDzZPLfnh0d4uOw9sFtNEwFYm6dxQU2sf/WBzvNKddCErKJGINUoOomH+/nvgMfgG56kEZ/L9egHaOLYFlPyc6ei5IVlKr/twv4yJGPhUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VcoaCIVt; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VcoaCIVt"
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-8298fad2063so1362091b3a.3
        for <linux-newbie@vger.kernel.org>; Sat, 21 Mar 2026 05:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774097713; x=1774702513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ijr5hXeFwL+CVKQMYmYf4TRPqysWSwnC5s32zOes474=;
        b=VcoaCIVtRKH1PTb52mRgORIa/tfpibxxyQPiYSDc+LUeSfgw1dm9oKf/si427oOpS6
         KjC5ZD0joNdT+fVTW7RAb57a5Sycls95luJ3ZcMo+skMfM7ldU7e/3AHk8a1CRmNEaGl
         3pwaZ8GBLi3bS2zq2VuXxkYVrL9T16fGkqKX84trz/BVE2MRpwo2M8HsGiOtGViHcMge
         BtveNhtNTOoOmn8x5s7HCkkaZ9D0+YlUVLkwS/si32uYioUzSG11kO8PaEdPQgmM4txN
         UhnP3xCLxdqq/j8lS+g+KgvR+K4ehezsNJmt5ynGgIgioa4z89A5MP3AdfK9rMoh6YLJ
         rl1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774097713; x=1774702513;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ijr5hXeFwL+CVKQMYmYf4TRPqysWSwnC5s32zOes474=;
        b=a9XRgGs7owxyhP6tSrKIZ+fHMR349T7Fm8LGI5FQNjhQfcVc45mcpJEpJIuQPnus5c
         WxhBUNqL3tOqompEWDlKIoPlrx/gOWlT+LIHvJKSelYWOO1yQ3cMdBCbNZev3HGHy797
         6XOTrdXUr9coNEt8IAsUJnyJpT956m5wJKDWC6uE1zLb5l1SC9k6mn0tRaYNvDFc9t99
         oTVCG1loK3EsS7gKMGzkbxU3Eb3QsTK6iW+Y2I+lK9vEDEELyEfTAfCMVg/p7P2/JX9B
         jLIoUx+g3lsvaKn283nUsdiMJZIPH4WZRoMFxv7zcslGpADO32KLsAT0LkqabEhilEn8
         o1IQ==
X-Gm-Message-State: AOJu0YxlcPvVi6806fpZP5dNvxH65WrHDyOsZJbqVX7f038DqP3xv8SS
	aJemFwmu0hK9yEEK7ZqqToyww9qULsYBOLFoIOLAlq5VBF70EPTPzFf7+yG0t7EMQA0=
X-Gm-Gg: ATEYQzx6VoU69TaAvtNU8oNtJw9DB3HlYFVkcfRbX6+JcxXQxUu5VirxlijE/ZXr5VC
	Gi5Eg+ohpArKj4uF+nni8pK4BBN0uQ0t5barqsrIe9zJJQk8XRrdjY7mkaeQPEfNNwqV6YykLwO
	7n8IYgk5T5d+ZDo3qghqr7ql/u467GxgbgaBcX6xhorM1p1Eb7AYIaCHWYUewfUTBadh/2Ulj3d
	NV+g9AoIP7OjMIjJYuM8DtSU9gYFQlC3L8jQ27dbQr7a3qJxykRiZr/NouUEZUeFre90wqcUsDJ
	Qsi68LS5eeEJf4pk1CWvWsU+IN/ahqyj5b+D4j6j+E4orxPK+2Oii7QhJB+svM1hjKXc3m23Hh9
	2lC8yP/5o90gRVUh7rF6N5uapUcTOHypNDOi3A0Krx4jL6V6RBvrhTr1b9wINGZKQnZKiWDyawe
	eiScAPlyJKfKuZaYTZfL3KPo5233JSMrEfFO2yUXTYAMh404r6U3RXy+o=
X-Received: by 2002:a05:6a00:1408:b0:82a:6f69:7f7b with SMTP id d2e1a72fcca58-82a8c301758mr5271104b3a.37.1774097712595;
        Sat, 21 Mar 2026 05:55:12 -0700 (PDT)
Received: from localhost.localdomain ([140.122.53.74])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b0409b455sm4602647b3a.28.2026.03.21.05.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2026 05:55:12 -0700 (PDT)
From: Jeffrey Wang <natsucamellia@gmail.com>
To: linux-newbie@vger.kernel.org
Cc: jw910731@gmail.com,
	Jeffrey Wang <natsucamellia@gmail.com>
Subject: [PATCH] [TESTING]  just trying
Date: Sat, 21 Mar 2026 20:55:00 +0800
Message-Id: <20260321125500.34148-1-natsucamellia@gmail.com>
X-Mailer: git-send-email 2.35.1
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I'm just trying if mailing to a list works now.

Signed-off-by: Jeffrey Wang <natsucamellia@gmail.com>
---
 testfile | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 testfile

diff --git a/testfile b/testfile
new file mode 100644
index 0000000..e69de29
-- 
2.35.1

