Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9A61C5794
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 13:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727790512; cv=none; b=px3P6DbMdhomits2lZIWWhcDQdOi/nvuuoCrjUMWRF4LxG0O4oRdgbzomRTyhYChXRFgxd0HgJXxA8nb9x3iMbCm3dlqPIvwM3XZkuvZBpsQp2ZYdzEjZp+Jmp0sY3iQXgYvba//k0tmXyVkbndXzFGLOPIlo+xvzeyN9ydZCDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727790512; c=relaxed/simple;
	bh=kYXLG6rLtu20/K+X/qhVVBu/TGEeKc1JGN+qywHsLko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MNUTvwWCnfqHzwvjxiv0E6pNcWWlayPkK4pOQvQYVeBU6LhQbRTkEQ626qoHqmhqisTAZn7xnY1C/gf9N0M4nJY0uiKGJDH+iBCrJeQuwVOMUC7i7EqRe+lWaGQ4PIJ56YmBWZKXH8yxZ3OXAubMeJdDzaa8JJH/ofLLiGra4lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DugrrwRE; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DugrrwRE"
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a93c1cc74fdso846725266b.3
        for <linux-newbie@vger.kernel.org>; Tue, 01 Oct 2024 06:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727790509; x=1728395309; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gqOH6BDl5NLHvXwVgwe8dVPY8NFCP2qDc3HEwz39eEE=;
        b=DugrrwRERPVy2pbKuwcilg/VdpPDZoUHVpsSVEoIMthnQafEVX8LEaDlXkWMA3U6LQ
         5ixnU62wW4GKleD1Yqm9Yak/M6kC/voFY0YzZwiuuCJzrTkEcCg3H2BNRIaiWRzfbMR4
         8Kmvz3b4H/IYFJg7jLQojdfU01L7VVk2JuKELQRiQUBRxi9e4RnubkrYcpSLen9AhdJT
         CuJI251pCyjfwm7D6rC0QdsokeYAAHTtcGtU3qyOeZ4EpWImNJYipoMi6GCvdv6oC0Ml
         nblmG5fZoV8KETr3qZYAT6trb+R1OzD9492lxA5+lubIMpxXL2l3KdbS7jN/ULLf+irw
         +YkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727790509; x=1728395309;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gqOH6BDl5NLHvXwVgwe8dVPY8NFCP2qDc3HEwz39eEE=;
        b=n7Zf0zqzK6YupjKK9rl0AvS4yJYztd91GpixZIedhu7uUk4Yy9CVw1ysvEpXTvg2Qt
         NzP7PE3Zz+FgblisOOSiK6w16BBRNR0CNfX7TF9osl7Y+y5Xic2tBtb7RCM2vh1l8FfB
         VSMVcnQYABBQ3nPVzR8npr5as618WD8VZxo18wv5E+KITZHP2KHSK0oh0FyU/6oaX9wa
         1RnLMNnr+YoD4+8vpCJzSjvO3TTeMlbU8iLil2vDFfCnvTUTQRFahNd7sOd2cgth+tNJ
         KncyQIQww/JDzbsemPn/lBep7ayEh1T5zzu8f/4yPGk4JG2pWXOsB8vXnpOOaL5zSWf9
         i6Bw==
X-Gm-Message-State: AOJu0YxtTn7/sD7YZ3bRzLEMUpiT8E1KrJvtVTY7EM0qiSx8e8/zfYNg
	D8KbvQRcJWCK/d0AwF1OM3PDwvwXp+RfLOw4v3aBjiAgegcfHwsx
X-Google-Smtp-Source: AGHT+IE0xpNucCCdIeo0mnXRgySpErYufr/O2DJZrZJrq/Qzx2YGxgeCvpMDwyVPcfgJlQFh2p0R0Q==
X-Received: by 2002:a17:907:a08:b0:a8d:3e67:19fe with SMTP id a640c23a62f3a-a93c4a6996emr1749679766b.41.1727790508621;
        Tue, 01 Oct 2024 06:48:28 -0700 (PDT)
Received: from gmail.com ([45.250.247.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c297bb76sm727852766b.170.2024.10.01.06.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 06:48:28 -0700 (PDT)
Date: Tue, 1 Oct 2024 19:18:23 +0530
From: Brahmajit <brahmajit.xyz@gmail.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>
Subject: Re: Build failure with GCC 15 in
 drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
Message-ID: <cnx7qachu5f5oeqvovgikh53xbzvdy6qigfj6oukp7wazvmwtz@gumangbeu42d>
References: <6pg5msxdt2p3ycdamahhf2ojxtn3nnrilzlnqv7zwv6mfzx3gy@k24avbsop6yq>
 <sstecaeritl7w2eu5swqmshi5vbvjpeaufwilqdg2jhtnsnpys@iggjwl7wmibo>
 <Zvv4-bm07rb9rfK_@intel.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zvv4-bm07rb9rfK_@intel.com>

On 01.10.2024 16:28, Ville Syrjälä wrote:
> Looks like gcc is warning about perfectly legal code
> (as far as the C standard goes).
> 
> But we could work around by adding room for the '\0' and
> s/sizeof(...)/DP_DUAL_MODE_HDMI_ID_LEN/ in the memcmp().

Sorry I'm new, but can we do something like this?

--- a/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
@@ -158,13 +158,13 @@ ssize_t drm_dp_dual_mode_write(struct i2c_adapter *adapter,
 }
 EXPORT_SYMBOL(drm_dp_dual_mode_write);
 
-static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN])
+static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN+1])
 {
-	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN] =
+	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN+1] =
 		"DP-HDMI ADAPTOR\x04";
 
 	return memcmp(hdmi_id, dp_dual_mode_hdmi_id,
-		      sizeof(dp_dual_mode_hdmi_id)) == 0;
+		      DP_DUAL_MODE_HDMI_ID_LEN+1) == 0;
 }
 
 static bool is_type1_adaptor(uint8_t adaptor_id)

-- 
Regards,
Brahmajit
