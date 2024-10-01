Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1761C9EC6
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727791975; cv=none; b=PgoesX7B9qMjMy8sLZB6C86AUTxnOZ39MAYwmZYkMwIjL3am/V6t90SO5JYE9wAcr9SuXShKmgLPqLyTrzOWyf79SRaEwTHubwz1YbcXicQJM0Eao287cW3fpCKfp1PgpsnljcqgCYJPI4aAJh/AkimsQuTUEbDBltGPnQNk1C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727791975; c=relaxed/simple;
	bh=APPjguud8qT2sNJGGhw1/QluWK5rxBq/ESVLAE063lA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WB+STWeR/ZD84Vg+YjtDXWSL4oNAyPm73drZF50Yfc53DfurzGd2kAnppxcPdZZ3lgX+p/uxNbDXI7lA8m9TBhzRlyktvXitzsFSM783XSvPBkyC5wj5jaHyBf3C4ORcneYhZTdJDa4/OZG3wNRBJ3OyQb4Vc/EplskH513FTUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=MGdD9ruH; arc=none smtp.client-ip=198.175.65.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="MGdD9ruH"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1727791974; x=1759327974;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=APPjguud8qT2sNJGGhw1/QluWK5rxBq/ESVLAE063lA=;
  b=MGdD9ruHBkx8FVyyuCD+1n2kGdW1JxvtT89RRfCJnTHSQCH2kM8JIdmd
   r49NkcHpSEK+XhMb35vksD3GfSMNiFrDJiWRScf5yWN9VBhttr5Ye4EUv
   yo9CTIcjpRGVHzUSXF5zZfjYjxuMqC3VDyeoiXpW8dk2URftAXexvkUMH
   HU4pCnfsmO79Bu4ORWLOLGOzM5SdLLypxwTIlxJVVla8KquJidMu0up3H
   EbFMtyuZ7xp2fWs2dzeEPef9lSi9dwJGMjT4TWZElvCOSdsQwJHzV1npN
   cwBonvFFJGvqlCp+u3ZGoBzdVUhYsNfpcJm8DCIY99W24dRf/W26PPbCD
   Q==;
X-CSE-ConnectionGUID: VU9vKxpDQGiFmeXgTVe2Gg==
X-CSE-MsgGUID: BJyHE9cZTEqKiWblCEsoNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="27068029"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; 
   d="scan'208";a="27068029"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2024 07:12:52 -0700
X-CSE-ConnectionGUID: ocsmZtiyQmCKJAKwIKmWlg==
X-CSE-MsgGUID: C2MWsfcZQnKsZWJly7x1hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; 
   d="scan'208";a="73803241"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by fmviesa008.fm.intel.com with SMTP; 01 Oct 2024 07:12:49 -0700
Received: by stinkbox (sSMTP sendmail emulation); Tue, 01 Oct 2024 17:12:48 +0300
Date: Tue, 1 Oct 2024 17:12:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Brahmajit <brahmajit.xyz@gmail.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>
Subject: Re: Build failure with GCC 15 in
 drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
Message-ID: <ZvwDYHgZBth8J7YA@intel.com>
References: <6pg5msxdt2p3ycdamahhf2ojxtn3nnrilzlnqv7zwv6mfzx3gy@k24avbsop6yq>
 <sstecaeritl7w2eu5swqmshi5vbvjpeaufwilqdg2jhtnsnpys@iggjwl7wmibo>
 <Zvv4-bm07rb9rfK_@intel.com>
 <cnx7qachu5f5oeqvovgikh53xbzvdy6qigfj6oukp7wazvmwtz@gumangbeu42d>
 <ZvwA5_H6lVvL1eoc@intel.com>
 <bcnviw2t7z5eyesdsb7hbe2bfnq3bcmm27j2qhhfrnmbphuggn@7kpsanakp43u>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bcnviw2t7z5eyesdsb7hbe2bfnq3bcmm27j2qhhfrnmbphuggn@7kpsanakp43u>
X-Patchwork-Hint: comment

On Tue, Oct 01, 2024 at 07:36:17PM +0530, Brahmajit wrote:
> On 01.10.2024 17:02, Ville Syrjälä wrote:
> > > -static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN])
> > > +static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN+1])
> > 
> > This should not have the +1
> > 
> > >  {
> > > -	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN] =
> > > +	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN+1] =
> > >  		"DP-HDMI ADAPTOR\x04";
> > >  
> > >  	return memcmp(hdmi_id, dp_dual_mode_hdmi_id,
> > > -		      sizeof(dp_dual_mode_hdmi_id)) == 0;
> > > +		      DP_DUAL_MODE_HDMI_ID_LEN+1) == 0;
> > 
> > and neither should this
> > 
> > >  }
> 
> Does this look good?

Aye. Please add the small comment I mentioned, and post
to dri-devel@lists.freedesktop.org

> 
> --- a/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
> @@ -160,11 +160,11 @@ EXPORT_SYMBOL(drm_dp_dual_mode_write);
>  
>  static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN])
>  {
> -	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN] =
> +	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN + 1] =
>  		"DP-HDMI ADAPTOR\x04";
>  
>  	return memcmp(hdmi_id, dp_dual_mode_hdmi_id,
> -		      sizeof(dp_dual_mode_hdmi_id)) == 0;
> +		      DP_DUAL_MODE_HDMI_ID_LEN) == 0;
>  }
>  
>  static bool is_type1_adaptor(uint8_t adaptor_id)
> -- 
> Regards,
> Brahmajit

-- 
Ville Syrjälä
Intel
