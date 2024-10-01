Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A6A1C688B
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 14:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727791587; cv=none; b=uimJMcCnXQ13NhHSx1BvwencZaGdKFAoNwEfmpyNK2NhxvYuupgxY+lUZ07r8ho/QwVskzN9gxeIAQxNs0SRfrY1WgXQHfScqL2qamJrW+QFmJJfpChEAtZiJH4vyiedRAjjtCqhWKPeChS/dxdUia5TIHnTueNuQUx/ODUcVVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727791587; c=relaxed/simple;
	bh=R5dGVIDzjp2AyHgflXJppj3Vdukm7cXtp6Cv2KI7O48=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eS5cqCv1Zpgyw4A1Kf8olNngIdR45zJ5RDtpAtU0neM5pmafKKXElWidNTzo3aGwVkbeL4+1PSUtD9sCrJkUXKc1uL8XC1LrSpqJeVLOQDeGv0IhPnjJknE6HuDxq+nNPEjSXwT5r4vMub1IsbHyUbgmNLK5826nU9XeGeqQJFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nmWko6VR; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nmWko6VR"
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5c42f406e29so7781673a12.2
        for <linux-newbie@vger.kernel.org>; Tue, 01 Oct 2024 07:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727791584; x=1728396384; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=h2EMSCTGty8JzGIwwFdaKhMyXgYLzdGjgN9XiQ+43bQ=;
        b=nmWko6VRP1OyX1oE16XdyjbpHI/WliHneUidhfKc1ITC57RIKILh3D2ZQ8kv5IOEpA
         YG2Z0zBVt+w74C1LmVUS7k/Iudq87Oe+9NwNvUVup8GPwD+J2Ifeo4CxZCm3sc8HRfCE
         m0Bje0c2qEGxAJiMaU7th0cqyeVXoOamaeHqkLWHksvVtvlOo0P9AYRXiTv+SFUDJXRx
         cXqTu2464Q46MhEVnuD1T7GxGINw/P9+EdU1yurqnZZxvu0xZEpbTvIUTHSe/jx0/f/k
         vtRHkVXxsiUQ2Gx+wP7slbH0ohPfBQOZS37bjqvj/oB/OJ4RU+Wjbp1bM9tkixLroWYJ
         PUAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727791584; x=1728396384;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h2EMSCTGty8JzGIwwFdaKhMyXgYLzdGjgN9XiQ+43bQ=;
        b=gVJNvz9GA3hHq3Bjvazk7Wqd3xIuv4kj5Bg11oNkK/J5LncRxTSQLQJNTgJTr0orfR
         dkJIkmulkSeivcXYgOzMXpJjw4EtmLHwDxMxoryON51w+0iYhTJm6eUKnDEEQ2PUZcOu
         TNc2EP5RNGMQzqrae84NoaxY+asFiwYkUOW4npqqklfIflqnQ8LvZa8IYUEw19DqH3vy
         noImG+aGHLavZzaq0hlzkB3l2ADtiv8KNPaS8BOMYxsQYRpWdmbcmgBeCHFE/UtPFOM/
         ewz7b2fTohfbEc7dqVO21bNNUye8W2G8kpW2HRB0Pyju9NqBcIDIAhxMvLJQIW7CNtyp
         h2TQ==
X-Gm-Message-State: AOJu0YzY52PcR5sMxpwhrTLdE3Esh6U3bj7ykOvvZ/g/uKmr2/d7XN17
	eJN16EO/YExDAodiPQ8Y+tNpj0IdPC0CS9KGv2Zo2jS8ae/cXnhqQzpNXfYJ
X-Google-Smtp-Source: AGHT+IFqNce20OeKPCDEjHyfO65JU4mPyaHWkLgY7bdQ4nwlvRcE01D8sFBs/qmyrvC/pe0ZQvH1Qw==
X-Received: by 2002:a05:6402:210b:b0:5c4:24c2:43e0 with SMTP id 4fb4d7f45d1cf-5c8824d3c4amr15222797a12.13.1727791583719;
        Tue, 01 Oct 2024 07:06:23 -0700 (PDT)
Received: from gmail.com ([45.250.247.85])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c88240a325sm6271521a12.33.2024.10.01.07.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 07:06:23 -0700 (PDT)
Date: Tue, 1 Oct 2024 19:36:17 +0530
From: Brahmajit <brahmajit.xyz@gmail.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>
Subject: Re: Build failure with GCC 15 in
 drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
Message-ID: <bcnviw2t7z5eyesdsb7hbe2bfnq3bcmm27j2qhhfrnmbphuggn@7kpsanakp43u>
References: <6pg5msxdt2p3ycdamahhf2ojxtn3nnrilzlnqv7zwv6mfzx3gy@k24avbsop6yq>
 <sstecaeritl7w2eu5swqmshi5vbvjpeaufwilqdg2jhtnsnpys@iggjwl7wmibo>
 <Zvv4-bm07rb9rfK_@intel.com>
 <cnx7qachu5f5oeqvovgikh53xbzvdy6qigfj6oukp7wazvmwtz@gumangbeu42d>
 <ZvwA5_H6lVvL1eoc@intel.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZvwA5_H6lVvL1eoc@intel.com>

On 01.10.2024 17:02, Ville Syrjälä wrote:
> > -static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN])
> > +static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN+1])
> 
> This should not have the +1
> 
> >  {
> > -	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN] =
> > +	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN+1] =
> >  		"DP-HDMI ADAPTOR\x04";
> >  
> >  	return memcmp(hdmi_id, dp_dual_mode_hdmi_id,
> > -		      sizeof(dp_dual_mode_hdmi_id)) == 0;
> > +		      DP_DUAL_MODE_HDMI_ID_LEN+1) == 0;
> 
> and neither should this
> 
> >  }

Does this look good?

--- a/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
@@ -160,11 +160,11 @@ EXPORT_SYMBOL(drm_dp_dual_mode_write);
 
 static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN])
 {
-	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN] =
+	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN + 1] =
 		"DP-HDMI ADAPTOR\x04";
 
 	return memcmp(hdmi_id, dp_dual_mode_hdmi_id,
-		      sizeof(dp_dual_mode_hdmi_id)) == 0;
+		      DP_DUAL_MODE_HDMI_ID_LEN) == 0;
 }
 
 static bool is_type1_adaptor(uint8_t adaptor_id)
-- 
Regards,
Brahmajit
