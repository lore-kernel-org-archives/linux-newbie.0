Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA9C1C68B3
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 14:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727791852; cv=none; b=KHH70ykw/2gaIOkDwNmKZWK12G0Myy1sT+ttktoZrZTK/t2nK3HlEZZfXDr/H6fno6XwHS2Qt6JkDccixppSeDH0FMWSCA1TSNDEBGxiX8dz3xhWsCSqnAJJMtVKhWNxHe7qHejE9sRVBUjh6HwNnhI4Mp6T30qHrl03AoLZGaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727791852; c=relaxed/simple;
	bh=4IpZZJw3mNS0nLXMXTjOsCBOu5YeWV1e9uH4YugdGT8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BBuGhWfHLgvlLSmIYUcbJR5Ci9dbEB//75ntfFEDrL0bWOwCwwgbdST1KGAAOimZEdCogBOctsKGu/ePPulCf+P+WKgiA75Y/hYjfUKWonQ+GzHo9brNFDn9NWNuLx060V3zkZNzpRimMGwCaJ0rHdM4dfLCEjWAlKj6fuyhPLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=D9ykQ1Ph; arc=none smtp.client-ip=198.175.65.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="D9ykQ1Ph"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1727791851; x=1759327851;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=4IpZZJw3mNS0nLXMXTjOsCBOu5YeWV1e9uH4YugdGT8=;
  b=D9ykQ1PhaTjEqds//HPFRKhuYOqXblw9bKXPTEFFJzx57SoLzk3VpymZ
   DTpTxhsrWw97o6wuDK7Mn7DcdKyetcqpHxlqkwYGVZAJDDasK5l6o483e
   O/FOtYlguSl3RrkKU0gIGPWEDrzcd1kH2hBzDgojUhHF6aA+OC6bFgYuW
   ccwATb+MhoIyAWCY2ypUnfsnjetaVYEvhZLrqksXXmkjXqPcM6tiIhUos
   7hGS5sXdI32xW7ehnRB/B/khyDcrApUgtxLEP0HeuJDELc21vdcJhf1S7
   UtV22YEJyOnGynDh5CwvxTv3HMTu/02DaiKI4aIVybKeJg4U3HnV7lGoS
   A==;
X-CSE-ConnectionGUID: 6GZ5V9UYTp6O2XtalokmyA==
X-CSE-MsgGUID: bAHxchxrSiifaUZaCOe5ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="27067670"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; 
   d="scan'208";a="27067670"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2024 07:10:50 -0700
X-CSE-ConnectionGUID: wdw4Yog/QG+StK7FNEka9w==
X-CSE-MsgGUID: MDWk8tW5Qzq7VzGKghftVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; 
   d="scan'208";a="73802498"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by fmviesa008.fm.intel.com with SMTP; 01 Oct 2024 07:10:47 -0700
Received: by stinkbox (sSMTP sendmail emulation); Tue, 01 Oct 2024 17:10:47 +0300
Date: Tue, 1 Oct 2024 17:10:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Brahmajit <brahmajit.xyz@gmail.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>
Subject: Re: Build failure with GCC 15 in
 drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
Message-ID: <ZvwC50KKrLPxAvN6@intel.com>
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
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZvwA5_H6lVvL1eoc@intel.com>
X-Patchwork-Hint: comment

On Tue, Oct 01, 2024 at 05:02:15PM +0300, Ville Syrjälä wrote:
> On Tue, Oct 01, 2024 at 07:18:23PM +0530, Brahmajit wrote:
> > On 01.10.2024 16:28, Ville Syrjälä wrote:
> > > Looks like gcc is warning about perfectly legal code
> > > (as far as the C standard goes).
> > > 
> > > But we could work around by adding room for the '\0' and
> > > s/sizeof(...)/DP_DUAL_MODE_HDMI_ID_LEN/ in the memcmp().
> > 
> > Sorry I'm new, but can we do something like this?
> > 
> > --- a/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
> > +++ b/drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
> > @@ -158,13 +158,13 @@ ssize_t drm_dp_dual_mode_write(struct i2c_adapter *adapter,
> >  }
> >  EXPORT_SYMBOL(drm_dp_dual_mode_write);
> >  
> > -static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN])
> > +static bool is_hdmi_adaptor(const char hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN+1])
> 
> This should not have the +1
> 
> >  {
> > -	static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN] =

Also we shuld probably remind why the +1 is there.
So a comment here would be good. 

Eg.
/* +1 to avoid spurious -W<whatever> warnings */

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
> >  
> >  static bool is_type1_adaptor(uint8_t adaptor_id)
> > 
> > -- 
> > Regards,
> > Brahmajit
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
