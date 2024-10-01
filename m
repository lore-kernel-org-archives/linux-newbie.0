Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3397AC153
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 06:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727763328; cv=none; b=ON6W+YPIvG7mKK6qv4NYa/5Y2UuWPrzrM5WWRwdAmXRl9cfI+pl3nKKyf+ZydJDPS6nAiZ2418txiQv2AweZ4x0VuPvzjQBd0pCn9Cxf8ObnPBWO6tP0A6/5QyxOk++ohu7BmwdV3PbwJ9Ke7NT1wajmhSfZOKgR7dnHOPC6rCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727763328; c=relaxed/simple;
	bh=N7BGnh5ikDw6+bXvfrqeNOrst4YK5b/+5jaNkq2j3Yg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=WA8XORfQSF3VlRqjVeuRio6/t936WPLX5mNGy5W3mAuNQccR3AauRGABa2CmykOfEbhPRyyjOWyC76Vyp6r9bf1WigJKp9uf68PwiahjXsYKV1e2MNVhsvIeaLhIH+0fQBibBxhhWTNIqC35hyQRwkfJBoyFng5unEDQOuB8en4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y+Z4AnLt; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y+Z4AnLt"
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a8d51a7d6f5so677299466b.2
        for <linux-newbie@vger.kernel.org>; Mon, 30 Sep 2024 23:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727763325; x=1728368125; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VtAeest+JqIC5t8eUvKiDxjohJrFORYtbAAsmoPWx/Q=;
        b=Y+Z4AnLtgzzoSaD0MvcRkTm1hTIQn7gBb7//6/MIl7gXxrABDdD3t0j7VnrF/zL0wp
         oRt+EAV8LoQqkPn2GruZAd5mDX1wh+Vcqa8vrotFphYGTRo2nRA3PhLH32CUrr8+QCOG
         VSqDi44WHwyrckGRAxTEwQcwWxk7Fa19glKhMbyGsqmJ+QzTJrZXgo2g90VyreN+Azqq
         5coQPkFUx6tAkbzXZHj9ANxvWP71kadmM/A6x7t2hlxkey6Pu9sMYX3HpGtFi5F44wlH
         BUDlHqcH3Dbf6bcQRxLSodbUw7V35lINOy6Dmr4bE0Q5tlLSklNbiTPMnmOoyN3twWjO
         BRHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727763325; x=1728368125;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VtAeest+JqIC5t8eUvKiDxjohJrFORYtbAAsmoPWx/Q=;
        b=Z1u268+J4jt4O0Ho9FmiTcvh+Ctd0fhZcXxE5vNPzWw+CdUBomRDPfb75hKmf6Y/lU
         9TKJhayEYqXIs5ePzFrEjdEGRLa+h/FKQ1K3WshKAp+TmjU6gG8kWe/eSiEcM7u7WuIA
         rVPRpF+18jfPUPMRfgULFZ7coEaY1yLDHz0fq93S/vn7BsjtbkFWgu3eg/+04KMy9KVe
         bZIFyW87Kn6VFVJaqD4woawBgCETKDx2tVc5JxpMxjvxyGYuunNTuu52wdsNm1ChmJW7
         wSLn05G47ZCYLst1kSJmetgu3H7ehX6BkmvMUYlTysOauSeSrZgJ8ZXzkmTLxEVj5mPy
         x59A==
X-Gm-Message-State: AOJu0YyitmXo7k/XKG2iKvWLaK1s07k2nqRwmmdtkqc2OWtxatmoKp2e
	OJepJinVvrMkkaYr5Ua2dGQREnzSldbZlIdYr2PCAzhGkg14YFvog2dTw4J+
X-Google-Smtp-Source: AGHT+IFWjVvu2pWBUltz2k8Z4A3Otn4HO8AAkgYqlwAowsLFqMmAzBkXJm1GDo7GNxYv/XED2NVU+w==
X-Received: by 2002:a17:907:3e9f:b0:a8d:4e13:55f9 with SMTP id a640c23a62f3a-a93c4919a9dmr1560190466b.19.1727763324890;
        Mon, 30 Sep 2024 23:15:24 -0700 (PDT)
Received: from gmail.com ([45.250.247.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c2947a86sm642055666b.124.2024.09.30.23.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 23:15:24 -0700 (PDT)
Date: Tue, 1 Oct 2024 11:45:18 +0530
From: Brahmajit <brahmajit.xyz@gmail.com>
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: ville.syrjala@linux.intel.com
Subject: Build failure with GCC 15 in
 drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
Message-ID: <6pg5msxdt2p3ycdamahhf2ojxtn3nnrilzlnqv7zwv6mfzx3gy@k24avbsop6yq>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

While building the latest stable release with GCC 15 I'm getting an
build error with (I'm guessing) the drm module. This is probably due to
combination of GCC 15's introduction of a new warning
-Wunterminated-string-initialization, -Werror and -Wextra

In the drivers/gpu/drm/display/drm_dp_dual_mode_helper.c file there is a
code section on 163

static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN] =
	"DP-HDMI ADAPTOR\x04";

Its from the is_hdmi_adaptor() function.
I read a little about C strings and it seems like we are assigning more
than 16 characters to the array dp_dual_mode_hdmi_id, and
DP_DUAL_MODE_HDMI_ID_LEN is defined as 16.

I'm guessing this has something to do with how termination happens in
char array vs char* and/or null termination

-- 
Regards,
Brahmajit
