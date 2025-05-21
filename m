Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FC12609ED
	for <linux-newbie@vger.kernel.org>; Wed, 21 May 2025 12:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747828918; cv=none; b=rMABQ0nhqzVIDlzF4fP7RoEHdJKVFvc3Zh1gKehSd79gvItjm/7gacX0cYuzwhOYLsIVfXQHrrU5Ta3FR90deqZwIC7je1ZcNzQnEa+l6XWTBownlC/Sb7UzpKS37rSsnrdMPTpnDZS+Lf+cj1Rzybdd+stut70JBPsetF7gZ+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747828918; c=relaxed/simple;
	bh=+eRPhGZzzE8ZWHKNf9t4zFCKyuuUFTaIL5Dn3q3WRJg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DQ/u9lOqcRF0pgNaufZO7edELTLz/ihY7FLAwVczp8yuZQeUqGYLYDlJGlyk4pa1wzOUpwc4+sKUNEmiacm+3rfUF9ASvH2GdgRuYmmatMbP/yDfIuEXKLUeCNiNM8ltiHOkNTFExQfREYIxBFTdN1ZjH0x0AplODr4bne6sjHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=karlexai.com; spf=pass smtp.mailfrom=karlexai.com; dkim=pass (2048-bit key) header.d=karlexai.com header.i=@karlexai.com header.b=LVPVwfbW; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=karlexai.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=karlexai.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=karlexai.com header.i=@karlexai.com header.b="LVPVwfbW"
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-602346b1997so1315826a12.3
        for <linux-newbie@vger.kernel.org>; Wed, 21 May 2025 05:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=karlexai.com; s=google; t=1747828915; x=1748433715; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+eRPhGZzzE8ZWHKNf9t4zFCKyuuUFTaIL5Dn3q3WRJg=;
        b=LVPVwfbWUp4Yl8fc43nWWg2Ox12Mf2rQZkoxoUUwRkfiqo8V4/gyhJC5gwnWT26/F6
         MdZ35Wqdde1i13H1+Qva+PrnsR2brAX0706fBUtP3L5r5Jh3xVV+PM+hBx2zpcoHTUe5
         z3ciDpkWvf1W+Rj34cgKmeB3WMBmaa3aQN5RaTZhkxdPoTxq6MgCODQHY1ZAcnsT+8Wf
         m5wfABfKxrVXxdQZGM4Vw2xpdX/i5AcVSpF9Zk0aPh0HxEaQr/JXkOHg9aza0Erw1EUd
         fAOuY4mH9wMpJlFcqPew04X0f+1SegzB1atfR4KwJsCTfM4Q9WzBGfH3DMd73cSFJ+yJ
         uirQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747828915; x=1748433715;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+eRPhGZzzE8ZWHKNf9t4zFCKyuuUFTaIL5Dn3q3WRJg=;
        b=w0dVuDtLJltNy0rPubqKbszx/KVGkPbMVzXXg2V0wY3M2Q9rO7Zn1nwPPJGNvwAxVU
         ig1U9GmP4L6eAQbrQSKqrxqnSespYBL2qHqIUnJJZd4Ahqtzhtj4EH7N8zAI/+MIqzVM
         uMDmgPcsnumgrYksC+ZhhAHusFxWsD8eEM0aFAW75iig9abX3kGyO7FfesDwsxMVrY2B
         AGg2ZHtY3EW0Dsux46gufFllDFhkgE5D1TCkBkFfZNZ6/ZuCcazp18NUrM7EIVfWOMiG
         ZAMEyYfxn6J7JLvJU7qIAmNXY+rUIRNY7ORSINCkMSWpDd2nMHTyx7BSpK/iKeElYoOh
         9eqA==
X-Gm-Message-State: AOJu0YxVADwgOGeWKHMFSDVTYu3FkX2K1biRX3M8LT+A1AAbvt0qNZV7
	FfQRDQ/l2zVB0mSzviUrwLe6ZC9zhkrOL0EpWWx4q/j1lih4A/sKOM+V/rrMGVPvcoYRVyxU6uQ
	W5P11xZq/RKos3Aaee4upKcRSkUHsqexbbaNmgx4o6Xuj7rWuPfZe8mQ=
