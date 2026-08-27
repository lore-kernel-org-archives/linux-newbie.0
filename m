Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF2141A508
	for <linux-newbie@vger.kernel.org>; Thu, 27 Aug 2026 17:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787852414; cv=pass; b=eNfFdXGZ5n37oRyeF5EOjDCdpnha+eh4oLycDBoIqtPIOI+CqJlHuAFN0YnOCR9wWVVhjlsNIF2/GQ82IYTqH5gOn7esEjMAbuAtYFjW+6Lhf6+/nBmMr5N5HCWa2K/gSfvkPwXs2JT+DUs+Dr9ONhELmV+6wRAHmoFUmGSDRng=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787852414; c=relaxed/simple;
	bh=3JUS29UpP0tjMzt5rlQ6iVe2Fv70kH7TSVP13qbejKc=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=kPgKY5nEBarmN2NkUnbqQ+7MJ6tqXkClrfLGR4YHzhJ/jK4FWMZhEyETpF80KMkN/LPQVgAXrbjdzPPluzc5uZvEGwajbjW9NPDLXIkgOZ0p5znEx35FGX5WyE3jgvpPH0j88pUW150r8tWehQiqf38esoaoYviHr5ts9OaekJw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ppwFNYnO; arc=pass smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ppwFNYnO"
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-84830c774a0so290360b3a.1
        for <linux-newbie@vger.kernel.org>; Thu, 27 Aug 2026 10:40:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787852412; cv=none;
        d=google.com; s=arc-20260327;
        b=A16/eM+Yv6l+PZdJ6z0rMinMO3yyZpKuHj5f3Z95pKhtJq/Q8WE/aBDMnWsXeTS/e8
         Uqy6c0B2l39+3PLMMKFfsAwh7wSrGsZn5Ud2BMWMeJiFd4EyIl790fDZLSy281A42Y5l
         Cwaxu6r4K0kKstQ9EYZ5w5/eDK7JFfc1Lzu5+83xJECn8DTHGMe0ZlZjMSzr8dCmMnyB
         ZI3X+PkHLS9ctClbN2DWiKp3XTiNMeXQcW4nO4hunWLDW6zo0pTOT6tjsWtL9ahqpZBQ
         1Bs73y1usjxrB2gqKLjt6QbKICpsrjyJXwpwWfW+vre9gX79YifaKnkNf94qiUCFGEI7
         Iwog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=vbKYmLU98l6vY14xKmLi8SPVCiSpyKCJuPRcxtrBtD0=;
        fh=u3dlZKQwpJSd+zcmuj1rJNhgAJ1zUJwhQmSUmIdaVPQ=;
        b=F3ENfg9Dbvhr5/qdGdqtHX4WKtV7o4OuKopfr0MrDzCp5FJtpZ6tshuWw7vnFL21FN
         bxWT0IYsqw/4i9g5/jgHXZqbsrFEZVXq6eNNpGEaHdX5mLCfSvxkOxk1enrBGDJVAk2D
         ezWJwU+acisnTUIVgl/YQmhAg1LzA/fFVcoSrsNQjDDsWl+TI5pJQpr2Cc0Fb/bMzuVa
         IhiXJs39Cn/cDh/5UhE0yhvud05meK2kDOJF3ItEmSKj9Cwa829BVjisUHKZk5E2ByD4
         BlgGTLIBzXuWAiYaMGeYX5GxVnImg3JwNRqQ+5oYnBvn5NgUnQL4SDMpEvf5s3d/VqQ6
         pNDQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787852412; x=1788457212; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vbKYmLU98l6vY14xKmLi8SPVCiSpyKCJuPRcxtrBtD0=;
        b=ppwFNYnO+NRyNwRUL9NJDhubQ3qIUCBg6Fyw1pSPSMBQWgkMY5Q8DXHMp+hvLA+orG
         lEbIbb04M3qX+u812T2XnGrcl/v8hAmJ9RDFkvJPw2TWb5L5xTLOIq++bh5uIon+Km5n
         guXI/oy4t/nDeBp2+ZjlrR/CDdhQPM3hdowiALp+Grzr3xtuZpOvg4MC2sOauZT/8ikE
         SlHv6PPqyAYBsRA0YHejiiPZnCHlyFXVmuHDqhmjmbH4RHuCHXBVdXUapNzmw2edCFz7
         GucbfYFwmdEBGpW/lljmRRoQO7080f7QnLtafV8dS/K8hCdsxt0dUS7NOqDWdHLTcznd
         y1dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787852412; x=1788457212;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vbKYmLU98l6vY14xKmLi8SPVCiSpyKCJuPRcxtrBtD0=;
        b=XR44tzdFBXRK1xG5qT23+P8jCwEmvC4/6GVWlQaWuUPbwKfiIYnZUMs1uneZpEAnm2
         ez0ScycFiCy/Izk/W2ZbZwLCA+6ShvhZVbXHetylV4kEegpQ4RCEH3oKgGH4qkrCs2Qz
         vfBWP4V4JA1yymlQVbSDFbPR3+nhQw+RxI697ma/PquAwz7zFCLaf1qigfCXVq+Q64AL
         ojlC0D0n9y7dbGTeHHCfo1HoT1zxl8izBd6X1557/7EYkc0WuEyzAu06KlePKK8hqA/+
         /IoexvGOqHL6YueY7imamUS7Oql68Ie/576+Qng/BWB86uKfXyoQCpxtprPu2LV2RXkd
         pDtw==
