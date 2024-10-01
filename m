Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928E019C556
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 14:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727793426; cv=none; b=Nmh1cRNnM8DMVl1JU0NkVPCm+j3tuGdiVZRYnrgr4OofZvDuGLRKhKo/KfvyuDwrCRr1vpbVs3et4sLdJZHcF4+5YBnQkzH4/pjOacB+Fl1gYvjDPOyNWkp8RNrcyLTQUhOk1dm2BfOxcR8DBNG0iHQm4VTCydHJSyAZGglIHlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727793426; c=relaxed/simple;
	bh=qQEIftptqHQUazEYMGef9Y8gqIi6n38P70XqAlISW38=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GQirx3NHUz6E5fVGAH2tOCA5RsyWDcbtLlSqdg+qiiFBMtG2rFKZ/9qmoh7ld+eUb3FYT6yVa0Y5DY/qGRmc8P3DF+PZX6xTzFXJup8gx6zebmST1tNjdJluiR7RgdY+ZGNOUogQCFBg8IcE/EQ7XUktmSnyxfCczHAfVOmxrKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SoL9jtFg; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SoL9jtFg"
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a8a7cdfdd80so932784566b.0
        for <linux-newbie@vger.kernel.org>; Tue, 01 Oct 2024 07:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727793423; x=1728398223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yK6XSPQeuFyFtbXfA5WqInzgCnLkF64sx+xWC6/eYac=;
        b=SoL9jtFg6M2x7aoCl5nA1QF9eL7Lie0OlcRXhQ/YQ5SY++fn5O5qyn3O6A/Ba451R5
         B64dYhFAjo8/Z3xsQ+tXa9p7cZLcGPELKNMpe/y80P0MLQFk4tRfXw0uUk5LUMuPu1K/
         tITrTFvpTEYLeso1GaBEHHxksDgrbn+tJmGT2lDVm5Jt9BeY1HUjVpAIYQ1fVG426amQ
         IgWeaJjNN7fvjiXY2ZC+InxG4OfZSwcd3nOQo9EcbJI4neqKymhSyuakWq/43fDARYPG
         50d2Bay19EzmC404WAlhDla1NHyb6O2OjtqPuf2HFLo8Hp3XQHgx/o/nESa0nhTvZhnA
         G9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727793423; x=1728398223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yK6XSPQeuFyFtbXfA5WqInzgCnLkF64sx+xWC6/eYac=;
        b=X7ykyP4BIkpOT813aYBmWPDhP3Y2um37KVt2ZUhjpAZl29kOVFQc1DlnZAsKQopSvY
         jIq53UapkJ3Tcp6kgOanw3Tcju8au1jeSI2r1Uf2ca34m4GsNEuP/EMPoYzE+RfDsVH/
         fuOnwsLFROfTVd7nXbIsNRb+i5C+vVJorzEICU3s9rEfmFJqdczWiRnc5WeWHcIrQcr6
         eJJAzv4SRziYn7zCgZPb8U9dxEVsg7XmA/VINoH+upgFYO+XXwGphWaKHDhgj/o+o5Tq
         r0apHc/lQgxEEPZ0lvKc9Oweehp6JQwctqFyDeEahIc3dhXo2AchVICAqRt7M5B5bnQz
         OF1g==
X-Gm-Message-State: AOJu0YwUmsQT1oktQdrBb8N8dHM8zxkyhR+zwSW7G5AKZ3m0PLhahkcI
	mPqJu5laNA7Y+F2yumvU/SeE2/XpTTDof5p8vcYpGiBmG+yHUcKTV65eEphm
X-Google-Smtp-Source: AGHT+IFWC0h3m2sU9/nMgwWsyUbG9NBRs7q6MaxMITOS0cPGkNRc6MKxJZuVBDeoGRPqQUldZBkE3g==
X-Received: by 2002:a17:907:36c5:b0:a86:7514:e649 with SMTP id a640c23a62f3a-a93c4a69d42mr1660873466b.52.1727793422450;
        Tue, 01 Oct 2024 07:37:02 -0700 (PDT)
Received: from azathoth.prg2.suse.org ([45.250.247.85])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a93c2776debsm718856766b.34.2024.10.01.07.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 07:37:02 -0700 (PDT)
From: Brahmajit Das <brahmajit.xyz@gmail.com>
To: brahmajit.xyz@gmail.com
Cc: linux-newbie@vger.kernel.org,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/1] drm/display: Fix building with GCC 15
Date: Tue,  1 Oct 2024 20:06:41 +0530
Message-ID: <20241001143641.3484312-1-brahmajit.xyz@gmail.com>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <66g7zjcrgvatwfjsss2lsvdau7sutb6ofky5skp7elmwojsylw@74qfogtr7qjn>
References: <66g7zjcrgvatwfjsss2lsvdau7sutb6ofky5skp7elmwojsylw@74qfogtr7qjn>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

GCC 15 enables -Werror=unterminated-string-initialization by default.
This results in the following build error

drivers/gpu/drm/display/drm_dp_dual_mode_helper.c: In function ‘is_hdmi_adaptor’:
drivers/gpu/drm/display/drm_dp_dual_mode_helper.c:164:17: error: initializer-string for array of
 ‘char’ is too long [-Werror=unterminated-string-initialization]
  164 |                 "DP-HDMI ADAPTOR\x04";
      |                 ^~~~~~~~~~~~~~~~~~~~~

After discussion with Ville, the fix was to increase the size of
dp_dual_mode_hdmi_id array by one, so that it can accommodate the new
line character. This should let us build the kernel with GCC 15.

Signed-off-by: Brahmajit Das <brahmajit.xyz@gmail.com>
---
 drivers/gpu/drm/display/drm_dp_dual_mode_helper.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c b/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
index 14a2a8473682..295375868db6 100644
--- a/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
@@ -160,11 +160,12 @@ EXPORT_SYMBOL(drm_dp_dual_mode_write);
 
 static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN])
 {
-	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN] =
+	//+1 to avaoid spurious -Werror=unterminated-string-initialization warning
+	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN + 1] =
 		"DP-HDMI ADAPTOR\x04";
 
 	return memcmp(hdmi_id, dp_dual_mode_hdmi_id,
-		      sizeof(dp_dual_mode_hdmi_id)) == 0;
+		      DP_DUAL_MODE_HDMI_ID_LEN) == 0;
 }
 
 static bool is_type1_adaptor(uint8_t adaptor_id)
-- 
2.46.2

