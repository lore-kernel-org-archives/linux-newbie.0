Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D666B12C47C
	for <linux-newbie@vger.kernel.org>; Thu, 25 Apr 2024 14:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714055574; cv=none; b=lu+oaXwUwPI9/ItkmeSl7zg6z/PsjEftb6vSY0WnMBahffojBfHVaYHditkqGAGE7BGaZrQfjWxszvCAv8I2nnjUXzkIxabmOyrh5la2ihZn/8ikg9MfovfjGXRiIvhCaTiF6HMkbgvVa033uldrwwpWK75MknOhsgfGnt3XWvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714055574; c=relaxed/simple;
	bh=eXCNR7ooTce7BV7f3ZiHWRvNkYp0DTQZUwgiH67T5YI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PtgyfXg8TsCMicXGKyekaB4qUE+53rQTMn/wS3eK7h89V56mfh0+zSlf5CeN5p1G+Cp2DbQXq2evDn1RKCuF2mDXdAf5l8fFzd0q9XAk92H455b8mQqdSFZgl+DV0cNJWx4UDE5h63qsPWwPa2Ys++I9henNi8JSWmAWbCdrjcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U5iXfZk2; arc=none smtp.client-ip=209.85.166.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U5iXfZk2"
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-36c30a81507so1731855ab.1
        for <linux-newbie@vger.kernel.org>; Thu, 25 Apr 2024 07:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714055572; x=1714660372; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iOIM2nELW/X5ntVPRtL18YQ3nn3YJJzs3b2MGd67Xnc=;
        b=U5iXfZk2gCGjwP0bzAQAqBC9Wk85/yX2hpILFgigdI5PlWyhI6sCFQEdbAfeoZi8Ba
         uMpEb1aHeiQImxOMChTmX21MHFvwlg1xYY9ZflcOKKkSijUBtYBXLDjfAYP4tdRTZiFX
         cqCKibwRDNR+VVqY+IXDZwtPt5hCDZRZMI7bIbbbH1s2FXYK1EwkGAjtDwgEIjtOeW55
         7QwoLF7yaBCV0GSTNp96qKL9Ce4MXVGkRHJLOjKR8eTFKs7y0+N+nAyX8HfYHfUFV09r
         B6WF2oJlyjUH4FUMJPXYykmSFutOm5VedBHqfhn734eomTQkKCLxCX7q9MzEcKQUyQuu
         Aaiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714055572; x=1714660372;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iOIM2nELW/X5ntVPRtL18YQ3nn3YJJzs3b2MGd67Xnc=;
        b=u1gcfGHNfIGyd7q7zzM2DjHoL6TDYXerTlWnF+FnmG9S51FfyTc6ezXOA2BtkRGBWV
         3P3sy05akz09m5DxiCfjyfr63d/8o/nKOicV0UemcnUlWdCswgA3n7yEgM1hb+PqItSO
         yZGbmn4tPBAnGrfTYXAHJPITR0d8SkLwKIX0VJT3ZgdPqcSbYL9FCVKpjLQspoxC4ohi
         FyMBnKfLkJQ9e6OQbX1+Vgxskop5RtV76FOdhjGMYG45vlOqCJj7Nxyv9IUztZL6MEqW
         QMgqX0GmYv/c0Tsh8Uh1xSqY2VzitEjM6Vpchi0gHaES3I5goV7Caa5bPAX4n1SjX9S3
         34xw==
X-Forwarded-Encrypted: i=1; AJvYcCU18M/r5xZdu/nLVwUtZtAu+l6tidxJUSmYqS8sPzgupjIWCQE+nis0nce54VyGN93BkxaAR07qIS6C0smhOjNhEOuA9qvK1QmH/EZ5
X-Gm-Message-State: AOJu0YyDRaMfz7rvt3qUiE/0zDwZICaXGFBl/Np7MsHSePF5HlfSOZJj
	0DssgbH0NMFkFbO37VKKYCtq/c7d8XIu5Ft4zXeQhVDKLCtMbI0v
X-Google-Smtp-Source: AGHT+IHAfBloP3z97p6+QRGZuoochN9HTPGI2H6WZTlDuBhV1olZEvB47jKQ6wptaRPw7piVYvM5mg==
X-Received: by 2002:a05:6e02:1a66:b0:36b:46b:1340 with SMTP id w6-20020a056e021a6600b0036b046b1340mr6896734ilv.5.1714055571764;
        Thu, 25 Apr 2024 07:32:51 -0700 (PDT)
Received: from fedora-laptop (c-73-127-246-43.hsd1.nm.comcast.net. [73.127.246.43])
        by smtp.gmail.com with ESMTPSA id 3-20020a056e020ca300b0036b2fce985dsm3615754ilg.62.2024.04.25.07.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 07:32:51 -0700 (PDT)
Date: Thu, 25 Apr 2024 08:32:48 -0600
From: Thomas Bertschinger <tahbertschinger@gmail.com>
To: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Cc: ngn <ngn@ngn.tf>, linux-newbie@vger.kernel.org
Subject: Re: Feedback on my development setup
Message-ID: <20240425143248.GB291695@fedora-laptop>
References: <CAFkJGRe+UpNPSnSL623o6G+NCkK_uGPx-NCNLQx0vSGpMo98eg@mail.gmail.com>
 <CAPzh0z8RySn429XYQHoP_c9UA+pb6SLHGhH40vQDhc3P2xiysQ@mail.gmail.com>
 <CAFkJGRfK=1f8tfWO8G0v8SOmCwCgK7P5y7g2My47VG6Obb1DNw@mail.gmail.com>
 <ZiE9ydgMtpKOBLDk@archbtw>
 <CAFkJGRddGHK0j4CcQUoRKiD3afniLY=rRV5npY5wpauqqY0XZg@mail.gmail.com>
 <CAFkJGRdFuMoO4_mR-cR1NWjKQJnopN0v1R11-jSnLn+FKcOCdg@mail.gmail.com>
 <CAFkJGRcg+ThJ-xUve0=WorChW=-6PreLHXeM8YwtwzwpkHTu8g@mail.gmail.com>
 <CAFkJGRcgJA4qe1AVi23ZQVPr_UEzkTBPH8f30g=OsKmii7QzQw@mail.gmail.com>
 <ZiKYXX-v0Eu-qCBt@archbtw>
 <CAFkJGRdjvebW6u6pyyA_MeHsoecRgYjiVrxoWYWsREdYH9iOFQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFkJGRdjvebW6u6pyyA_MeHsoecRgYjiVrxoWYWsREdYH9iOFQ@mail.gmail.com>

On Tue, Apr 23, 2024 at 11:34:36AM -0400, Josh Marshall wrote:
> I have a draft document which I would like broader review on, which
> currently lives here:
> https://gitlab.com/anadon/getting-started-on-kernel-dev-guide-workspace.
> This document is to ease the setup of Kernel Development.  I intend to
> send this in as a patch to the mainline doc tree once it gets by a
> suitable number of reviewers.

Hi Josh,

Rather than using sed to update the config file, you might want to look
at scripts/config. It's a tool that's made for that purpose.

- Thomas Bertschinger
