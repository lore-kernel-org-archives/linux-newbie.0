Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A51A951
	for <linux-newbie@vger.kernel.org>; Tue,  7 May 2024 17:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715102220; cv=none; b=BgztiOad1TXoSL8FW9s87Erfl2wE47G3UkxeCB2J4ynOwInvP1jkL9J6cpdKOB53ANfQn51+gVuIULaW9WjbnPLL73kiSKBcKKYwoFGYfXA0CMlUFR5mY5ZUX4+TgiSU18duQQvMXdSFI0HWePo5xvNHph1y9JjNsKt6UA3S0mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715102220; c=relaxed/simple;
	bh=lCsTAU4I6dalNyn6lBT4QHU63WdD1PMjb7GJG5yRtkA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M3dzzH83o8VPV+jhJkhBBa3KgczFdlh7aG54iBQzVWWMwqRkcEf8gCAsubKZefqGmkqEUTdLkB5ZfKsn/48L7hRma8FylVEG2VcYpqwKBfiu5uZ9pZ2HR2Xcx6UpEoOxMPSYko6z7YBeeuEkE2jt87rIjEdgrYAmTuwu1EIS1x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=marliere.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=marliere.net header.i=@marliere.net header.b=UaPIcqz5; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=marliere.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marliere.net header.i=@marliere.net header.b="UaPIcqz5"
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-61bbb208ea5so2547374a12.0
        for <linux-newbie@vger.kernel.org>; Tue, 07 May 2024 10:16:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715102218; x=1715707018;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MHf0bWRhZRw6a5IR7KIlrv+lDzgAGY3i6uhQ3N4iyMY=;
        b=SQpUI1OtVOsUwQbu/J1f/gO6Iytu+nZQtsxzQQDSY9E0Wp6fX/N6JPee5FkRIq0u02
         rPnlUQh03cbApnDt480fAHna8Og/iU5/Sw80pk0TL+ZDYXtmAroojOIp1We8/f9+OQls
         rYPc2b7Zcp8H72SZXX938JSA/6kgAWkDm+UIaiXgklE/njOD2wWxFGDF9qGnN/VHTFCQ
         1HnyMWQ/wxuliTvdC7rHYdoZkP1JYjk4I8Y+myQEoEuMQfGdr9cXwTBFOc20uYB+9wAk
         x19IwL2Xo9olYid19qQwQhLFbkbMc99xCWf2cpEFvalYeNvbZgFB+O0yTnMINBpLGFB1
         D1uA==
X-Gm-Message-State: AOJu0YyKS3ojnL8iCCi6m8u1Ww+qJv2bQLzRIZqFwftYxDJTzZC3NN+C
	PcnGBl/DSZvVBF/iU4JQBEqtiPkU4KSndE/9Cgd7No2eg5acE56COP2kZpgO
X-Google-Smtp-Source: AGHT+IGzlUmGiNmqhz0OXkVwQbyj/8zptHZ1GlikaJfA3f1shcgLAoINb87/6MVYM1uzW8UxkIczpA==
X-Received: by 2002:a17:90a:4489:b0:2b2:a1d0:b61c with SMTP id 98e67ed59e1d1-2b616be9ac8mr175189a91.47.1715102218029;
        Tue, 07 May 2024 10:16:58 -0700 (PDT)
Received: from mail.marliere.net (marliere.net. [24.199.118.162])
        by smtp.gmail.com with ESMTPSA id l9-20020a17090add8900b002b269962606sm10134163pjv.30.2024.05.07.10.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 10:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=marliere.net; s=2024;
	t=1715102216; bh=lCsTAU4I6dalNyn6lBT4QHU63WdD1PMjb7GJG5yRtkA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UaPIcqz5SHcxCrPpV31ripDNxXVpcuCvM1opVML3V8V1WmKiuXp/AJJrd/a4FLvya
	 43mOrz129tlcrexj8lwzhc8cQ/0EMwtf6pDEDk4LaDBW+3fQzF5NXQJukq5ScV740s
	 ook652TDJ+5GlDDROOW9EL69fflctDmXM4P3THzoOraGpKshff08N0ND3O5Iwd5MIk
	 ZaHyjALk6NrEOB48ftwBO1D8uN3oSL1aRtM78sFym17bB4ljkP1PNYs0a4xXxue0YX
	 e1SYBSeM3tN7DwSvF3/darKwu6wR8BFblYjujZ7dnbChx019N0nxlHkxuSVYgRWbBE
	 Q8E+xrfeQG/qA==
Date: Tue, 7 May 2024 14:16:51 -0300
From: "Ricardo B. Marliere" <ricardo@marliere.net>
To: Carson <crange76@gmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: Re: What subsystem group handles hid devices?
Message-ID: <60830cf2-909c-423c-a675-fa3f89005d38@marliere.net>
References: <4874429.OV4Wx5bFTl@mythra>
 <32da4e38-ca87-47b7-ad56-eb4d2e0e8ddf@marliere.net>
 <4703748.vXUDI8C0e8@mythra>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4703748.vXUDI8C0e8@mythra>

On  7 May 12:10, Carson wrote:
> On Monday, May 6, 2024 10:18:15 AM EDT you wrote:
> > Hi Carson,
> > 
> > On  1 May 16:55, Carson wrote:
> > > Hi, I'm looking to write a device driver for a gamecube controller
> > > adapter.
> > > However there are 0 results when i search "hid" or "input" on the mailing
> > > list. Thanks
> > 
> > Use this one: https://lore.kernel.org/linux-input/
> > 
> > > http://vger.kernel.org/vger-lists.html
> > 
> > Also this: https://subspace.kernel.org/lists.linux.dev.html
> > 
> > Best regards,
> > -	Ricardo.
> 
> Thank you! That really helped, I found someone just completed this driver two 
> months ago! However it seems the maintainer has dropped off the face of the 
> earth. What should I do? I'd like to help out the contributor who wrote this 
> driver because I would use it daily. 

First of all, you should "reply to all" recipients when using public
mailing lists so that your message is seen by everyone involved. Only I
received this one.

As for the driver, make sure you're contacting the right person by
checking against the MAINTAINERS file or using the get_maintainer.pl
script (also in the kerner source directory). For contributing, check
here:

https://www.kernel.org/doc/html/latest/process/submitting-patches.html#
https://kernelnewbies.org/

Good luck!
-	Ricardo.
