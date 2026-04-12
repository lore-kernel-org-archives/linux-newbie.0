Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E834A37B02A
	for <linux-newbie@vger.kernel.org>; Sun, 12 Apr 2026 13:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775999663; cv=none; b=tEXxKKsqK6GiB4DDLKnRArh7lOg+G6dunKmX7DpfMy5sn47rc2h0Cvxf1ZZYEgezKCmB0UJlv0umYTllaR3ZnawKEegYF/jza0nGLdGUtMRhuvZ2p7sQclO3Hp85MuXh4Q2tJrSvGuUhKPYLU+NSWgav0sDKG9fB5kQ8E4EcCgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775999663; c=relaxed/simple;
	bh=ucBZ0/nHo3SxlGLfpan5ZUVIur2x2nvID4V44KyvQnk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WviFNqmSb+o5iwrQcohOZaYts9TLKGN2TKzPP+1g7LP22lxYnyBwClbNcOKhWL4W3bAOxM5wO0upu4o6fT+exuOWJNJDmpoFlbp21ZLmzBbSkxfXMxhplwCQSjRjzGEz6zLXSYpfztImzN2/H5FQPgb2xnbKqCTlDyxtZavSb7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FnQc9mRc; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FnQc9mRc"
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-50d2945e6adso50575611cf.3
        for <linux-newbie@vger.kernel.org>; Sun, 12 Apr 2026 06:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775999661; x=1776604461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:feedback-id:from:to:cc:subject:date:message-id:reply-to;
        bh=lohnI3Vb/UhPN/K/rwKQ21yHM+CjP+sVAskjPiOZTSE=;
        b=FnQc9mRc6HkhLQgyyJ6bZifMZLuUo0RrSha8BRAjDBozlMiSFjigWce8SPlD04laTt
         9aZX4ngoepca4n2Ne5dCgJ6kO5RMjmNqBbW79qUoD+8jZ5NpJOMK2SXzFDHBGvTCzUNB
         /t/uvUE9HQsqBKfulPOF5wqXh/mU5jcT+zdnu9PTKhMaliK2dg9qd0MeKUXOwILIO4Uh
         Xaztyqx+oZRFlcpRgxPMrqLQUEeHCskznsILlNP1R1yfcTFZTZqz2+TyHEKARSuNSZcq
         Vm1wgQAwq9clYSM2j0K6VVVDPBaN3Vw6EdeSXhv7TV495VvomEi6D9S2wP6PRjwdfSNx
         4SAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775999661; x=1776604461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:feedback-id:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lohnI3Vb/UhPN/K/rwKQ21yHM+CjP+sVAskjPiOZTSE=;
        b=M3DzVyJ/k289XmGlJtkWhk3wBvhjlCk1fCiQJXAlxhkipdH0iznJMaOeIcXZB+ZVEg
         lLb82DOmbStfqlEBr4djf57mCd22vYLJ7ROgNiW4pZmU60l4i1VWQoT3QWRlgSWGpC6c
         50bUyI/ogNCocELFsTG5T6VqFjE6UcvYNZQItMoij0BRDxP706NxbcNF5XYsGhJ/y9Xm
         9Wv7J2jlSBjX0q03jpCP4vPcGHPv2WLAhTcSn7/Yj2DTBCFnXSfMEWfVc+EFDzIfJsWb
         Nj360HRqOqEKJwxOLnQbYy5ZVdEbIk4Jw/TYzN1wIny0AuaH9UOn5J/Mxxx5rgVw/sJn
         TQDA==
X-Gm-Message-State: AOJu0YwYeCGUnfN+23I0cUEJE8isTp6SnQDG/e9iofudU+Mht8rSiND4
	CVaqiD29yEb8R4XSYevmQOK0mz1CKFspWGHs08Odyn2jX7/3zzPzNkdT
X-Gm-Gg: AeBDievgKoJY2r4+cJQl8OCpi7RUAZD2tuu9a4eyjneX7QKg1ZWV+YmEHoYtL2fsW2F
	+Pv+xxA18Y0op2GmVvCHpXPqHrGAbLL+qIUhjh1+suBpIInXBXkgxFLTK/5tc/xNrKggTkkWGJn
	DrKB3aH7ui1rLmmRCMpZ2ZytJvLL77rLwZ6poiTA5XaEg6G4kZVtpwOrbxNSlW7cxW7O/ObbPqB
	voh3NzHxNmUE4pWWIutHwlO21xsR81//bC5oTeY9LZV8Nv7jbeAQ248KbBprdKQOIOClee3u9pJ
	IcLXEBr4Gvmno82pzFNVC0k/ROCtl5HO8KG7j2zSK48VkcNzBOURaLVNipKITNtdqEIJkhOU1v3
	Fk1z/zm6hK3nE6pMy0vWNo8jiFx3F4HB3gOwY/KikSUdGzjj5WeR5rBdtsEB9lR/PLYTGQ+n9LL
	Db9sYwe8ZBUvvV48SBljmVJSOGZjLKpl2AN7jGytH094ldaehI7dWrYtdd4fbuvhsDVz2DbiHf3
	rno0m5JGB9ZMg==
