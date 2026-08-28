Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D94C17B425
	for <linux-newbie@vger.kernel.org>; Fri, 28 Aug 2026 03:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787888263; cv=pass; b=qWzqeFF35Y032wTF/VD1ucPVTUhu3hBeTIBRsD+Z8S1HvIOnq5Nu0TZ3YHkZhJSfOqh9KUBY+5yxgws/CoGqDJrKzjOqAHXGVItZXJU9rTKUpfDKakNzLaXvQRaZFfd4DxilTWhSTdziOgbNpKGflNhiZdWkM3PJQKC8RJEJGKo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787888263; c=relaxed/simple;
	bh=1mcs5XCPnDrUJd3pz/8fodT9tklVSM7ZlxNH3p4T0No=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TfzrOQdCfZFZXriwo1qE+VcQWv9XzkQJwZ+YCzC6tEdg5i1hG3fLr+rviGZKOmX+2KM6/U0Pzb60avB4da/MobOcwarmr2WD2LOnO4zLYNOBKJmiz3bGRg9SeShLZfhPWYhH7e4zRzsND7w9yLNVcOQEAKtpEIK+T0+9nc/rYvA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fJHMtNno; arc=pass smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fJHMtNno"
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-47fe2d179e2so174323f8f.1
        for <linux-newbie@vger.kernel.org>; Thu, 27 Aug 2026 20:37:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787888260; cv=none;
        d=google.com; s=arc-20260327;
        b=ZUqXAmJ20UL5aBw9WC8WDLDZ+fMIES3e21De2qX8t90zLJ+RcSVzHCs/ce8cSoByUu
         EFq4hQHMZvIpk57Vxkkp9NLRsK9tjFO43eogB3wkIlzsrsk9vW76qAOWg2weDaSp4nEk
         8kJ8J7lCHTFq6L4nBSGQgyCw36oJtSiBB7byfmO1voeoma8/wHDkql/R+JzEBV1OhrdV
         e4QKHAlIEXhRvPCuSIn38e8cirws9jfPtw21uNrvhznOn0AbSDeVx5hkZGjrPVhvxYld
         fSsN4PFZce1jyxNAv7xpYvGM7pxY4aicJdbklAflPPdYzWq3TME7iwBM3jR03gh1N2a3
         etVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=oz3UKilBDMo2aER2WBedTKZVGaXGaq0ZkxQqdBDUXjU=;
        fh=ixt6uMvbBnb/cqRzNQv8eiuJw1Gkk5sXHtu5dKhesZg=;
        b=Qsnl0O/deuXsp8L91Z1orL36RC10R4eun3FnhRlUMtH81HP63noQt3u2vjbCAEEIEQ
         vwz1LuRZpCHNFGUj0nfm52qLhlkm6DKEorLaQkRl4DD5jP+/kZow3pXhiGEe9AuvwJXB
         vgFrlXdCpSjrdznWYmmrHWa669DbT7q7q3Bqn9D1nU2eMdrC6wpyCBXGaWeE42npWxo+
         z6L8wRgdrUwc1CCHzPZel+GmwQIa4MKngEEveXsibyLvh6BS8xCDRK6fqhO8OyN+Lg1Y
         QCnQugOEDj75ZbbIbJACTUJyfdiq599isg/ii8s6WpQ1t4RtJpLZsjEhiJsvd1SogVKu
         JI/A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787888260; x=1788493060; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=oz3UKilBDMo2aER2WBedTKZVGaXGaq0ZkxQqdBDUXjU=;
        b=fJHMtNnokTgY30Ga99t3yZ9zxscVSvBFb2frSzfdOJBG6wWUH4vE00JSIxf4cyVBBK
         ctcA5R2+wI7Aqsl+yoh7cF3ZVCb5FYeqF+uLFFtSF4THkNGace/6H56uvPF243iFVcAY
         lVHcbdqZMBjEiXr9iwuvFD0kPC9CjWQ1eDVsBE6FmR1BYl2aF4ecm2N8twS0qgVt2cXh
         nOl6K5jwZGe+SDCMtKKAcGGLGVfch6RADyGHKOxy589o2IHJD8vr+HejQjPeqoPaC53g
         gWAGlzvd//v9HkfmO1Z1skcRkwc15rTjd45NJEAQHZdFQicOqHTkSn3BzZMNscqUwbsV
         HzVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787888260; x=1788493060;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oz3UKilBDMo2aER2WBedTKZVGaXGaq0ZkxQqdBDUXjU=;
        b=BdkwGf+bZnnCMNPSaOhNP+ZltWtN7HsGQMRHlX945Q5pfj9M1pi2A5dXPvj/k5KIpV
         chN4Qgml/oDndWvsu38w9g6qsb4l5q55Ukn1DupgAIAwNMWC86DRS7cXyqn2IaO+75Ty
         rF6lWBOnMLGgKktKzG/51KjJWPXdt8dwTWb5ot2jlSQqXn30Dx53hljrrni1AAsw+A6o
         M3MDQfJ0WlfU58FasOeLr+OQe41J2eBOC0TRasbT09u4wPlUVd3dDv84kIzXUa4aINZG
         RUib8/pkubo9tlJ9INnjXh5yWCcS8xYca91Z9bv23urZFeQYpB+flBTLjmv9+/LARawW
         gzsA==
