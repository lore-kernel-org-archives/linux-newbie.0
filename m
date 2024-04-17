Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A11149000
	for <linux-newbie@vger.kernel.org>; Wed, 17 Apr 2024 16:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713370314; cv=none; b=axiWK1RAxaebPb/O+BGHA6Q0973SC4fFBiFXe8z3L+gaRIWX4ZPFFWMEpcOZv+s93ONI56wISUsFNl4flFEQeLRDbNsyPQ9XTGv+4kHfOrQZZYCNFMRAP030oagBoHlVCR2tmHmTD2AZUR4kGiI+kSt0iA6A/hU6/EHO3/h4kOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713370314; c=relaxed/simple;
	bh=2mxlhJpinqNhBBrbA9Xu6PnjRwv++R54JM6dquzWtDw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f9VW/dy6ROgqyTBV3DTXw0J9KX9B7G0f7Z/eo0RfuK6AFc5C8NCXs/NKZ0TXgF8CyHj5Q8PLJvlhj05UwwAgQLVLj2SCVy3TnmxzWhEQ5wK1qWsSTk4uIlH+lFjTQVNO1DwL9KzEE9pqTisWmiNy9Xy6aUi3eUebVxi9/HaK9Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E3acngvT; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E3acngvT"
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2d8b2389e73so67175551fa.3
        for <linux-newbie@vger.kernel.org>; Wed, 17 Apr 2024 09:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713370311; x=1713975111; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tJCrF8/BOCrwSLgKO+u/0Q5sekmS809X97YmU3QhIc4=;
        b=E3acngvT+mcpIQocRaJzujcnqJyKUERhmjqhNa9YMHI7WEGwRfPFTq78nv8kfieq5i
         jWzVNgcBkg+ci0sOyZ+Oe8DnuE6dM08so2XT4A2BISGeqE1I5O6eAvMS/KnWfsorp843
         yhRXjcgfFlrOEjiftT0Bk93bHVWH4xy7se9Z5Ld8zTHL5fU468oV3+HbXyf6zklk1PGh
         bZm/g4UB0SgbERkDolMVweqkJoidIbGM/h+U0r1+ZpMJ1Zy/X5vueYEwNvypMoMfnCET
         KvTGFl32C/XMxDPmesQSry8OBc7KSFEsDbJN9tMF13OzFJWLsdQMP0lPC+amLgKIdRcF
         iqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713370311; x=1713975111;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tJCrF8/BOCrwSLgKO+u/0Q5sekmS809X97YmU3QhIc4=;
        b=Tak6k6gCdFQ1qpwC8zQxXmZdKqQmDjAW9X6z8TXtm+ntgkTj2Uxgx0YtfgNVhWS9qy
         2YYQDrKcwBn/m6DNPwIJ9naNcH1XHUI1a0Zb66vWrno0Ub0lIIqgkE1triIOj/OffaTU
         K2Xc96OVx38UF7eNhYnfiFbE57DDlYDKmk4wq3P2/o6yIC4TG3xO6+vBoOMp2Lj48IOJ
         TgtqplHYe0CUjSgQWo31RkGPn5OpteieDB8QSCXLgEq6/MPDIDIMNRvAAPoCeKNSloI8
         bwLUR777EpSg4SzI8Y9KqZ68pItfei4X7Gi+VhTNKV6lSp2BL0q/Gr0Er3F+O47AKn5n
         QYtg==
X-Gm-Message-State: AOJu0YxTl33gSgo1qp+J5Up60dPmDRyRZ3goe0QsMfC4syl5SoQzP09w
	kyVFwqSAMK2ZDXnEUATNhRWLxbSbaKhVBe1K+sukBG+LIKonoMXL5nNPhamthj3wiKmfhbSr1cS
	/25oTURwIaM6e9Jjxs5nEJeKnKMU+WpTS
X-Google-Smtp-Source: AGHT+IFIAQhjG/aq9tDzI0SE2NQHM5LONJr8s0UhqjC7ndMtUGE2xwrgMQPkTVkOJxaPiIMEC0HWdBHuvNIpU/xO6+4=
X-Received: by 2002:a2e:97c5:0:b0:2d8:abb1:b311 with SMTP id
 m5-20020a2e97c5000000b002d8abb1b311mr9738106ljj.44.1713370310801; Wed, 17 Apr
 2024 09:11:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAFkJGRcWdHpbxjBrynncOb3apWO7d5+WP82WqcHeq=hsc65MAA@mail.gmail.com>
 <Zh6RguShFVeDdbNw@archbtw> <CAFkJGRc824vYEufG=6ZVPAW2iVpd0NDThJadZVrUk_ZND_qJag@mail.gmail.com>
 <Zh6Xbqijp8rRGo1H@archbtw>
In-Reply-To: <Zh6Xbqijp8rRGo1H@archbtw>
From: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Date: Wed, 17 Apr 2024 12:11:39 -0400
Message-ID: <CAFkJGRe+UpNPSnSL623o6G+NCkK_uGPx-NCNLQx0vSGpMo98eg@mail.gmail.com>
Subject: Re: Feedback on my development setup
To: ngn <ngn@ngn.tf>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Further tweaking to use sda3 for the root partition in the disk, I get
the following: success!

This is a pretty good setup now but it could use an automation harness
and documentation.  I'm willing to make the script and write-up.
Where should I post it?  My inclination would be to submit it
somewhere near https://docs.kernel.org/kernel-hacking/hacking.html .

On Tue, Apr 16, 2024 at 11:22=E2=80=AFAM ngn <ngn@ngn.tf> wrote:
>
> On Tue, Apr 16, 2024 at 11:03:52AM -0400, Josh Marshall wrote:
> > I tried that, but there was some non-descript error with code -2 (any
> > major error) about launching the init process for [init,
> > rdinit]=3D/lib/systemd and /usr/bin/bash.  Can you provide a working
> > sample?  Sorry if I'm being difficult.  I am really tired of dead ends
> > and trying them alone.
> >
>
> If the kernel fails to start the init, try adding the -append "root=3D/de=
v/sda rw" option:
>
> qemu-system-x86_64 -s -cpu host                   \
>     -display gtk                                  \
>     -vga qxl                                      \
>     -accel kvm                                    \
>     -m 1G                                         \
>     -kernel arch/home/arch/linux/boot/x86/vmlinux \
>     -append "root=3D/dev/sda rw"                    \
>     -drive format=3Dqcow2,file=3D$HOME/Downloads/Arch-Linux-x86_64-basic.=
qcow
