Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7481C32ED
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 13:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727789310; cv=none; b=unhjP9hEMxvma9XiIyxcJlyZvC8PKEAcWNhzhXqAuYT1inksbihC9fG6xQqTuBVjWVHxHxbC0oIrNDjEo4CY9bwss1n5yqFFMF/vv6fwZSAL0yw1Kj4GYzlTYOi/Xyg+1/54GwZWxlfQXNWdvhEtBe36bL8WnbnyqAuxQsN89O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727789310; c=relaxed/simple;
	bh=eYUs8yOXfOXWua1EDh49bi+djqvOkPRqF5k9Bd04sy8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hYgaOsurM+5mtTSGdlFS1b5wcrx8PLyyc6zMHbyuZ1hLwFpRyuAXVwWENF8+QkB1baRp1kMwyzlwmj/C/gH7pSjKnOKd1Q+fQY7ykP8B7MnJzEY2I01nXmyRTtl9CG0HXsVn1w30dBnPwpkdYfOzKlgePt+aznpXocOJkKTYnTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Ybd4pQ6N; arc=none smtp.client-ip=198.175.65.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Ybd4pQ6N"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1727789309; x=1759325309;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=eYUs8yOXfOXWua1EDh49bi+djqvOkPRqF5k9Bd04sy8=;
  b=Ybd4pQ6N8uOFkSREXtlxhrHxMV4gQUvEeGVNbpFncg54c9xmwWXLxpgW
   hxYDw4ml93GRq988Gb+ZPWYRTMfWMugZFCwOLczHSwiVidYs0Cux4OsjB
   UkOM7FHtuWXQGOpfto6VUDvrLvyTIKw1PI4ThFh19/rfTcweKLPhris00
   G1M/zgE3GITQJ8EaZHU1gNK2Au6kEHAslPkQOq3BzknNKsLrNYjE+YJOT
   HOIknizBP3BkW66+AM+wftBOzhft32q0YGjO8bmwbbARhnW7whMzAWI4l
   8inpBFUU31m0h6i/mnhh5T8oPOsRWvN9t9LN9WusoGBKTtplIjxTKHIkp
   A==;
X-CSE-ConnectionGUID: duyh/suFQu6azn9ErSPvog==
X-CSE-MsgGUID: ZzWLXo7qRDCbcFX4ZfOoIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="49445061"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; 
   d="scan'208";a="49445061"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2024 06:28:28 -0700
X-CSE-ConnectionGUID: J9QLBG4ORaOZJJhoDW7i8Q==
X-CSE-MsgGUID: JaWPGcAfT4KB4DGO5zpAqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; 
   d="scan'208";a="73786817"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by fmviesa008.fm.intel.com with SMTP; 01 Oct 2024 06:28:26 -0700
Received: by stinkbox (sSMTP sendmail emulation); Tue, 01 Oct 2024 16:28:25 +0300
Date: Tue, 1 Oct 2024 16:28:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Brahmajit <brahmajit.xyz@gmail.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>
Subject: Re: Build failure with GCC 15 in
 drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
Message-ID: <Zvv4-bm07rb9rfK_@intel.com>
References: <6pg5msxdt2p3ycdamahhf2ojxtn3nnrilzlnqv7zwv6mfzx3gy@k24avbsop6yq>
 <sstecaeritl7w2eu5swqmshi5vbvjpeaufwilqdg2jhtnsnpys@iggjwl7wmibo>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <sstecaeritl7w2eu5swqmshi5vbvjpeaufwilqdg2jhtnsnpys@iggjwl7wmibo>
X-Patchwork-Hint: comment

On Tue, Oct 01, 2024 at 11:48:56AM +0530, Brahmajit wrote:
> On 01.10.2024 11:45, Brahmajit wrote:
> > While building the latest stable release with GCC 15 I'm getting an
> > build error with (I'm guessing) the drm module. This is probably due to
> > combination of GCC 15's introduction of a new warning
> > -Wunterminated-string-initialization, -Werror and -Wextra
> > 
> > In the drivers/gpu/drm/display/drm_dp_dual_mode_helper.c file there is a
> > code section on 163
> > 
> > static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN] =
> > 	"DP-HDMI ADAPTOR\x04";
> > 
> > Its from the is_hdmi_adaptor() function.
> > I read a little about C strings and it seems like we are assigning more
> > than 16 characters to the array dp_dual_mode_hdmi_id, and
> > DP_DUAL_MODE_HDMI_ID_LEN is defined as 16.
> > 
> > I'm guessing this has something to do with how termination happens in
> > char array vs char* and/or null termination
> 
> Some references I found:
> - https://lore.kernel.org/linux-btrfs/5mnphkdvheudccjtiatrbjbkqtw54s2wkpeqevj3rqthdqlwyw@sjvn4wn52qki/
> - https://gcc.gnu.org/bugzilla/show_bug.cgi?id=115185

Looks like gcc is warning about perfectly legal code
(as far as the C standard goes).

But we could work around by adding room for the '\0' and
s/sizeof(...)/DP_DUAL_MODE_HDMI_ID_LEN/ in the memcmp().

-- 
Ville Syrjälä
Intel