X-Received: by 2002:a05:622a:7508:b0:50d:a8f5:d521 with SMTP id d75a77b69052e-50dd5ca7688mr93293571cf.57.1775999660839;
        Sun, 12 Apr 2026 06:14:20 -0700 (PDT)
Received: from fauth-a1-smtp.messagingengine.com (fauth-a1-smtp.messagingengine.com. [103.168.172.200])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50dd53f2d79sm65443781cf.9.2026.04.12.06.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Apr 2026 06:14:20 -0700 (PDT)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfauth.phl.internal (Postfix) with ESMTP id 27814F4006E;
	Sun, 12 Apr 2026 09:14:20 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Sun, 12 Apr 2026 09:14:20 -0400
X-ME-Sender: <xms:rJrbaYN-2vzooFNhr0sdM7PWptHRc1vl5To1DkW1shj7pYsE7l-p4g>
    <xme:rJrbaWaHR-PhkbOgSCtDXmr9Q59GGRjNSIAcYCe7Ilj7qNcu6pewdzR5IC_zs9mvc
    aBOcvRY3r3rURgxuxSHH96RbE2aJpQNudt1sJ2XWEUW4J_AnzFhmQQ>
X-ME-Received: <xmr:rJrbacpSoIMRlmHrRTxhChDLZlTTrC_YvPV2Zc00GfynmI2CFGJcVoOHDPF-hKJ4NcDZO50wtrQ1KuXLMRsAbzmUhyi76vvYm9B_iqCes_g_>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdefheeflecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
    enucfhrhhomhepjhifledutdejfedusehgmhgrihhlrdgtohhmnecuggftrfgrthhtvghr
    nhephfdvvdevjeelfefghfefleeuteekudffffevvdejuefhueeuhfejffdvvdefiedvne
    cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepjhifledu
    tdejfeduodhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqddugedujeekfeegge
    ekqdeftdefudehjeehvddqjhifledutdejfedupeepghhmrghilhdrtghomhesfhgrshht
    mhgrihhlrdhtfidpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtg
    hpthhtoheplhhinhhugidqnhgvfigsihgvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhr
    tghpthhtohepshgvfhduheegkeesghhmrghilhdrtghomhdprhgtphhtthhopehjfielud
    dtjeefudesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:rJrbaaY_p3wnjXQMymU4EKPjuvE2q1UewtjqoZHeW4BdNH22m2DzOw>
    <xmx:rJrbaUS5zmEFTWcaRsq7z_KUshf35DTjUSdpU68JXvyXvUnoEGXwZw>
    <xmx:rJrbaR57uSw8bVCC97_PgIol870wk99bH4WMSBR27zvxPo-0eQK6Qw>
    <xmx:rJrbaZxpEaFqia1MGTl8wTkVAlr8RvQy6QDgH-8rq_gZTjcD8mPNQA>
    <xmx:rJrbaQTgSkBEyZheD6EMcuevtaABoIfWA21SCW-lUHcW2tIkIXduS5vx>
Feedback-ID: i444149dd:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 12 Apr 2026 09:14:18 -0400 (EDT)
From: jw910731@gmail.com
To: linux-newbie@vger.kernel.org
Cc: sef1548@gmail.com,
	Wen-Yuan Wu <jw910731@gmail.com>
Subject: [PATCH v2] [TEST 0/1] Test with random patches
Date: Sun, 12 Apr 2026 21:13:57 +0800
Message-ID: <cover.1775999068.git.jw910731@gmail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wen-Yuan Wu <jw910731@gmail.com>

Thank's for Nick's feed back, the Signed-off-by field should be fixed to
comply DCO now.
The commit message stays unclear since the revision is mainly for testing.

jw910731 (1):
  [WIP] Try compile linux on macOS with the help of nix

 flake.lock                       | 82 ++++++++++++++++++++++++++++++++
 flake.nix                        | 43 +++++++++++++++++
 scripts/Kconfig.include          |  2 +-
 scripts/install.sh               |  2 +-
 scripts/macos-include/byteswap.h |  4 ++
 scripts/macos-include/elf.h      | 24 ++++++++++
 scripts/macos-include/endian.h   |  8 ++++
 scripts/mod/file2alias.c         |  3 ++
 usr/gen_init_cpio.c              |  4 +-
 9 files changed, 168 insertions(+), 4 deletions(-)
 create mode 100644 flake.lock
 create mode 100644 flake.nix
 create mode 100644 scripts/macos-include/byteswap.h
 create mode 100644 scripts/macos-include/elf.h
 create mode 100644 scripts/macos-include/endian.h

-- 
2.51.2

