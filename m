Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52AE2A1D2
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 14:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727792076; cv=none; b=SR8EAF3cAfgeZnrQ8puWJCP2TW0WZ8MZ/UaGbk1jnjYQdq2Top+5+3ep93ZQ5bQvv5NNgB/+wPOqTK2VWvmzRbAFMtgfeim1MsKQkqPeTWpVQ7zBB2Ly8DN/2T+VbN9+Wugyn7GT3IauC76P0/qc3K9Qly4EPEh0UgB+7RIJJvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727792076; c=relaxed/simple;
	bh=NvWURFpB+Y8J0L6gXrtwIFIhl1v4LXY8KWcYuigF0uM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nkEHm9MWw+Iqq6+9/GUg6xObXst5orp+tCJEo4hAf8Q+XXe3kb9+Al3VYl/5WpXDpzwgnVvTC0hpgc9V12tIqtWfciSmuiFvZYaaBtj6js0Yr2x63oqzNwvYkuTuN1TbIbKitCR6WybYODWQgGawyof6977Myy8Yi59yaDcv108=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dRW+/QK7; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dRW+/QK7"
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a8d24f98215so53856566b.1
        for <linux-newbie@vger.kernel.org>; Tue, 01 Oct 2024 07:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727792073; x=1728396873; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QQ8hybuubm4OkvRz/MrdvXgHt5FBmDpN/JTfEjB/uSs=;
        b=dRW+/QK7v+FTGPAfWgKp2NDRb/bk+jYskech3F9K9OL/TyFBun7n4N2H6mvPDSGAvn
         vT0fLxR7O5AmF7xORv56TEqnEK3duy2XyAqtcKJikT5RW9Gr0itPirpVmOYorrwuMJtY
         pU2JcFNAKCVHNBDUkGcK3rpjIk+dEfLWwFssEM5INaFpg2/INiY50w5qssLZqKtg7k1P
         fGtQLNPdDaIY617rO/R7M4AQ/8D3L0EaXMFZPpSkos2f8hH/qFCEmTIT9Bh7ufickVTl
         URjFQ750FxHzysfUgW+SaICwl8bB1jpfYHMVr4ogUHJJJmsWKv/hEo5v/DwJB2pSrlHl
         MMMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727792073; x=1728396873;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QQ8hybuubm4OkvRz/MrdvXgHt5FBmDpN/JTfEjB/uSs=;
        b=LgCUDEULIvZnVqs7LKnC/Psi/LFA8eQToOnlKjkaW0LXzUIDnQwo2bWCDpVcuwakqK
         dRXcHnz3UFeiFOrXRmhe5Ok8IWk+b7OiwKe5Qj6J0UvZ3/aCIHYpodi3QNcF6UplE9vn
         c/ee/zoNuNvqTdYTvajBZr9hzA3XkCdv7BIZpWIsagKPp2T00XxM3GJm1mS1fGLvr/1o
         QJWPUgoh3rQJT1F4dUep00XurB7czDbflWsCT8TAYpEu4StjTPPAIyD82eqs/YGNi8zK
         eA6o8cXleCEdg9I/GCkciow0hh/b8WYAXcst2eW+pAcj/ECkYUZAiPqhD0yjW1m+Jvwb
         9K/A==
X-Gm-Message-State: AOJu0Yxq32KLQQWp5BDfWctAc9ql6546GvkVJcsHCvT7fxu3H4G3YbY1
	aEOZMdiBCfSf0+KFFnK5s5+FXLSgKztMw5Jajl6AI59Lwit+icKB/BkaSi4T
X-Google-Smtp-Source: AGHT+IE2kjbkfXN1Ng4lKTzKHleL7WcbfhEThxLQtXU2GDYe36TQunnv5vzRggMD+OOCdFtuQKCK3A==
X-Received: by 2002:a17:907:944f:b0:a8b:ddf4:4701 with SMTP id a640c23a62f3a-a93c4908549mr1954048466b.16.1727792072943;
        Tue, 01 Oct 2024 07:14:32 -0700 (PDT)
Received: from gmail.com ([45.250.247.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c2947a7asm718326166b.103.2024.10.01.07.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 07:14:32 -0700 (PDT)
Date: Tue, 1 Oct 2024 19:44:27 +0530
From: Brahmajit <brahmajit.xyz@gmail.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>
Subject: Re: Build failure with GCC 15 in
 drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
Message-ID: <66g7zjcrgvatwfjsss2lsvdau7sutb6ofky5skp7elmwojsylw@74qfogtr7qjn>
References: <6pg5msxdt2p3ycdamahhf2ojxtn3nnrilzlnqv7zwv6mfzx3gy@k24avbsop6yq>
 <sstecaeritl7w2eu5swqmshi5vbvjpeaufwilqdg2jhtnsnpys@iggjwl7wmibo>
 <Zvv4-bm07rb9rfK_@intel.com>
 <cnx7qachu5f5oeqvovgikh53xbzvdy6qigfj6oukp7wazvmwtz@gumangbeu42d>
 <ZvwA5_H6lVvL1eoc@intel.com>
 <bcnviw2t7z5eyesdsb7hbe2bfnq3bcmm27j2qhhfrnmbphuggn@7kpsanakp43u>
 <ZvwDYHgZBth8J7YA@intel.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZvwDYHgZBth8J7YA@intel.com>

On 01.10.2024 17:12, Ville Syrjälä wrote:
> Aye. Please add the small comment I mentioned, and post
> to dri-devel@lists.freedesktop.org
Sending patch to dri-devel@lists.freedesktop.org
-- 
Regards,
Brahmajit
