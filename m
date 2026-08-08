Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9093BFAF7
	for <linux-newbie@vger.kernel.org>; Sat,  8 Aug 2026 11:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786187698; cv=none; b=Vg4iJcFS+RM5FEQkZhp7c+MxSugNXfNCfOPVhUMot3J8jhLL6J8MCz8P0vmJY41kmccc5ebAmChKP20qr+rm0ZmiTtfy3enwiv94lVPtCGzBjZMkvLnuljvorpHb5MzuKGwDb+bBNIUJ9cKqmcedO2RxSIPP7lfbXO/gYxUBfP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786187698; c=relaxed/simple;
	bh=5GVzSmpnaVieNdRKEVf6OY0/4g3LpHXHUk3off9Pq4g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YSh11w15tCeJtV/t0YuaOTIQaS5bmjyFvse4KJt/HZxIWcvTN759PNlo9PRKnJopiX6OyaVQiw5BOsa22DEaRwUKE15SBxdLdoLzGIo8bs+OsLKdRg7+5mkKw+zb95KJSGZ3dVCnwxNMxllAB/dLDduIehAoVvk/CyqGzDpvdG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TIy+TMBc; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TIy+TMBc"
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2caed617615so4754115ad.3
        for <linux-newbie@vger.kernel.org>; Sat, 08 Aug 2026 04:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786187694; x=1786792494; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=8ZXTQOIqxLa2kzcmeCHQXcGa6DmeE8r7zNAxFmRSJKk=;
        b=TIy+TMBcMwtcm1tV+1Hxdvv9fLSMIdBrXp9wXmhILvwM+Wpu9c/pp0xrQVZGXwcZUH
         9D1MZ4tCU1FewAdB03aUEWxoMdxqyy6doGkpFw3UuhS0GrypBNF6rqWg1i3W440Kavbu
         iHrYBmntYmwrfNx/iLtGQby1M2neQcB0emT3MYG9/5bUtNf9KfIltrAGnCDHMXdpKPxW
         tkmvqLx2AcPR0Nq00exsZ84JSheYhmllRxXrCPqG+Hd63Dmw+jx9Zd60LYBySdacc1fZ
         PcpvWIZ2Age4hBR/Bp97w3i3lHbR0Y2UXGTEusn/eFQnR+Mxgay325UL4ORTFdeIpDsR
         VOQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786187694; x=1786792494;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8ZXTQOIqxLa2kzcmeCHQXcGa6DmeE8r7zNAxFmRSJKk=;
        b=JeHXh+CndAaW+ITTQRRjsKl1W62//AMSuwsrCvtKH4t1PtnYJQCELXAdcAWCnHx+Ut
         I6GF1PEUoFY8BwX87DTzFP/vSntVGRpqjBx/e+2F3a5VEkqtxM8gpyFCWDCSyPD/GcWX
         7Ea4IyAIg8e3rCgSRduNzSHjJ3U8jj/wxf2/wJMbWOOyo+z82qp4QiK4RRcwQtEXBIt5
         0GtBQ8jCN5uIACCJZjnZs94wCyjGRbTgPSf+HH6rjsXCaG963QP6ZxSY/zP3aaeH19AI
         hRMxdvuDpy+wE/DNIJIpuQQUwfbjqXL0cNzGug/m+iAzeKak5MLw/6clFDKRzRgCGDSf
         RgqA==
X-Gm-Message-State: AOJu0YxfUjF1uxPmuXGxnnO4fMZX2oHrXk0AJSs+EKONGs1VaOr3BmQH
	ay+soh4aoqKMH5JOYmo5OqC29J6UBH18K9pgFUlTgIHyZHLLv1Uw4XBXp/nOu//2OPQ=
X-Gm-Gg: AR+sD12FRmSpmjmEMs4ahdO/V7zHkb0LIL9n1VTaWS5tLSyuj6gtocXP/7fdPa1zQf2
	cowTDV+vf7blCj0LYc/ivIUSiZ8qRcDnKCywY39j0Hp5ieTZyzx+1NFtzd2QLKSKpUC4b6esoP0
	QpBa0Em7mkSHx++hnNjdIEEBlp2xdz57lZgzpKQ+l9QRxEE1tRzFxgPwgUzclHpja9+VVVR5idP
	Dzq+qPvvGaBeK2LIE1y+mq7ySsRwt3SHyOs9iOtk/C80xLvLfsufKPfYwmNuZ0+1h6X/waaHR6f
	FhbZ94PitqMuapjFY0EuKqw6GNci4CG1ISi9VVv7yejkyUcKujWjKr6FXHZLis0jDd3h4B3Eb1X
	Za+fcKMDsk5/oSBmCFFtxyHsQg1MRYiw+sayCdBV9pG38SBBWdQCAU4UhFHjOgInL1o1O/ewJxJ
	mjOJCDFSpt+/E31xhYBHyi/iAXsKL//2egWC2nyghQZdQmwmUTHNZn27Q+CcJ1JFhWrRe1ygAm9
	DDPQO1I
X-Received: by 2002:a17:902:e783:b0:2c9:aae1:a611 with SMTP id d9443c01a7336-2d0ca961afamr395151555ad.23.1786187694310;
        Sat, 08 Aug 2026 04:14:54 -0700 (PDT)
Received: from LAPTOP-7BPRJN5M.sslab.lan ([140.112.90.80])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d14ccac6d7sm17891085ad.6.2026.08.08.04.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 04:14:53 -0700 (PDT)
From: UsoNemo <usonemo11592@gmail.com>
To: linux-newbie@vger.kernel.org
Cc: natsucamellia@gmail.com,
	sef1548@gmail.com,
	UsoNemo <usonemo11592@gmail.com>
Subject: [PATCH] I'm just trying if mailing to a list works now.
Date: Sat,  8 Aug 2026 19:14:44 +0800
Message-ID: <20260808111444.1265-1-usonemo11592@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 test.txt | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 test.txt

diff --git a/test.txt b/test.txt
new file mode 100644
index 0000000..f8a25bd
--- /dev/null
+++ b/test.txt
@@ -0,0 +1,2 @@
+
+I'm just trying if mailing to a list works now.
-- 
2.43.0