X-Gm-Gg: ASbGncv9/7T8MqQZFFOgZ/0AEdFy1r693D8JSSW2dnRwOwMFUg7toYXZjp0OutflOWN
	Vn0hW/qhh6d59GDcs6CH6uRMuH1I9qdMYtnBRkwWLe9ed8cZGJbxPF9Stir6K7eA1D0I7VJseMQ
	Gcr5lFsvDDYKfZJKorouQqoiJ902Og0iQLtmB+pHc/Wo77tFiI1ST0CTyBylIvtAONm6U=
X-Google-Smtp-Source: AGHT+IENZxLyGxtNTsbqaZCLZuKi175EIe8nDp8guhxadO+xqQEqhAJE0BIQIbeb6O9LRO1PFqqeqsrFRQFXSTJ2R5I=
X-Received: by 2002:a17:907:7fa1:b0:ad5:24ee:515d with SMTP id
 a640c23a62f3a-ad536bca810mr2110211966b.27.1747828914000; Wed, 21 May 2025
 05:01:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAELLoAjVdYkmZR15e4TTzy21PxGBu=rbFp31uwMULcFvZx4V4Q@mail.gmail.com>
 <CAELLoAhC3emyLF26DNNb0m-D+eUJ2z9=G6r1Px+oYwOztzvZ=g@mail.gmail.com> <098f0dff-5838-40bc-988a-b97cbb718043@metux.net>
In-Reply-To: <098f0dff-5838-40bc-988a-b97cbb718043@metux.net>
From: Vikram R <vikram@karlexai.com>
Date: Wed, 21 May 2025 17:31:42 +0530
X-Gm-Features: AX0GCFtTi_oHYTzxO8L1vew5OEG5KmStdz7oTNpKKyCbxTW8Z1W2lbS0ZkjRPes
Message-ID: <CAELLoAhRMZVLVnCxmZKrSTukNpn5bqD70cdcz+9iC814No9=0A@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=5BANNOUNCE=5D_Call_for_Contributors=3A_ASIOS_=E2=80=93_AI?=
	=?UTF-8?Q?=E2=80=91Native_OS_=28Kernel_Work=29?=
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@kernelnewbies.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Enrico,

Thanks for the questions =E2=80=93 please see my answers inline:

> =E2=80=9CWhat exactly do you mean by that?=E2=80=9D
By =E2=80=9CAI-native=E2=80=9D I mean ASIOS is designed from the ground up =
for AI
workloads, not retrofitted. It embeds ML-driven optimizations (e.g.
reinforcement-learning schedulers, Bayesian latency predictors),
deterministic scheduling, native multi-accelerator support and
built-in alignment/safety probes directly into the OS stack.

> =E2=80=9CWhy an old Ubuntu?=E2=80=9D
We chose Ubuntu 24.04 LTS because it gives us a rock-solid,
long-term-support base with an upstream PREEMPT_RT HWE kernel (6.11)
that we can rebase regularly. It=E2=80=99s reproducible, widely deployed in
enterprise and cloud environments, and lets us focus on AI-centric
enhancements rather than reinventing the distribution.

> =E2=80=9CIf you=E2=80=99re talking AI, you mean datacenter, right? I=E2=
=80=99d trim things down=E2=80=A6=E2=80=9D
Our primary target today is bare-metal and VM-based AI clusters, but
ASIOS also supports very slim builds (we strip out unneeded services)
and future multi-distro releases (we=E2=80=99re planning Devuan,
Yocto/PTXdist, RHEL/SUSE variants).

> =E2=80=9CWhich symbols? ELF symbols or kconfig defines?=E2=80=9D
The overlay logic deals with Kconfig symbols (CONFIG_*).
asios-config-overlay.sh skips any missing CONFIG options instead of
failing,

> Re: extra-deb tooling
Great pointer on deb-pkg =E2=80=93 we=E2=80=99ll evaluate integrating it in=
to our .deb
build pipeline to streamline packaging. I did run into some issues
packaging cross-architecture kernels with dpkg-buildpackage.

Please let me know if you have any other suggestions or questions!

Cheers,
=E2=80=94
Vikram R
KarLex AI, Inc.
