Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7316F307
	for <linux-newbie@vger.kernel.org>; Sun, 23 Jun 2024 10:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719137223; cv=none; b=UsAlsSmUX0dCYxQGk1ERx/SApK5HDFlZ/W+KtRWOrIedgi44DuX4+DiRe+y+5YhSwTUvFNQx4X2n3gCljpQD4wBmzWlIHw8FAUFzzLuTcNNmRWm5z9PimK+qI0sGwo4vKi4Tshbv1icjOLBMKoxmzExPBQ9GqbctdVrGmymn9RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719137223; c=relaxed/simple;
	bh=FfkJBPAxpue8wGR8zr6xaFgmxTIeSjG4vdsVWMkeWfI=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=JpeUiOFgQL/jBYyYiLRWY36DjG2wEM4My/vUXRTW6cgS1rgjhnCWNKCG2r+AIZPBunMMQGBMZ4tpuyIAHYzaG0YBg8pWlaf/ycZhSZtgbD2KBFi+xOxERq2P67mM76XBkBtIGR8c6niQI2Etd7PNN3VSR07HPvLVuzYmKpKNoJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XzmqHnqX; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XzmqHnqX"
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52cdcd26d61so1446257e87.2
        for <linux-newbie@vger.kernel.org>; Sun, 23 Jun 2024 03:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719137220; x=1719742020; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FfkJBPAxpue8wGR8zr6xaFgmxTIeSjG4vdsVWMkeWfI=;
        b=XzmqHnqXogzg0/oYgEM+bhgmcrBU5Pgj1St7Nt5C2pdsgQ8cbN54kdFW/Lu9285Xpy
         nOAK9FAdaCxkf8Jz6uYOTw5+WrCTYyD1qcLfr0M4nNdxHSN8je4gocgDAg9gC9NWyVs/
         YQehDfB2G7esqdkaXwfthhESbQQ6YzJ0B3KfJ97HSdRitFjosCbRSw48tzzF/Ji7sqd9
         i/BnDDwKXpW9ly5Da2rGsr5ucR2KEr+ORy4xRFUGv12qBvSgSRBgV4mUQ0jLrJKFEfp+
         MzFdikB19wD+nbhvIC7iers8pzXq/n/QtIQaAGQU4vZRajcc2ps+Lwr9s+aZ+EcgRenJ
         UnGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719137220; x=1719742020;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FfkJBPAxpue8wGR8zr6xaFgmxTIeSjG4vdsVWMkeWfI=;
        b=aKVOLCO+wzwJn041eZ+doHIAgx0PyyHu+ROHt3HnKrwsQnaJghkH73DsOZO5r2Jq/p
         J+vmoLjaXTwkP/AqV1UV3vEh+exgkhglJD0YL9pg8ZtJCnjrOVnYnECaFEv8LioBj90c
         ZB1H4x14IlpWnrb4Ohg6BTmiTJeTxWkv09CdPjFsEc/1W/Tay2b+ODSSINo3aVpURAx+
         LrHlEtS+R/2X2ij4Yef0rgfCNjfCVXRsHK2zjrtC+s78JYy8zva+m0sIyrHXdKHeyeC7
         Cm8Bnmk5XuY/leVAGzsBh30t6BNMoxInltbIDtzS3cxJofsEb9r9etkFiXlITwuggOYU
         yUow==
X-Gm-Message-State: AOJu0Yx9XeStMoDbPNLn1OE6DpDl5aQTUU+Mm6XKnjvCA76g+YdAMjbH
	5Qp5SXltXN8/LJVsMD9lNLuz8ZTsAmndEvhRKmrm56aLkZXJwZRRK+wjPvVjcdwrH/PS4vRYUcu
	85oNHc2QyKAebpDBrmCHSaMf4gg0haUiB
X-Google-Smtp-Source: AGHT+IEELJJAQhA6jsl9482jZ0OrsAE9sqWo9/77KZafFK3oiOAz0u4fsgkI3nUWPpLSRDCgxEWvhz0i9GEpNvZjYwA=
X-Received: by 2002:a05:6512:2308:b0:52c:df6a:eb5f with SMTP id
 2adb3069b0e04-52ce1ece4a3mr994621e87.37.1719137219810; Sun, 23 Jun 2024
 03:06:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Amal Thundiyil <amal.s.thundiyil@gmail.com>
Date: Sun, 23 Jun 2024 12:06:48 +0200
Message-ID: <CANc_KwtN9ED=wCSWsAiy=_bYTODPxDC_-euDUOANev58AFMY-g@mail.gmail.com>
Subject: 
To: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Unsubscribe linux-newbie
