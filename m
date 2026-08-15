Received: from mail-pj2-f10.google.com (mail-pj2-f10.google.com [74.125.227.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6994266AA
	for <linux-newbie@vger.kernel.org>; Sat, 15 Aug 2026 16:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.227.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786809930; cv=none; b=Dh9xzuWQNiSVOBG+lkyGOg3sGEhzuw7QGuHelUb5A9NqMFnlF7tHhuNQ/JzNimsgfVck86elP9vQUHZ2ey1DwbYqq2gH15nf2GLarkmYSdauqdZ7l+b4tFTITDXAzp39K/eBJkxEhZ0f+VGYoPb31rwMeL4ljxRUfHEKoT6peVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786809930; c=relaxed/simple;
	bh=EWRnNXL5DfrABl8rhsKP9fp2V5A5mrgTEqENDIPj2AA=;
	h=From:Date:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=o/hYVMWOk0t6P+5mAbF1yzxoGba3Hc+GpUcEI7DX7HEJosIGRBdjeOOH8RksUT861LyrTxBOUqLXZQQj5Y/kxHd5p6TdnAZse8KkJpgQq2C6frj0WqjKcdyOeefaT0v4PRAThqZx5g/Fnsn2z++KgMM5tu2qYcoxq+XEgSu0EjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WCzHUrks; arc=none smtp.client-ip=74.125.227.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WCzHUrks"
Received: by mail-pj2-f10.google.com with SMTP id d9443c01a7336-2d3a0a81329so24395075ad.1
        for <linux-newbie@vger.kernel.org>; Sat, 15 Aug 2026 09:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786809926; x=1787414726; darn=vger.kernel.org;
        h=content-type:mime-version:references:message-id:in-reply-to:subject
         :cc:to:date:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NydkqvqVnkTGdQYXc4nxDlTxUtRHaNN7q6Q+6LEpD5o=;
        b=WCzHUrksb29qTbmvcQ0WOoXuEL0vCsCz9XVW7Z4UDczcZ7s/l6CC/ycHeuc77t7wKQ
         jAyhfttQ20NXddsnwxFy3/NH3SCtJio7x+1w469ROyRcxkPQmt7SmqqMi2noNDUgcBrA
         0HnYxMCTFc5lJnd8uSfkhQkThB9nAGbJeF6GuAN4HxCvIw9CagTNGgJe0p6GX6oCKDOu
         YC8ZbZO5q+KELqgMaiZGWHeHaCJZm4ZxDPjwwParHog79+GlxemmsjGoQzhpfxvfD+Ym
         XrzhUqBoXD/XGR4COZcM92sFwcbi9MBsUYQw+7GmC5fPExEkM+SR0uQrBODU7MEIrfb6
         8RaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786809926; x=1787414726;
        h=content-type:mime-version:references:message-id:in-reply-to:subject
         :cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NydkqvqVnkTGdQYXc4nxDlTxUtRHaNN7q6Q+6LEpD5o=;
        b=mgzvwvcGztXjS6SBDvKG7hSY0ujPpxt9AEF8bRtYq9A51rVtvbvvtWoUJDhvaHLCXg
         Sz2pgkS3Hr4aOcI/3BYevUCxsJMz3tEKBWA6urdw7nAoz2hRLCv5/FdOss6HrB0CiRc/
         xz0KDcQ4+cbHQJKkNZyrj+z8wm3+ICs5RXMT6RvrRs72Hg/3fbUW7XU4vVfmHXOzFPKS
         VtldlNDrynZNS00KK9/y8J7JLdisDtHIolcogQvzkWFhjpG+uKA0+lLdpOX4Bg4+4C5I
         a6choh3u8LrbwT1orwsHh/PEJj3u7eYKUzL2/1YkWM4vY6CeA7t59mZ+5U4YGSFf5n/N
         zmXA==
X-Forwarded-Encrypted: i=1; AHgh+Rrkk/p8bUcfQ0Z1Ha8r0gaSSIi6dvGd/wBNO7EpqP7ZgMLss3gyo7qk5ftH59E1dJSqz6t+5WHW3LjuTjo=@vger.kernel.org
X-Gm-Message-State: AOJu0YxSi4r8PidO+ajKba+qtpDg1Zg4ShhNJbLiQ/UwIMIBHdbFXIZX
	Z6MT3j73B6o2Rnu4tdi6L/GecUSL9W0Gu6h9gQjAx9iv5/hrdGhmzKtpYCoKfbfM+1A=
X-Gm-Gg: AR+sD12igPpflFHPISqFNUsjN5CVja7RLrVvXLidJJz6rQpW6RtWUKAaNTNATzSYsCW
	KrJ95gtIfxZlorEGW7WZtYP0JditFjFfqbKVBoGDcR0IKtZONUSVcRCVcIW+KWm+8pwojBNX3Fp
	DuaVD/vJHzscGhmKxNcyHzd/KmYlFrR8A8vR5OwZxU6DloDZ98FbGCcDLHo7XvDCXiilpdZ9k/T
	37fm1jAwsb+NJtRksaIbX+2pFkBzu8icZLoNw2jH+H2XsKqPPoELgw90bgsA3IZV2puR7AqTzoO
	y11JJzflS3ufVlovw87KOG+5ng1XcD8ar5JpC7MocBTzhkoLovmAS2bWWCiN8MCDoo/4JnOk5wO
	k33jfsKYxbGoaL47Klwfz2PKr7RuLwEt35ClM2ncCqkiM4vd2/MjCpnr8krftnalrRB+IL2U+w2
	iJZR/7YgFAA42Tkc5FpY57yNkbHOaM4Rrgz9qIgUUv6BHI/zl6jf7d
X-Received: by 2002:a05:6a20:4322:b0:3c3:a0cd:9d27 with SMTP id adf61e73a8af0-3cc71cd1487mr15039599637.26.1786809925534;
        Sat, 15 Aug 2026 09:05:25 -0700 (PDT)
Received: from 192.168.1.2 ([157.85.198.7])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-323050db573sm11457872eec.9.2026.08.15.09.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 09:05:25 -0700 (PDT)
From: Foxie Flakey <foxieflakey@gmail.com>
X-Google-Original-From: Foxie Flakey <foxie@gmail.com>
Date: Sat, 15 Aug 2026 23:05:22 +0700 (WIB)
To: Ali Nasrolahi <a.nasrolahi01@gmail.com>
cc: Foxie Flakey <foxieflakey@gmail.com>, linux-newbie@vger.kernel.org
Subject: Re: [PATCH] userfaultfd: reset err when move_pages_ptes succeeded
In-Reply-To: <aoCJXlrOG3VvCGLt@zephyr>
Message-ID: <d5067caf-9e85-e933-dd30-4568dd799408@gmail.com>
References: <80b30bbd-dfa0-e8b9-0af3-e89116a464fe@gmail.com> <aoCJXlrOG3VvCGLt@zephyr>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 15 Aug 2026, Ali Nasrolahi wrote:

> Hi,
>
> Use `./scripts/get_maintainer.pl <file>` to figure out to which mailing
> list you should send your patches. Also don't forget to CC the subsytem
> and the file maintainer. I don't think this is the correct mailing list
> for your patch :)

Thanks! I already sent it previously but there was few issues pointed
by someone on IRC and I was sending here so they can check.

> Cheers,
>     Ali
>
