Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34E41922D4
	for <linux-newbie@vger.kernel.org>; Sun,  9 Feb 2025 19:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739130014; cv=none; b=r4xdkzWHKrAyLn8d4cFCFvhtDeVoXBJ34QHduPg5AyEWtfw0E7smNWd2GMZNHjSKsPSNGIu8AYwYlGgRkNQ1xmFmJP9EykTxvf5qTbcda/cO9MosTnS4viwz6ZU9brTS9S8WMwUG1yIKolV7ySMplHcT2gheNg/FWYjlMFMLePE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739130014; c=relaxed/simple;
	bh=zCcjboRiyhNv94aQJyi4XuLobobt8JukjQZx5AMqxCY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f5k/yMPuhXmF1UcQwSKFpYkcbigH5eSv0yyf3HA+yHmkKJi1u/7+rJn8jPdy78tssRrVg4SxO9fwyLaFhIjRQHMZtF2LkVhV5upI89Bxq/W0YSzRZuGOp2aM+YDtDPfGS2k5BI/RVYw/I1Xkj286ZcXcuhdfrjpPxzLnqUzrFSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dXN1p/hM; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dXN1p/hM"
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2fa7465baceso581670a91.0
        for <linux-newbie@vger.kernel.org>; Sun, 09 Feb 2025 11:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739130012; x=1739734812; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qxAZoviMNHvDWQOXhNambJllhkvhrf/fwRARWy71VMs=;
        b=dXN1p/hMgBkaqXXhQF0aOm9/xYVPMXBoGga/JD0CQdGL6ikyq8aX2sgkv1LUisObOW
         4PmybFAKn+PDBn6uKZ1XYnMKx33SY6a+YMcKjaTIfHkpVjOlDxngHYwOK6oVxrV+Nt2q
         6oMxjQeYyjzOkmaoHt34ce5IPnkFoQTJrfWpFQSddrhewDZ2n8XKT/TXlgj10gDg30SY
         U4fGysvmRcItV6I2ZIMHj0lqc0ei3seMyTp51zrVsXkAcPMC66hXf2KAyh+D+9tdL2rU
         STB5kQ2D9JRodidmTLVBwPI95x3jJlo8g1CoOO4pIOTpfd8gHg4CEm1vSPJkhaknlv2A
         UCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739130012; x=1739734812;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qxAZoviMNHvDWQOXhNambJllhkvhrf/fwRARWy71VMs=;
        b=XRFDuVy93b9QCZ38fk5E6sxfCKx7T1ZzZOmOnXswzKQaoZCO5vKCsaIQ+KuNiq01ab
         KiyR9XKXKJ9VhkydqdecScYtyRBsj+0oWUeTpbRuZsCSYuOW7XNms5ZVvA4nnH9XOCkg
         pywPpg6nO08AUIl4zd6ZsGyNnN4Qm4q0LogsGjqM0AoYyvAkZ463yul/pNaj1lppCPnI
         BnzVPHNridlqiQ2EZ9/NzgRUXK32USsNCcL/cTwFNezDWZAAxschkN0eJoodsEd9KOF4
         RBgZfzlDrAuyUXtpT8NfrX/TYUZJHukrkJ9EKzOKlw47c3We1sK2FKIog9l4gkXvguQi
         ko6A==
X-Gm-Message-State: AOJu0YxJ5yn1CxH0GXzXCOLEVAOc58eORriDHQiRQRdk0LlvoJDucDLk
	VcfnC9g0M9gw2r/8NLp3eSyVaPLpimexcLz3mzaoqV2gYe7upTFw+rRVZb1whaqP3wIDu/EZNK9
	8VakqxphiCS/F/s3WSSPL3RSZThzQ0A==
X-Gm-Gg: ASbGncv3b8Nh5AJ8r90j0K9O2yPtRc6yItLq12vExG8qTwSH4QYYrAxT8mbl4UjBO4F
	55ILJsORYiaJe/00EpAa6NKRqzhvfZ2hWfX3FnJvcBPPNMWY2szCV2HYPqQHA7qD3pZYOrKJFXg
	==
X-Google-Smtp-Source: AGHT+IHCPyARkanfr3yFI3+TO+BK6H49DIw3x2F7rKXreHpDTo3Ny97x8Ie2ugWNjStlf9UGAUJpCPS8rrRINIWUcqA=
X-Received: by 2002:a17:90b:1b44:b0:2f6:f107:fae4 with SMTP id
 98e67ed59e1d1-2fa24063c25mr17345751a91.8.1739130011874; Sun, 09 Feb 2025
 11:40:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CALZ+hkPg+WSsTf3yKFcQP+7yDb5nTGX2jVvVE11tCndJCk1+2w@mail.gmail.com>
In-Reply-To: <CALZ+hkPg+WSsTf3yKFcQP+7yDb5nTGX2jVvVE11tCndJCk1+2w@mail.gmail.com>
From: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Date: Sun, 9 Feb 2025 14:40:00 -0500
X-Gm-Features: AWEUYZkIdsyJhgi71CQgnyYQc42x6zuSwme8XHXPuC60CWyXbGJYGmKen3wYYFE
Message-ID: <CAFkJGRdvjbZLX4R3iN2LqDPF2nXC_aE_-ihzrS_bGYvYT=bHLA@mail.gmail.com>
Subject: Re: [RFC] Feature proposal to speed up the kernel.
To: Vitalii <skikunvitalii07@gmail.com>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Vitalii,

This isn't my area of expertise, but I think I know enough to explain.
In early boot, the kernel initializes graphical output with, at most,
VESA graphics adapters utilizing Serial output.  This is a limited
text only mode that even with a Z80 or ATMEGA does not pose a burden,
let alone on the minimum hardware requirements for the Linux kernel.
The time, cycle count, power usage, and other requirements for this
stage are practically imperceptible.  By the time later graphics come
into play like you would see with Plymouth the kernel has already
entered into a multithreaded mode and such actions are being offloaded
to appropriate hardware and are not impeding the rest of the boot
process.

Hope this helps.

On Sun, Feb 9, 2025 at 12:03=E2=80=AFPM Vitalii <skikunvitalii07@gmail.com>=
 wrote:
>
> When the display is turned off, the rendering of graphics is skipped,
> speeding up the pc. When the currently running command returns any
> exit code or when the display is turned on, the rendering of graphics
> occurs, setting the speed of the pc back to normal.
>
