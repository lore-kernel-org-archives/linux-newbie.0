Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6C127A91D
	for <linux-newbie@vger.kernel.org>; Sun, 23 Aug 2026 17:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787505075; cv=none; b=cJ/Vl+Y26pmPzu0baEllnThJ5/ECAD9DLW9DgRXnBcw3p6xvp+jStofgKpwNeh0Nk7UOnsuhVjURFpej9vTkWDUBUK4vWXuiBpBRMdSydHS7WYDEV0/zaWU7jhZLgf/uYR4yo4+fJ6/QdnYaGodVg0MhoZzgAb/LO8/xyEjA6xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787505075; c=relaxed/simple;
	bh=EQkHBkDflfqJ53i1K6bYMVNbHpfaWrpw31Gju9Uq1d0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pIRfrbn2tfEXyEAbZseMxv/AHZxZLUWJwTlFaFuKpA8hgn6heQbGJ+SJU8jgltUH+5pM2pBPrQTDLF6YydSPBneOkLB+mZW2fQJ7VHMkPSNk9kHGk/YLc4SajC1f/xY2LhIdRMucd67uj6jwVDj2alFqy1NTHRJdKqm83pUfORc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=sxuFvhN+; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=O8yNuoJW; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="sxuFvhN+";
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="O8yNuoJW"
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4hSgYK3J2RzMlMp
	for <linux-newbie@vger.kernel.org>; Sun, 23 Aug 2026 19:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1787505061;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mPwLonSlu44sJul2h/4Z2DR4UjniS7Qogn6hjKZ0NU8=;
	b=sxuFvhN+u0aCFFE/oNgUtsqI0q+bbixdquivTf6PTauohIUJulHJmTFnFh1ASC3Lw8SH2P
	MtOpDxJ1S/VbiO9YQUzqVMjzihnkZcH5mmEihpDDwcwvmPUQ1mQ2hUdHEM7oLonbHE8sSd
	3CKswbpDuU7idEviz9IkgAQNgm7y5oZe5afssITkCkX5GQsFQEFfshgd2ANo9KtlPqcgFO
	7NT5zQZra+5dhVRs7pFo1TstLikN883hIhJ/IlKRYDSDFYNyXWYSD6v6je4kPcaImQIlEm
	7rqyEBuXwaPHtjnetTQa0GCAAR9gEiuLWUCxihR41FFUeggDW6Xr4EkFpL7HqA==
From: Manuel Ebner <manuelebnerli@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1787505059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mPwLonSlu44sJul2h/4Z2DR4UjniS7Qogn6hjKZ0NU8=;
	b=O8yNuoJW4sBb+RheU7kekf0j6W6NDMqI3K03LWn1J88Q7RsUfvFeP6tRay2cXBMocGu3Zv
	Mh0DVYp9l7NW1Ird8mw64UuZH+zIBWXHECMNI0otTZESuilIx3vN7btOCBP8/naqaYsY2d
	9HL3b69XD5rOY4h1jrAkcLMnPExh9/j91imRwtun0pj0+aI8PgWiQ+RgRomPU0FAKR+XjG
	Z+w3I/XUp0PIeaSYGBGI3U8Fud/lG89gg4p0yGJbuWV1dbpl11lErhOVFD+AIYDCjwvSie
	27gwJt+1L52G2E9KMunZZ9KwhGsdHOuhdfFIHjRUJve0ieoa6nAg5/Fbzdzxxw==
To: linux-newbie@vger.kernel.org
Cc: Manuel Ebner <manuelebnerli@mailbox.org>
Subject: [PATCH] docs: livepatch: adopt type-aware kzalloc
Date: Sun, 23 Aug 2026 19:09:47 +0200
Message-ID: <20260823170946.312486-2-manuelebnerli@mailbox.org>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-META: zp631yem6ibtw56xos86hm54ng5gspg4
X-MBO-RS-ID: 588e0a34232b1eaa84c

Hi, I would like to help with the introduction of new code, but I can't
figure out what do to with 'hw->sta_data_size'. 'gfp' can be dropped,
because it's the new default.

Thanks
 Manuel

Signed-off-by: Manuel Ebner <manuelebnerli@mailbox.org>
---
 Documentation/livepatch/shadow-vars.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/livepatch/shadow-vars.rst b/Documentation/livepatch/shadow-vars.rst
index 7a7098bfb..99856bee8 100644
--- a/Documentation/livepatch/shadow-vars.rst
+++ b/Documentation/livepatch/shadow-vars.rst
@@ -127,7 +127,7 @@ allocate a shadow copy of the ps_lock pointer, then initialize it::
 	spinlock_t *ps_lock;
 
 	/* Parent structure is created */
-	sta = kzalloc(sizeof(*sta) + hw->sta_data_size, gfp);
+       sta = kzalloc_obj(*sta);
 
 	/* Attach a corresponding shadow variable, then initialize it */
 	ps_lock = klp_shadow_alloc(sta, PS_LOCK, sizeof(*ps_lock), gfp,
-- 
2.54.0

