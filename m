Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0899B2D9ECA
	for <linux-newbie@vger.kernel.org>; Sat, 11 Apr 2026 14:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775918828; cv=none; b=e7NkFRhKZyoZ5R4nz5CB3ZzaGgB2BkiiTpx6SNOOwRlx74aiXw51uufqnMb85vWjDIhcr8n6u4z3hEUGLyb5sTVWvE1MTOZ6oNKC19DTL4AXi86TSdKhofXe7mkW6bzE315Agzwsw1xbiqScdnDo9x6kDzazHDdS30uO1YtsAZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775918828; c=relaxed/simple;
	bh=WIQMO6PB34fOalvJuCk93meCIfhraCShVUbJr1RDGTA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=l7caEd4APWZMVfBZKO9sZ+uvSVlR0xN/kkrKphO+jubzKBr2OB48danXflEdpDyB9atnv6CWyCRTmhVRiwmpv/NJvOARFuXvHU5r8NlbLb0PFm0aN2Sr74yXBR/5RTZ2gJg1W/flKGGImuzmQJmeVIi+MisUMHpNaUWRDLMiS4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nm3K6v0E; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nm3K6v0E"
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-35e5770d013so90233a91.0
        for <linux-newbie@vger.kernel.org>; Sat, 11 Apr 2026 07:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775918826; x=1776523626; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vlcUHfz8rgKVrEa7yr6yTPM91pBTieisZkqanJa3fVo=;
        b=nm3K6v0Epu+B5tzufvssFEIldSQHm/82kNnIJj9r9mX6sDnptOG2Wmq5EtH52+m/Q+
         6fWPnFqM2Z0qfmb3YLw/eHBbc8K1oEG4geqb4umLMWT7NrhX3jLekxLgJc35r2z+hMuq
         Slzl6M3tGzRlz+DUjH/zIUAfIYUIpRv8T6HFQ17SDvxb8XZxwoO9CLaMaZTR9yrrdpu3
         ycit8uRhvdSgRZfyJskHqhnYuS2xUQWPmxgpbSN020qTVFC6GoJ/ZGKQPEZXGpWfu94m
         hjm48gFtL3vXwcQGBLpWeIN5RibPJcMfppszG3OPBLIOS9+EQI4/SJuSuuyjFgnsi1hp
         M3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775918826; x=1776523626;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vlcUHfz8rgKVrEa7yr6yTPM91pBTieisZkqanJa3fVo=;
        b=spUD4puG2lC4FwpWKv1fJgi1glFSpc7yDQ1XQo0za2kLsoAAwTd8mZQO+CGpcwj6JV
         f/3znQtKvRweHNRDgAhX367VFw2UBX7n/zdeEBOkXKrfspSF5E+7lk3rja0+ScBUQI84
         HYy0OKVweykMQ7KLTJ0ReWe/W8wimqrEZPDnCLDcHenKEY1A4ooGQBAWdM7IbvtEbL2R
         A/eWq7k3/LovSwq55LRv3gs/6S/5ncsfS+8x0ftqX2CRHMU9YHkhzAA4Yo/S4cpqeCtT
         IMjXDKDrG+Vv12u/lJWr57E2tVsyukcy9j6AJCevdHHmEhh4XNUtkI97cKG0SlTz7zK3
         vgdQ==
X-Gm-Message-State: AOJu0Yxciu8w+XF+P/alhqZwrrZ7lDYwDHfiTKO8NIUEvz2dX8fD+CeF
	gVT5OLZxQZm9PE7YPm1ZOkdQ18AfdLr5PR3WSaSeJMsKXpnrjkkK/nkjZ7dWpWjsrOA=
X-Gm-Gg: AeBDieuBQtLnexcb7NFUufjVuPS1BBYVFRy+iyMhQoLJdupuZ4BSdn4K2nT3v1EkOFK
	mKfhmjo1neEUy2K1zORLVJqiUEOrOtz8FttMIRqT49oeHAhv3YzZREmXSe8k0te0aM9I4fuovTv
	1TBrY+MQZGONaABSB0gmWDysHPDRreiv/cPFkmdcYBOR1CpvVHBOUjklYZs24Ho2QwNb5w5EIfA
	ZwtOfEZjj8OajZffykao6/VzzpnH11xd6Vuu26CJnBFj19xh6lyG3wyiqpTOD4uSojrtjuTGFx3
	iPBp5qdN7L+r+e+6uJrVYWaHoM0ORfbps4Tyb/enlDZ4pvdNkyCsGRvhU6yWadEHldSDlOKaYDH
	tsfLqIESHD3jHdAr0cetRYEGpKSO51sezC34Ewpzj6+/TTUN6P7kLLO+vQXW9MYONK3MKGKfbxq
	Nq0oNNgDuiQb63AngDJ6wXFLvwSDUV+nym+eN7lQJuWfjxIvcRUK978DqgEMt1HzNrpePahmk+c
	HjT3TUM9ewK
X-Received: by 2002:a17:90b:390d:b0:35b:929f:7e92 with SMTP id 98e67ed59e1d1-35e42827fbbmr7677296a91.18.1775918825774;
        Sat, 11 Apr 2026 07:47:05 -0700 (PDT)
Received: from linux-kernel-practice.infra.cloudnative.tw ([103.122.117.31])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b2d843c5c2sm54874035ad.12.2026.04.11.07.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 07:47:04 -0700 (PDT)
From: ChengHao Yang <tico88612@gmail.com>
To: linux-newbie@vger.kernel.org
Cc: sef1548@gmail.com,
	ChengHao Yang <tico88612@gmail.com>
Subject: [PATCH] [TESTING] just trying
Date: Sat, 11 Apr 2026 14:46:56 +0000
Message-ID: <20260411144656.1482-1-tico88612@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I'm just trying if mailing to a list works now.

Signed-off-by: ChengHao Yang <tico88612@gmail.com>
---
 test.txt | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 test.txt

diff --git a/test.txt b/test.txt
new file mode 100644
index 0000000..ccc3e7b
--- /dev/null
+++ b/test.txt
@@ -0,0 +1 @@
+aaaaa
-- 
2.43.0

