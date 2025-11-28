Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBD2DF59
	for <linux-newbie@vger.kernel.org>; Fri, 28 Nov 2025 00:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764288768; cv=none; b=L9wG69btcQxgo6aOu187yj8218Pntnpjk+BxGwMRL7POslGm1D4cf4hACxJf6L5hAoaS3o3AyUCSoe/kd/IYz5lOM244KYyXhnEaKek6Kb6JgPThnh7WgZIIki1fxNtBqgwbJ2XfJd2QeU9Id4jS/UBYHCvcnZ4g29vFq9nXGqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764288768; c=relaxed/simple;
	bh=t+Yai0LtbUJNbgVuoEYStTYK7/rZqPp7rKEn332RLuk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MLNKlQMIW1cfO0u65z8G+wfUYalvfeuE/0mv5QWvReOOxkool4r3z6d7aDKbMY2zlrV8dq1hY3ONOAd972c4OoSjoqE/xDA2KvquIYkbcgHV2a9nIohiBj3Nc2cup+g79HwjPcO3uMoDnz+SGx3NACb7mLaguB5b+8BLyQanxsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AN4Lr2Tq; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AN4Lr2Tq"
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-65748e230f9so538180eaf.1
        for <linux-newbie@vger.kernel.org>; Thu, 27 Nov 2025 16:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764288765; x=1764893565; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XTEMWuHuX8ZDO3Ed3ILJo7bksrmoYnyH6wxeJLJFcKs=;
        b=AN4Lr2TqUOXMfTb+yteCUTLgTJ3pfxL77ib3ywKqEqfDrrTTPwbkBTWIe1B25i1KnL
         +XzPnempMjThOW3PLYJA+imW9FilJdDabScn75Nljr0CUPB2AwoE1JohRkz9Rp3i3yrI
         larbO+6pHnghhkbjGLXuE6HXcrndyGxwbMDPx+mnxsKnewlqPBTVGQuehAtElGpEVy6x
         oxX1NnktMsdwsBIWihhPlfgsHJ3jaL7nFC/eIesWpqbX34XVma+qf9oznsHN9Zf/1icZ
         hygTgxiKc7huxwPd3tfqkke1mIema/KIDwl6kyDcxiRi7810llIT4a2OykybDeofLpWo
         iYoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764288765; x=1764893565;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XTEMWuHuX8ZDO3Ed3ILJo7bksrmoYnyH6wxeJLJFcKs=;
        b=Phxi7b2Nq1Tef7q9V+CkQETZYE92nPQ5fbJ9ddXs/R9BIDvB31M5rPDs0CwtfdjMRt
         f6oBbAlVlwidEMsn8qBEOIrVuWAxONStrXX/HZp4ZxMhLnMRSTS9PmzxqXRiO64Kp5py
         l7bfoN6vFXF2Owt0dywT2RlrRUNlWAfiDDy141KJymNzdaMpc0Q32el3Xh19cNmmBOYJ
         d0wi74nKaYAvNYnjkBXHeuRfsRoY2ACMvaIC60lMakRhvxddAUSp2mW8xg5GzWjhq9r2
         hGjyTiLXQ+p3c3kKLcC3f1a/bYhSZ9l9Cu+iXExDaDws9XvxpM/mDzE1HHvF/nS/rl5m
         xv9g==
X-Gm-Message-State: AOJu0Yw2FEcnrbVSOueGhEAntzkg+NrZakr6FXLxOHPBu8iu00AO6SRX
	oznlxiGbS8uXOvT8nrPkjh0LZG0ZMy/BAxsnBxhOeDva9dRfyLcvCN0VEBGleP1jBTNzzrfpQBb
	Re53x7m4ktoTdzl9ZnjtGmY70Zsdb8ydyw+bO
