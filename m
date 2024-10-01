Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92BB28F4
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 14:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727791340; cv=none; b=d+yxcJe0XuFIKoFklCq5BRJKNSPdmZB+22KdG0SFkevibjvDPeCLl1CkQyDez0XRYbYjytzr+6KSlCxm+qpuQwpO7jDbkQM+wmd9Wo9/ayh0S9synNxI90JSb8doBU2BfKHvlUwD/wpEd01IpfVJ+X0namatHFTPkcLNXtscWCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727791340; c=relaxed/simple;
	bh=VlBJ2XoOovEWx6eAqUF2sBsMp2RjdMlaknazr1h/y4c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XfVjozo58fL+l9WypT8uvHJScb7k6J4gDBVkJnZhEeidbo5GIWi68J5N4FMhA2/Pp/WlpdjrykYTlR+yh4FXTis3YAxzc1duf95Ut9sgIvaCgYXqFVpxjGU4VYX2a5zOcrUiBN59PfszMN3E77Id6wwHq2+ZI/dU2U0Nx0/qbwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=OijeIpKI; arc=none smtp.client-ip=198.175.65.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="OijeIpKI"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1727791339; x=1759327339;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=VlBJ2XoOovEWx6eAqUF2sBsMp2RjdMlaknazr1h/y4c=;
  b=OijeIpKIGsApAlvVEROzwq0ShR+V8Y1ADhJHdePsAmO2A7KFsB8Z15Fo
   8S8NjPZjFy+6DzFkfERCwXdlk+TIkVSatXtpyPClSleoaksMsvFIrn7GV
   fcWxCBmRHxju3dlkYs1xVB4v8Ws0r4nrLqDWTIiWITHBjqGSRCahsN7sX
   WvUfzXlKGBxYyDH0a6YZ3VQ3kunOVhY9MV/pvbaJl1wevRhDzFlXjZvFx
   vj9/16xuYvIUkJPFRLpQunj7OP9ojEJ0WwgONcRK2+GxC/dsel+T9rI4s
   OF0v2FEUlM4k8yMBYomQjDdQebNF/+eXw/DywWcYkHOwlVR1lObz1k8c6
   w==;
X-CSE-ConnectionGUID: qGey1wT8RVO/F+9tNoBOwA==
X-CSE-MsgGUID: jc25DxYWTOGeUg3kqmWmiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="27066550"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; 
   d="scan'208";a="27066550"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2024 07:02:19 -0700
X-CSE-ConnectionGUID: K8p0YwemTWO3LlnCsiScHg==
X-CSE-MsgGUID: poukXGkuSpyA8pBSrGfh1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; 
   d="scan'208";a="73797910"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by fmviesa008.fm.intel.com with SMTP; 01 Oct 2024 07:02:16 -0700
Received: by stinkbox (sSMTP sendmail emulation); Tue, 01 Oct 2024 17:02:15 +0300
Date: Tue, 1 Oct 2024 17:02:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Brahmajit <brahmajit.xyz@gmail.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>
Subject: Re: Build failure with GCC 15 in
 drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
Message-ID: <ZvwA5_H6lVvL1eoc@intel.com>
References: <6pg5msxdt2p3ycdamahhf2ojxtn3nnrilzlnqv7zwv6mfzx3gy@k24avbsop6yq>
 <sstecaeritl7w2eu5swqmshi5vbvjpeaufwilqdg2jhtnsnpys@iggjwl7wmibo>
 <Zvv4-bm07rb9rfK_@intel.com>
 <cnx7qachu5f5oeqvovgikh53xbzvdy6qigfj6oukp7wazvmwtz@gumangbeu42d>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cnx7qachu5f5oeqvovgikh53xbzvdy6qigfj6oukp7wazvmwtz@gumangbeu42d>
X-Patchwork-Hint: comment

On Tue, Oct 01, 2024 at 07:18:23PM +0530, Brahmajit wrote:
> On 01.10.2024 16:28, Ville Syrjälä wrote:
> > Looks like gcc is warning about perfectly legal code
> > (as far as the C standard goes).
> > 
> > But we could work around by adding room for the '\0' and
> > s/sizeof(...)/DP_DUAL_MODE_HDMI_ID_LEN/ in the memcmp().
> 
> Sorry I'm new, but can we do something like this?
> 
> --- a/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
> @@ -158,13 +158,13 @@ ssize_t drm_dp_dual_mode_write(struct i2c_adapter *adapter,
>  }
>  EXPORT_SYMBOL(drm_dp_dual_mode_write);
>  
> -static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN])
> +static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN+1])

This should not have the +1

>  {
> -	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN] =
> +	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN+1] =
>  		"DP-HDMI ADAPTOR\x04";
>  
>  	return memcmp(hdmi_id, dp_dual_mode_hdmi_id,
> -		      sizeof(dp_dual_mode_hdmi_id)) == 0;
> +		      DP_DUAL_MODE_HDMI_ID_LEN+1) == 0;

and neither should this

>  }
>  
>  static bool is_type1_adaptor(uint8_t adaptor_id)
> 
> -- 
> Regards,
> Brahmajit

-- 
Ville Syrjälä
Intel
