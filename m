Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940F81C32FD
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 14:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727793258; cv=none; b=Ia0ZBm4ugC0xlqceAAPd85lFSqDQ5iBX83LcmfyF8LjCIJIH9qirB8JafBm+UK4QYBYuMSVZv5Meb2MaBFt5CuvqQF8KPTK0aPw+uRm+VLRL/Cz7PQfcSp3LhGMD0y4dr03buZXGeJNQdeqRfAmViKFGjlp27M0I0U8k049oVBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727793258; c=relaxed/simple;
	bh=idw+T0+2MDJlhftHVXtZ3h0mjr1KnVdcyI9nH8R+dJM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kTUxos6b73WAeHgStUyS3KQfipulXTmpZBRG9qyVgPUdWq2TILsjM4gtAzOK/TPItYdoj1E3evE8Asw9QBjv2UvsLmmXRcFJKo6vwt16cra+HqU47Z6sOSkgSORPKnuGwELrunLYYfwCDo98rPaLwlnWvKUJltwZrZJHIwATPq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wj+DoOlB; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wj+DoOlB"
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5c88e4a7c53so3600099a12.0
        for <linux-newbie@vger.kernel.org>; Tue, 01 Oct 2024 07:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727793255; x=1728398055; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eJo3cbrNMGZ9hVW+eLSNYpYn52kyuGnnio/m2y5uHFg=;
        b=Wj+DoOlBgpN5TQCDLusDQSJNS2V0vQKVQemINSyVeciQLjd9kveG8HosNNf7W+VCiA
         cueJfioG3oHuo34BSy2f6NiRPjUavod+DGCBeZg70BChAJm5DKC/86hOYBaxpfJ+4opn
         JX31EExXVp7DMlqbo0KoqxuwXKMKCfPfF1cqMWrIhNhObS0v1BFWuEAEv3RoB4/OdGX4
         6PvfbSIxoRiTzOYLaWcC7nL1H1sFKdzFPsQiLVAQbp0xaMfWkrajj/HHTVYZKqmZCWGV
         4cdkmvN0KkusV9wlY0xRJcruuR74URTtdI9NOUv2PT6i9Gr+DQ/wbCBIkxKqqGeuvXCq
         O2/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727793255; x=1728398055;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eJo3cbrNMGZ9hVW+eLSNYpYn52kyuGnnio/m2y5uHFg=;
        b=Wn0kyp/i8xLNh+m97ED1Bn0EavS3LjHsI2aZh8d3iZtcDHtODIf8/WvnUGEL62mYsP
         roGYVmgfVcafDBqo0JgCL4Tz2FUaH+nGuoJm/OTovDeIbLch0iQavebQVZ1xIJ+d1tYN
         E5Z8kNIRfcSA5goBP7dwtl91ERC3RCa0nypld4txavKIG8r7hnkCJttstuyspqKS92k3
         MH3jeyfqY8Y5udLEiwBlxccOlQ+uWSEeqe+cvwXjpJz/U02MXIx0v0s28hh5ecZnXJR0
         OFWWfgITvHkKX6t3iCA/dTNDxnL4PZ031/JsMLUTFo4XXVdO0TYdE051SoUtOJAs07hZ
         qREg==
X-Gm-Message-State: AOJu0YwaoBVCUO+chFj3AqZb1bh+fdkOTj/K5F9eAUrPQOZOoG/XvtsJ
	/yb6ZC0ul74mMwJ5l4hTsz2zN20rnulzM5sRglTYVENNqBfpivbp
X-Google-Smtp-Source: AGHT+IHBERAX6SLfvXQ42/bbzKCGZZcysbe5qEBewI0ms1nzy0jHI2S5GTo+iNLZir1pc8anDSzNhg==
X-Received: by 2002:a05:6402:270b:b0:5c8:9f3e:1419 with SMTP id 4fb4d7f45d1cf-5c89f3e152bmr5245701a12.5.1727793254723;
        Tue, 01 Oct 2024 07:34:14 -0700 (PDT)
Received: from gmail.com ([45.250.247.85])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c8adeeea19sm684999a12.85.2024.10.01.07.34.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 07:34:14 -0700 (PDT)
Date: Tue, 1 Oct 2024 20:04:09 +0530
From: Brahmajit <brahmajit.xyz@gmail.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>
Subject: Re: Build failure with GCC 15 in
 drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
Message-ID: <3sipz56fqtwp57fgbj2hfvmnwapt6cq5kpn32gtjsfbaq2mwvs@7yj6bjnqreb7>
References: <6pg5msxdt2p3ycdamahhf2ojxtn3nnrilzlnqv7zwv6mfzx3gy@k24avbsop6yq>
 <sstecaeritl7w2eu5swqmshi5vbvjpeaufwilqdg2jhtnsnpys@iggjwl7wmibo>
 <Zvv4-bm07rb9rfK_@intel.com>
 <cnx7qachu5f5oeqvovgikh53xbzvdy6qigfj6oukp7wazvmwtz@gumangbeu42d>
 <ZvwA5_H6lVvL1eoc@intel.com>
 <bcnviw2t7z5eyesdsb7hbe2bfnq3bcmm27j2qhhfrnmbphuggn@7kpsanakp43u>
 <ZvwDYHgZBth8J7YA@intel.com>
 <66g7zjcrgvatwfjsss2lsvdau7sutb6ofky5skp7elmwojsylw@74qfogtr7qjn>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <66g7zjcrgvatwfjsss2lsvdau7sutb6ofky5skp7elmwojsylw@74qfogtr7qjn>

I did sent the patch to dri-devel mailing list, Ville can you please
check, I'm not subscribed to the list (I'm subscribing now).

-- 
Regards,
Brahmajit
