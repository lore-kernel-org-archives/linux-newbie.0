Received: from mail.ngn.tf (ngn.tf [193.106.196.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20E72AE90
	for <linux-newbie@vger.kernel.org>; Fri, 19 Apr 2024 16:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.106.196.85
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713543327; cv=none; b=FserGz1i1bjz7BonagWCzLkx5st+dKJmsbldKZ3poL7MOdycHgDWXkAhLTc/UrSGvd1h8PJ/7mlIgVH8tXNU4AOQmsAmG+Kpvk/YWN6WtVatfIMJP/d9YbeAgs3TSXpOURcoCeEMC+tdQtZVtsPHKRXRRw1omZlyO5YE6R0UD68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713543327; c=relaxed/simple;
	bh=6GC0Z2VjvFORHB3XszCldwYmfx3g2CjoPXHrrU8ZzyY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NDffEBo+o5GlLUfCTz6XWPq0WpFcFznE2zbbupbkc4ujjKGkqgQjG9KOZvXyx7gx4QE5vRWbS1g6M38N4Gxy9I03+u9Z5zf3Ajk8q1bMqqYmktRdeZss9OHFd/ZkE4rBBgz5K83L3w2Z+yRn3VU261hZORtLUFxYIa4BXDPhsz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ngn.tf; spf=pass smtp.mailfrom=ngn.tf; dkim=pass (2048-bit key) header.d=ngn.tf header.i=@ngn.tf header.b=BOzzCAZi; arc=none smtp.client-ip=193.106.196.85
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ngn.tf
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ngn.tf
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ngn.tf header.i=@ngn.tf header.b="BOzzCAZi"
Date: Fri, 19 Apr 2024 19:14:21 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ngn.tf; s=mail;
	t=1713543316; bh=6GC0Z2VjvFORHB3XszCldwYmfx3g2CjoPXHrrU8ZzyY=;
	h=From:To:Cc:Subject:References:In-Reply-To;
	b=BOzzCAZiXumBmKnGaBycBHwgosHWEJOZqIkSyjIQ3Qg+aqE3iIyJL4QjUaXsKX5qD
	 4wdlMKYpNuJ5Rme6lQWYEbqOBEi3r9hN5fs06YEVD0Ap+mfuKnwdn3tU30vX6tJye8
	 WyoDDbEAwH2T8v62MR3NBxXBX42Nn1ccKl+/Fh85YNg+UymSd7qKiOPq14VJqenTZk
	 nuvftY2z+dmNx/pAQZwFCIlBJn7nwfty+BirHq2BfZfwkDZlt1dkOGapFR2ZoUG+fh
	 sVg5kOSmeQWga8nut3sGl/igZ9hiZYOMHFbzw2khpqjR/beaxG/idC5RZyem6lxGqb
	 he5SIB70ErLpA==
From: ngn <ngn@ngn.tf>
To: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: Re: Feedback on my development setup
Message-ID: <ZiKYXX-v0Eu-qCBt@archbtw>
References: <CAFkJGRc824vYEufG=6ZVPAW2iVpd0NDThJadZVrUk_ZND_qJag@mail.gmail.com>
 <Zh6Xbqijp8rRGo1H@archbtw>
 <CAFkJGRe+UpNPSnSL623o6G+NCkK_uGPx-NCNLQx0vSGpMo98eg@mail.gmail.com>
 <CAPzh0z8RySn429XYQHoP_c9UA+pb6SLHGhH40vQDhc3P2xiysQ@mail.gmail.com>
 <CAFkJGRfK=1f8tfWO8G0v8SOmCwCgK7P5y7g2My47VG6Obb1DNw@mail.gmail.com>
 <ZiE9ydgMtpKOBLDk@archbtw>
 <CAFkJGRddGHK0j4CcQUoRKiD3afniLY=rRV5npY5wpauqqY0XZg@mail.gmail.com>
 <CAFkJGRdFuMoO4_mR-cR1NWjKQJnopN0v1R11-jSnLn+FKcOCdg@mail.gmail.com>
 <CAFkJGRcg+ThJ-xUve0=WorChW=-6PreLHXeM8YwtwzwpkHTu8g@mail.gmail.com>
 <CAFkJGRcgJA4qe1AVi23ZQVPr_UEzkTBPH8f30g=OsKmii7QzQw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFkJGRcgJA4qe1AVi23ZQVPr_UEzkTBPH8f30g=OsKmii7QzQw@mail.gmail.com>

On Thu, Apr 18, 2024 at 05:40:20PM -0400, Josh Marshall wrote:
> Looks like breakpoints aren't working?  https://paste.debian.net/1314501/
> 

This maybe caused by Kernel Address Space Randomization (KASLR), try
disabling it by adding nokaslr option to the boot options.
