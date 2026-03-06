Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436C43242B2
	for <linux-newbie@vger.kernel.org>; Fri,  6 Mar 2026 14:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772807422; cv=none; b=U424LZpJwihZ47g0wrRDeqcYv0gj9ieur4S607BGuHErTiCOPLuZjjdg4Joa3fCFYjqZlyLsxauMIPKpVcwMIkKXjDwX7DQpuok0WewBMtVbqanfLnR0uFXPzM4gbAoeu3PxvgNI5rfudtBv40egt7uUNq4kQSBA70Gc7nonCvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772807422; c=relaxed/simple;
	bh=VlzrmZ8izjwQ/07Rz3BWRIvwjXD0hn5nVRYYBIzO/do=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JkdoUXjuk/Cv4EySm3hs4bs2mTnxr/pjR51CmRVJCcuwajsDlC31xsXDfx6Z0tqLCdfzJSAUvz3oZ+xPdoCitpR7/o/M6HhjxhKioNxWbJD9DEGZjhlBvbc8e1eGEYS4AaXUMKDwe8j12+gqM+2kI6cm/rBJeZwfhBYY1C5qETk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PWKyTh2N; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PWKyTh2N"
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2ae4d919f9bso34931015ad.0
        for <linux-newbie@vger.kernel.org>; Fri, 06 Mar 2026 06:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772807420; x=1773412220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7K9flz1FyKs5Km+qeucqSk0bJ42JpyCgj+UvDG5XuXo=;
        b=PWKyTh2N3+3aOBep8Mnrrw7tGs5KBRFaZU7vyMa7TikSqShBfWAwZglxJafNi8nHky
         U9f16r3X8IJcubCBkf43k2QYUPAuE2yFZYq0gWEiGsnDxMBImDlJJh0B+VLz+HiDlggq
         GGlOEbPbJTodTIHqiuuq+7dTdnrDD2Sjpn+IHIhGoUSVlMBvGy1jnLRGWTt+OQAt3nh7
         Bi+SIfqzICiV5D0NRIWWb0x7cdF3FUAtW7D0bQUEEl4ehDRvPOK8D8MdWr1t4/50Q0ts
         UdrUpcd/atxMU0z4J7k4twPuPqUkWSCNHGlmuB+C/V7amtoNXrWZ+lna5ZOOJuu3zTtR
         j+dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772807420; x=1773412220;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7K9flz1FyKs5Km+qeucqSk0bJ42JpyCgj+UvDG5XuXo=;
        b=sgzYs++L3jgoeJJcZ02Iz9kN/Ybac6fPmRfxw3uDBfuuE9RVe11e6fiWhAfDyE3eoE
         YeEbb9AqKZXBsL6aBbggdH6r0gqx35V47CXbrA6KUJdnnT03fayh3hQWjpSsChFDXIrP
         xkNDjNUYR7xkZU4HhCr64MaX7Ruz/SSkfvFziokRTzO+8t7XcHOADzPGFCuijmtfJe8U
         9pgfvbXnT6Oc7XjmTaeT1tvSFzuQBTj2KFcyK9tndFL0qKVVVZ0PIOhc4NPdzm7t/N0L
         FR8mHpeow5piBZDB2Un+RBXe6O1/CK8O9dhC5mD3cP7u0Bc6ASPdiXtePVIx/tulgfFk
         TrMw==
X-Gm-Message-State: AOJu0Yw+zVOZldS094l88YolkQwcnNA6dQFe9+3D3sYZpPNPIkkuDIta
	9ZV5Ny1gvhGl0s7DXmb6T3Ur8wr7agjDIvS64CfN3D/W4P97Ug9NcaSUFLqwXm4jVwA=
X-Gm-Gg: ATEYQzwTKCGADr99SW/Iy9z4sg+qdJICMCzL3XztR1Ffh7y3s+GfKYYXD7yFsQ0cqRP
	h3pyYVH16BNVvgL4KSNJ2TJApiaRw2U4lA00wG7xQWE8jUjOujzCmV2ryZWlUle+Zadh0Al38m/
	l0FnwyUmR+JTqDd21pa0TUbdeOZYIuXJgZ6dYJ3Qswi9jSSAyvTJGP6K/KRKnr1hiAHWXi1BpsN
	vLXEmQbbj9vlQ2eaE8XfjzmUB4wzS/PD2yLeuaISvLSayd5aFocSTmA0NXMJHlHe0+0x5Q8OsKB
	MTelcGBbjK7hTEmnI9gjzupttcy76KLYp8ycuJiZK+N9HKrUcmb4I2uF46AQGxJBYazhdmYE9To
	t0zZ3FmiJHBASsXjhdt8hLsABwWvRIUZwDnZ93uDGUOXb1Cm/OW7HLzNCSB8bZ5YlnIkZ6rCpIX
	bRWs+3jfhlQ6S1SAY/HMLrUNrZyeOaxgbGMs5E+5qLEqppKl9viff+Fp8VsoBf5aDbJwT2kX6ud
	UE6evY/nWcRjFQ=
X-Received: by 2002:a17:903:3510:b0:2ae:5745:f0e4 with SMTP id d9443c01a7336-2ae82367629mr27568905ad.2.1772807419932;
        Fri, 06 Mar 2026 06:30:19 -0800 (PST)
Received: from localhost.localdomain (1-162-152-225.dynamic-ip.hinet.net. [1.162.152.225])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83f8c713sm21386745ad.66.2026.03.06.06.30.18
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 06 Mar 2026 06:30:19 -0800 (PST)
From: Eddie Tsai <vvvdwbvvv@gmail.com>
To: linux-newbie@vger.kernel.org
Cc: sef1548@gmail.com,
	Eddie Tsai <vvvdwbvvv@gmail.com>
Subject: [TESTING]  just trying
Date: Fri,  6 Mar 2026 22:30:14 +0800
Message-Id: <20260306143014.36419-1-vvvdwbvvv@gmail.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

diff --git a/test b/test
new file mode 100644
index 0000000..e69de29
-- 
2.39.5 (Apple Git-154)

