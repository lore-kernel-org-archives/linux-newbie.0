Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADE62E092D
	for <linux-newbie@vger.kernel.org>; Thu, 27 Nov 2025 11:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764242800; cv=none; b=JBaOEHrnqSXbQ58WXFcn2T76v9LYx/XUTO7rnqHX91cjz22HnzXpvDmJNdyKgGB/rDV+zVjBXEnzPAMwT6FZJiYXZdSpIagMfqFEKknVrzCLV+3z51Vaetre0fT+jnzo0yW1hYYoIatqkFG6lTUwOzQAScUSI93TqnoaH8uM9ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764242800; c=relaxed/simple;
	bh=BGhzwgP67ZjXb1+9dqeB8togevl4c/zB4GzBti01lUw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tTZNEVBtrwYA6ajxbVNXR50gh+CHGuH5LLeQNOPPinUWiEs00VV1+pMspm//eHt7nHzeJKsCIdQEGmvC2jV3D5B9zRuvaDm0NrHXGMhqOG6ZkZ/YzCN+bp8O9TxO46/NhYeKHPgsYKIezwdwyHXVl1besdoPjN4wqrX8/CxQV9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dvj1OjTv; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dvj1OjTv"
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7c6ce4f65f7so530843a34.0
        for <linux-newbie@vger.kernel.org>; Thu, 27 Nov 2025 03:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764242798; x=1764847598; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jjck2sJLE2uBAplGEYgW223uRflzdnCCuOVR8GKRvA8=;
        b=Dvj1OjTvZodhsmQmguYW05LomyPvQUI/L0Cx82PFngxJtaKoWQ4yNJdWhKiJhbY2v/
         XymiBwKdUqSH4P8+tUSG1RRRgP6FX/kLlmsFLFrYMVHbal8n9JGStdKCnbclBjfbHHhs
         pkRVdYHeblHbdh0caHeoSfxyajwxZ45cLS5PRdxLNwnH8H81eaRRMQeC2Cg9X1W8z1GM
         CQMYQUDUt3huy/i2iIygso2pbywfWT6mH52oeB2t1Z+sjazuqVYLbWMtbQ4AarCvEABn
         qMAwZaeOx4plwMFkhbBNCyFTkLmzfFFmilEkDC8s1NCbVeW3wgcV13n7miliucVa5Is9
         paWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764242798; x=1764847598;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jjck2sJLE2uBAplGEYgW223uRflzdnCCuOVR8GKRvA8=;
        b=Twe2USe7/wNLCDovFI92ZQmvJy8t/K2OwgBHzDTYM7olDMtcFKz79GvVbKEvDwq17g
         f232+MNdTdzQ6F2MbjjVjLf8e5TFkIP6Yqd8ZyfOIw9Xtutk+bV0gpWwekZNIPa3XPOB
         uKm/e3ZBk8EDj0gWatXY2kXdqcNSmJL9fC6bIEibSwIWbiY81hk12zJCK797w5zocz+G
         l6Q8we5TyKtVwOPMe78HupgRVX6+ZnSMGRbUYa5gGKiliWxPhHa2V6nb/3rOUn1/wmNA
         SGxY8bYUBGnfz/fbmgbxVBoVoNGY/V73BkEagfm/IWAV/woowvL3aQgjpgIQ4Pyipz67
         /zmg==
X-Gm-Message-State: AOJu0YzHolhWWPNtWQMoXkI5pMi9EgNjf8QY1hW+zuGbcJpbkx7lt/T3
	WF0QKUxwYVrkXnPTwEdqOfv39QFg6bcwwJ4YnqHQiN4Rfuq5Ob26HcqC31OUu8paQ2kfMKeOsRm
	bezNNzi4koSl1GY6/dNHDYrWYEG+xaR9B+XlV
X-Gm-Gg: ASbGncup6GKgneqEUrMucgRblKT0B0hr+Ado+MBe8fiRQkbjCflmmLsnqe6p8Ymg/x5
	/nW57Crgqse1IUErOMfVSaPANKTQkGE4EVfKkhSL5qMagxxLgmpy8EMooo6SFteqXD82M7S6J1w
	YnJlR3Hp8jD8e2t4ed/kN7bouYqrTXW5lxvGWUX0HBzBSvX/7qglHOAiYqtCy/NCvetsmpxXFyT
	U2jGrCsW3ysovMvZdQWqgWTJeVWPyfHcmllzrMtXsgQU3AM9V6jf9QwmytD5B/f7DGkr/ZnGDPu
	lbI4tuNCvk0x3z7wVNyp2OTEm7rvtpE5zh4NIIc=
X-Google-Smtp-Source: AGHT+IEmOJkWwLqt7BFDxUiLT0zzHSoekcZE0idHIImKXEmKITpK1Ko7+cfzCOn4DNGK7TXLA5WXe+ifF1mdWl7Qxt4=
X-Received: by 2002:a05:6830:348e:b0:7c7:6479:38d0 with SMTP id
 46e09a7af769-7c7c4399d26mr4212468a34.22.1764242797920; Thu, 27 Nov 2025
 03:26:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu>
In-Reply-To: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu>
From: Nick Huang <sef1548@gmail.com>
Date: Thu, 27 Nov 2025 19:26:26 +0800
X-Gm-Features: AWmQ_bmsemhYSSUFyMZUGVOV8lZqsgTMMsaQQHrRgqC9xj6qPLc7YfEWmrgK5HE
Message-ID: <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com>
Subject: Re: Kbuilds and Makefiles in building the kernel
To: Abraham Zsombor Nagy <nagyabraham@nazs.hu>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Abraham Zsombor Nagy <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=B411=E6=9C=
=8827=E6=97=A5=E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=886:43=E5=AF=AB=E9=81=93=
=EF=BC=9A
>
> Hello,
>
> https://docs.kernel.org/kbuild/makefiles.html#the-kbuild-files states
> that when a directory contains a Kbuild file, the Makefile is skipped in
> that directory.
>
> It feels to me that both files are in use e.g. under arch/x86/ directory.
>
> I'm trying to see what files are the core of the kernel and what files
> can be configured for x86 by partially parsing the Makefiles and the
> Kbuild files. Would it be sufficient to parse them as:
>
> if file =3D=3D "Makefile" or file =3D=3D "Kbuild":
>
>  > parse(file)
>
> or it should prefer the Kbuild file when present, or it is using some
> other logic?
>
> Sincerely,
>
> Abraham Nagy
>
>

Hi  Abraham Zsombor Nagy
What functionality are you trying to add that would require modifying
the Makefile or Kbuild?

Sincerely,
Nick Huang
