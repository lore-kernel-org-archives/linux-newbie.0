Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7C817BA5
	for <linux-newbie@vger.kernel.org>; Mon, 10 Feb 2025 01:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739150704; cv=none; b=hUXdEtSC9vCGD8ompQ0e8opz40EwL/0hdE9Mcytb4/qEKkoGwx0jw2OXuahI5dqFdOLR/F8q34zMRtfgRbY+q3+7d4J05VRV5J6CnVYT45L7iQDnNTOi7xT0WB5rd1W+lZLBp8JD08BjqEZ10y8/nKf0UtKs+7aDH8JbyhMISHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739150704; c=relaxed/simple;
	bh=jPOmB2F+W5i9ZjlyQIDHdoMu+aP9iqyZRFvbuZY2bvM=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=K9ZuhqP0n20kSz7O715EmSOPoYsYw0hxNbvgHwopWqCHhwhIE+2PGzUW7Fbf0UHTZ+RTj1LHKW9278deedqUTz0L4Qqzu3uAEmAuzc61rkLg9cmWDMUdyKZmR0Yybhne4As3COqHJH1slakYTlJ1nyaRL3J/ZDe2U2JfFSvYPz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QYDBh4Bz; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QYDBh4Bz"
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5de594e2555so3286637a12.2
        for <linux-newbie@vger.kernel.org>; Sun, 09 Feb 2025 17:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739150701; x=1739755501; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jPOmB2F+W5i9ZjlyQIDHdoMu+aP9iqyZRFvbuZY2bvM=;
        b=QYDBh4Bzetkdr5sBtMybInmB0zwj2ovP/yHaEUb58puSb38saiFDWlUn8pw4FaYWt7
         v0FvAk1IUHlDfLuLWv0bdzdRu6P5Spc2H3V5oJHsnAbtum2LN1xWyvtjp+DEQRKzhKBP
         o9Ay92lYbuzBANRBR2/tmOPKuPWtrf5BLFEFF/AN9uLUvp++Xfu7JrJRRTE9Fzuq1xl4
         6uqSIAIi8ZGRZY0xA1eUDUvKDD77XV6YLvmGk6guYoEby73UoFoMviIVfbOyD95Qnb2v
         uNf0z32AehJPw8agVBOzdNWcuJXMZ54mcYtrIbmtVwTO7p4Qm3hC2ldiUI6cN8Y0UKg8
         xY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739150701; x=1739755501;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jPOmB2F+W5i9ZjlyQIDHdoMu+aP9iqyZRFvbuZY2bvM=;
        b=MMVsUTieOlqEF6UP8KPRO+pazZkXPaUX2gE+IjXkLRgVNtxTFRoaiRgHx0kL+b742B
         VNdXU0/ht4aNba3QeKt2B6OHukie6GFLwpx/Aws06dEv/g2Ik9bwSSiWCccgC9lnwA6v
         AW+rX97+K4AgvVNpRVN2dln0Mj18E0y6+2tAvALM22NRbkfkeJd6sfaDj4J826nxgkYF
         04+CvZRYEh6Io+uKVuNl8idpUwNl0jwVXHVhBMo3mVDWpNYyK5ngIsPu4WWYOfL9WqZU
         HxMIAevYz+2KPAm3FTzWHPVSuRLV/3J1gVG25MofHXF2qBnygS9dfeLJRfYZUhvlZ9fJ
         cFEA==
X-Gm-Message-State: AOJu0Yw0itgYtOWGyvAyZ2RnEO93zpCLjuIC4Paw742zvgVLrXtN16Xx
	fOQlQCg0+cko/lMMjKisAx4PYKgUwhsKzTU8sGXXkiCfqoKTFFtr7Sryh1/G8v9MzUb7Iems7KS
	uYrec4cdyTMcbpTC5Us9Kl5v/9vXDNvAE
X-Gm-Gg: ASbGncvBfikwdBDX7EwDvY86oTwuXueTWy6wCi4E4NODMYMmqQBvGxLlbDeVTnmV5uv
	o1CgptjTI4bGbuA8fWFJeS0vOyes0zzP6FOaZ2lNaR524vphjLudhl43LGXpPBg3tBuYY78bO1Q
	==
X-Google-Smtp-Source: AGHT+IF/tTuZkcQE03lxXGJc5kKB72tvxDsDIblt6ITDPYXER7QMWTezo/UKxGK1nbkMQSvzK4c7EzATPCze310rYBo=
X-Received: by 2002:a17:907:9411:b0:ab7:b84c:361 with SMTP id
 a640c23a62f3a-ab7b84c05e6mr352826166b.25.1739150701020; Sun, 09 Feb 2025
 17:25:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Vitalii <skikunvitalii07@gmail.com>
Date: Sun, 9 Feb 2025 20:24:50 -0500
X-Gm-Features: AWEUYZlh7q8jrLfom3Wh34f-JqRTtj6Llh6CI5lMoMVQ18EX5LNwLY3iDDxFrCg
Message-ID: <CALZ+hkOQznbiWUZqHeYfkLOTaSRphyEMzvJv1dVkfSNF64Kajg@mail.gmail.com>
Subject: Re: [RFC] Feature proposal to speed up the kernel.
To: joshua.r.marshall.1991@gmail.com
Cc: linux-newbie@vger.kernel.org, skikunvitalii07@gmail.com
Content-Type: text/plain; charset="UTF-8"

What I mean, is that the kernel freezes the GUI tasks
when the display is turned off so that they don't run but
also don't exit. When the display is turned back on again
or a command returns any exit code, all GUI tasks are
unfrozen. And this happens way after boot, like after the
login screen.