X-Gm-Message-State: AFuF++mJhOBUei99De3wVHoAm/0d6SwRbTKXzTJ3+nz6J732KAX/Z2Uh
	yv4abFZP6ejPsf9gFiajEilKUaqBCG5gd52DED9ZqtRZqnOODNTlPCZl3I167pnhm8mwKHYCn0m
	EyG4BhAz369F+xWNYgMHYsS2pdCy2EGd8cpZzMmU=
X-Gm-Gg: AR+sD11Fl+aJW9aeKCKdXvNZi/BH8LrCmfU+RKJv7HBnTwKS7hB8DS2zzWhgSb0rC2j
	sU8VfEKC94TFfr3SSHxnXrKRvTq/5PFd7WnS9vDTGgYOjTNsDVG9hxGAMGE/l6YYFUr+avgHTCV
	eMNf1rUCvcdTsqVi+EU9ULsHp3K6cX3BEAoqSQDzRBHFgwXloF15XksNVHH08lD9XqAtUBb8Qb5
	FnyrRbuIZjH05WOVpHvAZ8mQhtgU00PrQzoI0FHeYKVN5AjQ2Gf8TZ8/lr1V/6bwnJefi1lG6fN
	J7PhJD6ohq+FrD0g7cDnCV9PvbHhX4d5d7tydD/LHkk1p/3dKVLsrhy5cZFclxUSaFgGT18fIwy
	HgA==
X-Received: by 2002:a05:6000:2402:b0:480:268:8f04 with SMTP id
 ffacd0b85a97d-482f79b042amr5036952f8f.11.1787888260391; Thu, 27 Aug 2026
 20:37:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CA+NqQMLn1LVyn1+o4oSRNg2DMmw4yYpFaUmSjmu94_=C-EmGaQ@mail.gmail.com>
In-Reply-To: <CA+NqQMLn1LVyn1+o4oSRNg2DMmw4yYpFaUmSjmu94_=C-EmGaQ@mail.gmail.com>
From: Nick Huang <sef1548@gmail.com>
Date: Fri, 28 Aug 2026 11:37:27 +0800
X-Gm-Features: AcwNN1WMqjlwCgFwPceyPZEFx4f7GQ2OVUw8KXkQ07B4gWA3RQ243CiHzc8rM1M
Message-ID: <CABZAGRFMn=UCuHKwTCHQ3ognSGQRF2aUXxnjObr7cguqXFgtMA@mail.gmail.com>
Subject: Re: [QUESTION] Memory isolation between critical and deferrable
 workloads in embedded Linux
To: viney kumar <viney.kumar@gmail.com>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

viney kumar <viney.kumar@gmail.com> =E6=96=BC 2026=E5=B9=B48=E6=9C=8828=E6=
=97=A5=E9=80=B1=E4=BA=94 =E4=B8=8A=E5=8D=881:40=E5=AF=AB=E9=81=93=EF=BC=9A
>
> I am working on a memory-constrained embedded Linux system and looking
> for an effective way to reduce RAM pressure.
>
> approach under consideration:  To classify threads into categories
> based on their importance:
> Critical =E2=80=93 must remain operational
> Normal =E2=80=93 regular functionality
> Deferrable =E2=80=93 activity can be delayed or suspended under memory
> pressure, till memory is available in this category pool.
>
> I am considering assigning a shared, bounded memory pool/budget to
> each category.
> which would be used by all threads belonging to that category.
> Query:
> 1. Is this approach effective for managing RAM pressure in Linux?
> 2. If yes, What is the recommended way to implement category-level
> memory pools or memory budgets for groups of threads in Linux?
>
> Thanks in anticipation !
>
Hi viney

You could use a userspace memory allocator to manage these memory categorie=
s.
For example, jemalloc.

--=20
Regards,
Nick Huang
