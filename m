Received: from mail-07.mail-europe.com (mail-0701.mail-europe.com [51.83.17.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5912AD3D
	for <linux-newbie@vger.kernel.org>; Sat, 29 Nov 2025 05:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.83.17.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764395226; cv=none; b=Vj+LYo8sks4b4x9meoYSB8l7SYzywK7xgI7Bc6qaJ+N4Cb4x2MUvJJ85eahQ9gdyUqnskoel938PRK4uqSQ52ZCKcjpuDcnNjW3eC5v9dV4KR0iDklT6IDQiRU3B5iB3IVUyKYtY5uL2gYHiYRejLeQgQ/Ba/A1+SdYOL1Zz45o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764395226; c=relaxed/simple;
	bh=44RdKiu3jnoqojW/uY7H3YfDQzhv+tY+iXkAbZ26ViE=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jJBD0njMeSUpH8VSxLbsZm21iv1LJf+cxz2HTXuZ/KAr1tVHahLVIiZm2tby6R2yh2ShamOQrEiqf4Mm64KotI5iTdO3rg7aIALRwPAGgpQALz8jgpYSDze6uQO+fEfbppUaBE+le2GnpZWFGYt048F6lK9FDdDKhXYWaOD73+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=fail smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=ToKBNdjz; arc=none smtp.client-ip=51.83.17.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=protonmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="ToKBNdjz"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1764395214; x=1764654414;
	bh=44RdKiu3jnoqojW/uY7H3YfDQzhv+tY+iXkAbZ26ViE=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ToKBNdjz+iX/EPqZf+jheYPHprV4o3wQxo6g2ax90ypDsNZWS2gp6/MNANwpTXgT0
	 imxuFK4lE9zPdTyYQy8D098LwjVPwYysh6IxyKDe2paBGH84cbWVapxtQ+DtiJ3m86
	 Qp2fuzJTVKGYE52aQd6hZpfQ+Wf3Ad6YdE4WjN8ZqcsVwMm29J5HV3ZYK/BaN2fz6D
	 9uqBiY7yFELyrc7KiKeiSqZf+qZ9lZ9Tjdp3YxS8OIwIdjCClu1+OAiuFoyXgWeeW1
	 TiFGBnUvoLsWbPYSqTwagm+4R6TxfPM0slvjKKQL4ReKJ8gWNp3xeQq3HN8QxzJ7n+
	 p2UnVlmyH9FBg==
Date: Sat, 29 Nov 2025 05:46:51 +0000
To: linux-newbie@vger.kernel.org
From: Georges Kanaan <giokanaan@protonmail.com>
Subject: Re: Kbuilds and Makefiles in building the kernel
Message-ID: <E3574C32-E409-4A79-8A7C-34C48D971B3A@protonmail.com>
In-Reply-To: <CABZAGRE7jbjUbE8kbGmAe_pY=YiXhKr1woFNgwba68DENUBXoA@mail.gmail.com>
References: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu> <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com> <d5ffb46e5f000c75343b4689956445ca4df03575.camel@nazs.hu> <CABZAGREHMZwvxC3KizedrDUgTpvPbTmTDX-xde_uWzmSz7GdCA@mail.gmail.com> <ba1aa77d759f79db11f69bed4707a0502f65e53d.camel@nazs.hu> <CABZAGRE7jbjUbE8kbGmAe_pY=YiXhKr1woFNgwba68DENUBXoA@mail.gmail.com>
Feedback-ID: 26919654:user:proton
X-Pm-Message-ID: 1c35735b97f3b5c3735c37a1c175d41bad48e9e8
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Unsubscribe=20

