Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E3D13BACF
	for <linux-newbie@vger.kernel.org>; Tue, 23 Apr 2024 16:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713888519; cv=none; b=FKjxqkDhE4mcohgmfOlJikHarzXElRzdRjTzISlSLnweb7ElYAck9peCikt4BY1jFwpWGtX9rW/eqItFXTPQxRhmS4A8fCCIOxEjqV7R5rd+HJyp8nHwKMXH2aoRxTdYUrg+8uuEwbxpMoGcOAoUG8FHlm81fguDwS9S+OugmSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713888519; c=relaxed/simple;
	bh=4KrMdFCLu0HC1KREzfNFZZrwDzZBa9l79DmIlIOgPMg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dvhWzcKlRMDFx2ppH+KXKQ7GbDYEbrZ5W6IkEqnghd6XErxRSp+RGL471P7mMs0C0qXrbn3rdqnp+CNi6l2dXOqL+CuMQn+yh82ee4F8VvC/Bf13nZtxLRvVe/YFDWpzmi5x2OiejWSA5z27fRvyRF+2VXr8DBCC6dZzx34K8v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jgG4izJi; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jgG4izJi"
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6ed5109d924so4980171b3a.0
        for <linux-newbie@vger.kernel.org>; Tue, 23 Apr 2024 09:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713888517; x=1714493317; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JN/eZhKkIgfkU+1mcY6EdHBvhVna6Vh0IfsiNt3pSSk=;
        b=jgG4izJi19ScvIHiKILPRKb9MNaLw4S8ljilNM90pVp8DIlIfbprlOZVV2YH51Mo9V
         /JIr8Dy5ACNCOXySMm4wEl2wM+6TUiYg5OdYCVYjZPTp4ytQnChLibY4+SSIGBYM7mZd
         AbO5AybCET0wwbtqeJf/7/R2G8O3gzalL7DLgPEyEJoEZivkYTfggWDcjxb6YTIBOsQj
         6cjd1OROZwhS5O+G22AJzYxVvFLzaLn1USlz0a6wshGiUnSKKcNH50VTz+L6jh8tMxMT
         BWpDw8iNOVeRJQz03ziiwXRyhpKCDiwxRUU6Ffee78qkNZgq7WD/DKMJACER+0ftt8HY
         DdiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713888517; x=1714493317;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JN/eZhKkIgfkU+1mcY6EdHBvhVna6Vh0IfsiNt3pSSk=;
        b=QK1ioxmnhWJf+SLYq+z3o/vdtDXoP2+VWvb0uRJj/J9pVeJQy4Z/oPliTlB5A+nvFu
         znJneuz9ueM8EfS254D0nd/f8hJA3eR4kiR3K62C/aR1ZaK0hNqNOfPQ0OeB+esfHx04
         1MJ2drsvuzLxG6JGFd4Nj3DJxiYl+pONDkhTPAhFttgN3BlynipBu0IvXZMQfEBZTgwO
         AUgRpZ0R6v0KNYLXuSzgmfOsJiqv04H8D9bsXnE9h/sfvS/qtP9qpznUyLndqDI0qdYr
         y0XB3BWh26l4yQMdiFsv+iBHEI1SE254E2QZZN5LFrR2kjL6L4AcggWEriNfsd/52voq
         54NQ==
X-Gm-Message-State: AOJu0YyJ83C4by7FoMwTRIs4FBSuLOUyHzamK5Y4XhbKZsybJpmvXjis
	fFX/lDhsWbG7yn5SaBXblcbvuqrNpJKmc7thVLiq7Hk+hXzVOylG
X-Google-Smtp-Source: AGHT+IEyHWIAofUcf5sF3A9h3nxZI2jkfvSjiedCGfZEIwvFnC52Tcw424qoA42pw2Wx1Knigs94zg==
X-Received: by 2002:a05:6a00:4b07:b0:6ed:def8:4dc with SMTP id kq7-20020a056a004b0700b006eddef804dcmr12470pfb.10.1713888517142;
        Tue, 23 Apr 2024 09:08:37 -0700 (PDT)
Received: from [172.23.69.246] ([14.139.38.125])
        by smtp.gmail.com with ESMTPSA id fj32-20020a056a003a2000b006eac4297ed3sm9787753pfb.20.2024.04.23.09.08.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 09:08:36 -0700 (PDT)
Message-ID: <eeede97e-3330-4613-b0b8-9fae99fe2b50@gmail.com>
Date: Tue, 23 Apr 2024 21:38:18 +0530
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Feedback on my development setup
To: Josh Marshall <joshua.r.marshall.1991@gmail.com>, ngn <ngn@ngn.tf>
Cc: linux-newbie@vger.kernel.org
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
 <ZiKYXX-v0Eu-qCBt@archbtw>
 <CAFkJGRdjvebW6u6pyyA_MeHsoecRgYjiVrxoWYWsREdYH9iOFQ@mail.gmail.com>
Content-Language: en-US
From: Pranjal Singh <pranjal.singh4370@gmail.com>
In-Reply-To: <CAFkJGRdjvebW6u6pyyA_MeHsoecRgYjiVrxoWYWsREdYH9iOFQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/04/24 21:04, Josh Marshall wrote:
> I have a draft document which I would like broader review on, which
> currently lives here:
> https://gitlab.com/anadon/getting-started-on-kernel-dev-guide-workspace.
> This document is to ease the setup of Kernel Development.  I intend to
> send this in as a patch to the mainline doc tree once it gets by a
> suitable number of reviewers.

Hi Josh,
Commendable effort.
I find the doc a little verbose: The official documentation, (for better 
or worse) doesn't explain things in such detail, and assumes 
considerable maturity in OSs and the shell.

For instance, the paragraph in the beginning doesn't give a crisp 
description of what's going on - I think you can split it into two. "It 
uses as an example..." can go to the end. Same goes for the first note: 
are all of the details even needed?

The later sections are user-manual-y: "Here we need to obtain the basic 
materials to work with. These are ..." can be "Download a VM image and 
the Linux source."

Unrelated: a mistake I made many times when compiling Linux was to go 
with [Y]s and [n]s - it may be worth mentioning in that section that 
some prompts take an empty string for an answer, at least in Debian/Ubuntu.

Disclaimer: Linux Newbie here. Suggestions/disagreement will make my day.
Thanks,
Pranjal