X-Gm-Message-State: AFuF++lD2aQcabzHPJox5/rec8Zm6IMiTP9kbRzEWzsBKgDPQruKdE4Z
	D5u5JJx/WMejlmNc7zLBIKqFf8aTyD8M58Ka9+yian9um/g8zI+Ef3L4SRYUpUQwKJ7eHBbewEb
	mVpve63Yw0GOtIwKiPctsmWtGhG1AwIfPlTuc6Mw=
X-Gm-Gg: AR+sD11Y1lO3Ce+U1I/A0qPDRfCcbY2ikWzqPoAHP2X3V6AtvF5sGceLAAECL0uOd5q
	oznkgZpBJAfhznI9je07BbrN9acUqbWuBgoIpePMk42mJgXplnSITxUrAuw7mjf7nUV3iVqSL6P
	SxcXScdQnf/VDH7sxyTdNqKOU/3I2k0+mXVDVz7AJgS/0+OCvFp41aUk39/eO3SpjXkh1ZSUmKO
	uG/M0C/lDb6NhilPAbw+Albj+PBE1j8d3iBF+skU1nPvH4pENdpMu1j3WOp2mwYa9HmOTTQCmpi
	Oxxp4/KBMJ+63w8AmEwJJvYWwkD9m6D5dv3FPjj1eReSHCMp5IQ9FFzm0g==
X-Received: by 2002:a05:6a00:2888:b0:847:9315:fb8b with SMTP id
 d2e1a72fcca58-856281ac5dbmr1709850b3a.6.1787852412067; Thu, 27 Aug 2026
 10:40:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: viney kumar <viney.kumar@gmail.com>
Date: Thu, 27 Aug 2026 23:10:00 +0530
X-Gm-Features: AcwNN1UDVQuxQ7uppZvkerlIxJqsaaQ6j8A-A7wTiFCAGl4gwbj07A_RI5XwiiA
Message-ID: <CA+NqQMLn1LVyn1+o4oSRNg2DMmw4yYpFaUmSjmu94_=C-EmGaQ@mail.gmail.com>
Subject: [QUESTION] Memory isolation between critical and deferrable workloads
 in embedded Linux
To: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am working on a memory-constrained embedded Linux system and looking
for an effective way to reduce RAM pressure.

approach under consideration:  To classify threads into categories
based on their importance:
Critical =E2=80=93 must remain operational
Normal =E2=80=93 regular functionality
Deferrable =E2=80=93 activity can be delayed or suspended under memory
pressure, till memory is available in this category pool.

I am considering assigning a shared, bounded memory pool/budget to
each category.
which would be used by all threads belonging to that category.
Query:
1. Is this approach effective for managing RAM pressure in Linux?
2. If yes, What is the recommended way to implement category-level
memory pools or memory budgets for groups of threads in Linux?

Thanks in anticipation !
