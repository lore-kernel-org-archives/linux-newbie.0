Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51031DD877
	for <linux-newbie@vger.kernel.org>; Thu, 12 Mar 2026 14:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773324601; cv=none; b=CN3clVZoOR3VVzdTodAdMYsiXunRWS8Lp6FSQVrAL8Ywk5O9+5oW8TRe32+1gYMdnyeCOnIn8eY1aIS9OenDFTnZTNKLkkKjAZeeLVnsJmskgsE3Mwqx8PtyKM2VyLR9aZQZsurqd1iF6Kv5NxFUNW1WaFz5GSKWc4arynSRv28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773324601; c=relaxed/simple;
	bh=VlzrmZ8izjwQ/07Rz3BWRIvwjXD0hn5nVRYYBIzO/do=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ZZqkZ3Z4ccXJr3z9xhnlfZBBq6qRmxQo9NWGbgl0LULsU4Vjam1FaDyC8517ulHI2vrgRUFYQVv4FRUfvp1L0dl+2+RG0EXqajugzRNJlG7dNVbquM2mE4UiY4G9V5RjjTLnZ472gOUJ84rT4BC21iRRfNUpqz8c295ZCWCI6QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dMN2G1s8; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dMN2G1s8"
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-829abaaa92bso687108b3a.1
        for <linux-newbie@vger.kernel.org>; Thu, 12 Mar 2026 07:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773324600; x=1773929400; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7K9flz1FyKs5Km+qeucqSk0bJ42JpyCgj+UvDG5XuXo=;
        b=dMN2G1s8bfONofAPnD5OAhlWyfrZAniX6doruD4iT3fYr2Dz0bakZXrrSKmCl7MCkp
         083b2aPpfE7Tllt6RNmTmrkEo2P0R6mDB5vmk9vsInheP/S5SaEGGfj07lyvihGmCOQI
         /Do+0F1e5UfXEX3mt7MbPSujQ3It0qJWRUSFqgUOT3XM7Q49IePu2+t+fB8EyNTz8RqB
         iCVcmezwTKYsIyAIOtI0FHXFxa8jaCcOP6kxikvleffSrRr18K8tuoMC2fnGzMaKhbzk
         yIApiSjE/b07f9bgl2kmqs2sJ4wxUVSJP1jYpiBCjxpQG/Ve3JfOXtuLA2t+F7mxTuNQ
         PyEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773324600; x=1773929400;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7K9flz1FyKs5Km+qeucqSk0bJ42JpyCgj+UvDG5XuXo=;
        b=OKsqbwn8Q8+kolLTGtKyLZVqCqp7L5tU1LrQ79+3XyUybIqGpqZes0YMYYkpFoqMlX
         Tp988UAtU0OYvb3yd7aFq/ixyEES33RHLLWbEHEemHWuejiE5z+Jjc9pnyEmxtU7Ydz5
         jjrdLqEiFw1TSdU43dXcXkpLy/Fmhk8tMErIdREVdYZFvDII8M4E/UmCvPanpOsAaSK/
         qVWw4MEAFGF0ntKf1fzgw2s17FoNAtOoriRDGVz6kzJ11/AjPh/Av620kdH8rxMiDkuq
         JcDxi1CnwK4oModMWU7LFPwC5wKdWj5XfX3oVY2gcQhrnTIjbpnwCyWhGL50RTo4JSue
         iOtQ==
X-Gm-Message-State: AOJu0YyNhSRojEXbhO8/I2oal9rfM+A6QfIki8QxdqpKupZu74MSVkJ8
	DXFRc38Q8FYOtvzZgfsHAZ8jonj7G05H3fuUnvXP4CHZZOuQsUJmgmBNqVo1IEy/
X-Gm-Gg: ATEYQzxPaA7LUGqhQlE7GrryoO1j3MoDUnIxwWfV5T53kESN8Jo5UtZqHqe3pshYWth
	5PUFdgbA6d87UAplMFNfKyuc/cQ4hNsz9kSPRIiW8SEW16XZYD+gL611KUbDQNjeTBX1tlx/P5a
	hbVyGfxO2QXHt80Il/C3x+tfPzRf1+pVy8S2JxzLdHFR+JOIzfLv92SmXbRi+bVci72lPaQ6MFc
	qYQORXeVfinAtUCkUa+e5sMJ6NDNX5MrU4FoQnTsWsqOuJOfjQXfZSp/ysZDRDtv8IcnUMsvgTw
	h4xqZUMoY6MWnN4VNV2/XgpVaGEfQ7LEslvAHdTc33V3x5oQWfqs56n/SmrvPuNcOk7A/3nmA6M
	sJXYqUsN1zXB/fSj+wiaWIKsMNX3IvldSwlXZx2ZZ7wilIx1RenIwHih9Fvf/av9yHVHRSMMSLH
	WjCMXLeuC8Pr3uX7E/HwwRF2Qti44+JZmvS0SePA5/1bcP+6DYsBMyHM/TNUNbxg==
X-Received: by 2002:a05:6a00:170d:b0:823:9b7:9c0e with SMTP id d2e1a72fcca58-829f7069820mr5761521b3a.34.1773324599596;
        Thu, 12 Mar 2026 07:09:59 -0700 (PDT)
Received: from macintosh.wireless.nccu.edu.tw ([140.119.120.6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07340422sm3010710b3a.30.2026.03.12.07.09.56
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 12 Mar 2026 07:09:57 -0700 (PDT)
From: Eddie Tsai <vvvdwbvvv@gmail.com>
To: linux-newbie@vger.kernel.org
Cc: Eddie Tsai <vvvdwbvvv@gmail.com>
Subject: [TESTING]  just trying
Date: Thu, 12 Mar 2026 22:09:51 +0800
Message-Id: <20260312140951.63906-1-vvvdwbvvv@gmail.com>
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