X-Gm-Gg: ASbGncss0e/Cvz8Lv+PWX9T5w8Rf82AUCHmpeMAvJoGfXDJGJWxlr2TUa44H3e5myil
	JzWkhn9hyGusRQBVzVRTGRkt2O11Cas7w+e99uS0oNvSAxusCHlfwCwC7ZReLVta308HGcY7Jux
	0WVSbeiA+FfN36a8IWhAehA+Rc8knA1uXkGTbZ2zTNnlUXDKUBaAEcHCqIV/hJECGvzF3kYQ/Kc
	KITuBgNrGkhk5AkbGHJPEfr+v0yRJYEjJp+SorNJfRF9fIJtQDcg0BOZ6O4XXAZuIX9fWYgYIRT
	3YgobLw=
X-Google-Smtp-Source: AGHT+IGP4zqYhjRGUFqeEm/CTfY4r6wY7XWAZRMKtDVGIqsjjaPzReCDuso0PTSyRkYMtNAtRuYa8y9On6qN2i9BzAQ=
X-Received: by 2002:a05:6820:4d08:b0:657:59a8:5611 with SMTP id
 006d021491bc7-65790cbb039mr9114392eaf.0.1764288765393; Thu, 27 Nov 2025
 16:12:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu> <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com>
 <d5ffb46e5f000c75343b4689956445ca4df03575.camel@nazs.hu>
In-Reply-To: <d5ffb46e5f000c75343b4689956445ca4df03575.camel@nazs.hu>
From: Nick Huang <sef1548@gmail.com>
Date: Fri, 28 Nov 2025 08:12:35 +0800
X-Gm-Features: AWmQ_bkA9_0HPX7C5dzfLkJ7Exm6tDIeiv1SDQ4pi2hlS-pP3G3jTXk4TzmG-7M
Message-ID: <CABZAGREHMZwvxC3KizedrDUgTpvPbTmTDX-xde_uWzmSz7GdCA@mail.gmail.com>
Subject: Re: Kbuilds and Makefiles in building the kernel
To: =?UTF-8?Q?Nagy_=C3=81brah=C3=A1m_Zsombor?= <nagyabraham@nazs.hu>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=
=B411=E6=9C=8828=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8A=E5=8D=881:37=E5=AF=
=AB=E9=81=93=EF=BC=9A
>
> On Thu, 2025-11-27 at 19:26 +0800, Nick Huang wrote:
> > Abraham Zsombor Nagy <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=B411=E6=
=9C=8827=E6=97=A5=E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=886:43=E5=AF=AB=E9=81=
=93=EF=BC=9A
> > >
> > > Hello,
> > >
> > > https://docs.kernel.org/kbuild/makefiles.html#the-kbuild-files stat
> > > es
> > > that when a directory contains a Kbuild file, the Makefile is
> > > skipped in
> > > that directory.
> > >
> > > It feels to me that both files are in use e.g. under arch/x86/
> > > directory.
> > >
> > > I'm trying to see what files are the core of the kernel and what
> > > files
> > > can be configured for x86 by partially parsing the Makefiles and
> > > the
> > > Kbuild files. Would it be sufficient to parse them as:
> > >
> > > if file =3D=3D "Makefile" or file =3D=3D "Kbuild":
> > >
> > >  > parse(file)
> > >
> > > or it should prefer the Kbuild file when present, or it is using
> > > some
> > > other logic?
> > >
> > > Sincerely,
> > >
> > > Abraham Nagy
> > >
> > >
> >
> > Hi  Abraham Zsombor Nagy
> > What functionality are you trying to add that would require modifying
> > the Makefile or Kbuild?
> >
> > Sincerely,
> > Nick Huang
>
> Hi Nick,
>
> I'm not modifying the build files, only writing a script that walks
> through the source tree and parses Makefiles and Kbuild files to list
> what source files are linked to the kernel by default and by CONFIG_*
> options. This is to see what to read through to get a basic
> understanding of the kernel at a given config.
>
> As I understand the documentation linked above, I should skip Makefiles
> when Kbuild files are present in a directory, but Makefiles feels to
> have important lines too.
>
> The approach is something like to extract object files and
> subdirectories from lines that start with python regex "^\S+-y" or
> "^\S+-\$\(CONFIG.*\)".
>
> Sincerely,
> Abraham
>
>

Hi Abraham
You can use git grep -n "CONFIG_**" to find the files you need.

Sincerely,
Nick
