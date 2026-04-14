Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BABB35B651
	for <linux-newbie@vger.kernel.org>; Tue, 14 Apr 2026 07:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776150383; cv=none; b=Tp80uIdbRqYf5xwxz3aktXkfwVbYGAZ4zYIRvCInllpexq/V3if6WfjQW4pelPBcV1fbUswoz9EfO6KPf43cs1SKEAptKwWaTx6O0eSXhVuNl3xHhqRMWH6ID/vk9AwQ7AjOrtxqZ34EJ1byXfGtlroBqIImR5fIqam6rLJha7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776150383; c=relaxed/simple;
	bh=eW+CyzV9xarpOJwFGZ9htuH7DM/f3X3wtB4lir6Oj5c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ezvxcKwZ5IRhAOfQ50Pnjb633SIY76PvJ/3D9w0dLDgT0kPsBpK4+VnydU9kf4SKH0s4Dvr5KMr7+s2d6wxZoIKdUrz7LsR8qZX5cHc7PoQ/0grDE9+KYwdG7eBad7UA/RrVP+Q8MHl/p5p30Y2zJ1aawWsbGXK0KuT5oZwwoZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=srp7gPML; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="srp7gPML"
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-35da2d35eccso3816716a91.0
        for <linux-newbie@vger.kernel.org>; Tue, 14 Apr 2026 00:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776150382; x=1776755182; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dV9fx2Ee0vKk68kN9BLgJhiepgKZtyXitYmzANR3bIY=;
        b=srp7gPMLExoX2eDh+nGvqIEXHfDhrRHEBLjbab8gdGIWznvuWwyX2WRhnK5wE7Xfrp
         pddquQPeC7+hdLmyEiuQDvVc5m4G9l5QBKZ9wOQrxEwCKo3L2X+FRdaklx0l61kADxDb
         tkx2v360NvroQml3dYrY6e3MfcXqJbm1ySkoQ/KS1L0nZ//e9iSJ7gg+SRvolp8YdUqJ
         BvC0OjU7Bti96VBpBAMTXUiymzJnhjZYZnehpNh1gsg3ZuPISXFQ9Q4/7Wh2Mnh9ZteA
         u2pvMtSQ2hNRphKgxD2bQc4GpCGEwooJAefW0bFNijsVwhhNkMBnKu1xxucbdK2bWuTh
         3t0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776150382; x=1776755182;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dV9fx2Ee0vKk68kN9BLgJhiepgKZtyXitYmzANR3bIY=;
        b=i7uHTOyt7TPWJfYBu+L29WJIQVpz19DObhB5ixc74JKy/S1X3iBNDqWmz7RwfB3ZaB
         o1VSApIVOEW8V02jMzhdbY6J405LPgFjCkKvhJyBbvIc6znfYRt3Uq310r9WbiwzDV+c
         g9q2bMyAsNYhktqNDaddQLx4y21BWiW2TeuCAMqf0rXsZonhqG2uWRcGwBEbDoU8U55X
         9ZF1GGh1n3fEMwcfPu7FC4Mt7PHRPLAid7X9ErgWnWiZNbG7N6T4mB77M647KgvBZQky
         KR053Lo+ZyT0VNFF07ozZ1Ur+7tFKNh2tdkKRkid7EyIJRC8q4x7u0kTY6D2fBIjjsYi
         CBnw==
X-Gm-Message-State: AOJu0Yx9+yqVLzH3L227aDkP5+TfIyataFMk/VyiKc6OsUkmVtC6cPNy
	cjefCSHvMBWJ2gRjRj9zG7qrf0KypLG3SSTu4IYxBtqoqFiu4ZaOvgCB8fbuWRy2
X-Gm-Gg: AeBDiesbrNHKe6GvnUstvF8+RbfZQuNb5IUf6gIAt51KvlVlqcwIuCQGkrFCbJ8NS5l
	tjV0QTAgHLtCGgvW65bU4rjzu2F8Vq0gFZTR9YssRaOpgEXgTEHsBiflw3Ar+VQa17KhHBzA2vC
	Pz3uBRoL22eju/ASmXU1nT1Gbwdm0fdE82JCFx1d6LxnL01z7enVi6lvF4NOsiYdratofkKKAO8
	VIrgOQV3VLlbNSy4t1oQuLy3XulH7Ii5hhxzZwzZEyfNmfFB7qDG3rQuwGotEUtlyBtkAG93EJw
	lZuoiegXc6GyWGnyklm33bKMwAkxo7tWb3f5ybD+c8z2Z1HaZ9pVTD1hhZberkUOgg99hJosCSq
	aPdLk8wDtDlP9jthmeLNWvluiAR84f6n0wlvmKASQvxvhBXMDjfB/i+aKq4zhyCUa+9VPtBI3uP
	7oD/ElHyUf3hk5/ZpWiWR5dF6CCmkR+7SbdVrZLCaR7PJqxngh2OHzY01Jfb7ffxue+l3FUwJmi
	juQcxwmlp8KDbWqRO03YMvgYLphOc1g
X-Received: by 2002:a17:90b:2686:b0:35e:5b19:234d with SMTP id 98e67ed59e1d1-35e5b192575mr7500060a91.7.1776150381696;
        Tue, 14 Apr 2026 00:06:21 -0700 (PDT)
Received: from carol-VirtualBox.. (125-227-38-127.hinet-ip.hinet.net. [125.227.38.127])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35fc2bc5575sm1025452a91.3.2026.04.14.00.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2026 00:06:21 -0700 (PDT)
From: CarolineChang <caroline.chang.0.0@gmail.com>
To: linux-newbie@vger.kernel.org
Cc: sef1584@gmail.com,
	CarolineChang <caroline.chang.0.0@gmail.com>
Subject: [PATCH] [TESTING] just trying I'm just trying if mailing to a list works now.
Date: Tue, 14 Apr 2026 14:57:35 +0800
Message-ID: <20260414065735.7057-1-caroline.chang.0.0@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: CarolineChang <caroline.chang.0.0@gmail.com>
---
 test.txt | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 test.txt

diff --git a/test.txt b/test.txt
new file mode 100644
index 0000000..9daeafb
--- /dev/null
+++ b/test.txt
@@ -0,0 +1 @@
+test
-- 
2.43.0

