Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7813E340DA6
	for <linux-newbie@vger.kernel.org>; Sun, 12 Apr 2026 06:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775974391; cv=none; b=MmkXK/61YR/2XoKGIxkNuK7sh/27qllT9irtf11QSz9+C4DihlaEzVPln0lJ0XVFS/odb420ONRYt03cU4TmYtoCeeoR+NSSC2/+TSQRm8pIhN+s4KWM/Kp/vLFKAVaO6IQvIe9QeoeQbM4IdNfJmTWt1qvMLJTaJjVDYk+gnN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775974391; c=relaxed/simple;
	bh=m1MjDx7FP4Wjx9nF9ymSysKthdN89LF4avk2GEGR6Iw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mVwFgEXLGfWFxdQry37KGQhL9orfW6cE9uvVz0YCaN+rDn3YpzTPia1Hy8UWUDySdCczkpTArYax6AxqwhaNpO7Zzp51BwOQjL4xhkFC+3D2jwgC6uDGp3ptcpbNSB6ytWv15Y3iUw9Mgh2SKCyzLdqYO/nHR2E2JSYi+wKDVYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QLVSEyUO; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QLVSEyUO"
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-50d6ab4476eso35308931cf.2
        for <linux-newbie@vger.kernel.org>; Sat, 11 Apr 2026 23:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775974389; x=1776579189; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:feedback-id:from:to:cc:subject:date:message-id:reply-to;
        bh=nDP4qk76XumR88sqvcABE+TXAqvIdEBGuY28Nj9z2as=;
        b=QLVSEyUOG/IIM+Un9+dRksbH5M0W1nImtCOpiwNcIR9IgIFBZUKZLWpmargI4d/rKK
         +8d6sw/RVoMKK7TxXXDhm3lHb2ABZcBR3PLCivP5AhXgrCBR5LUMtuuxmNSD7kMMRfgN
         y8dc6DRiG9wMs3bHn8kfdy9lJuXNrm4Dl34/G0nPLEReE4affVx0+GnHN2YL/zYwAkfP
         DhtCOlHX8bbJnm8q+HaetVoYPkdkGoZfEFBacx/FCwspenekjSBnN/hHJZxnRtYc2547
         ITn6hLUSHSvPQfdkb/cyEU119eoiZrdchhq4yluS5CrUx53RWGgCOQ4UNf8EgkclCpdJ
         pPfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775974389; x=1776579189;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:feedback-id:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nDP4qk76XumR88sqvcABE+TXAqvIdEBGuY28Nj9z2as=;
        b=RK/zpZbN1f91u8+HQ17HJ+ukocH655M8f7j5Eq4kkrtaxRv3DsvhYxU9UEY2HuJ+8F
         yCmcsg+PWLe6o3IpVdLl3C/r8FyGkTO98s8PBmQs8DeTwihFpcAVD1/l+TLv0zLeeVbW
         FDiNx//SvhacNdnG8iVdM9PbIKFpBLLEHzsqbk0cYWo2/6Eik8dfeh2GEKq9R7MkjMTc
         Ju9OarMlOkOSPOiZ2S3VNXRajiZ5nKxvJpTyYn4HYLB/kjFxgYyDRaO9D3WgIL4OS8kk
         JwzF1upiZYBe96N2J5E5NfVnG/7RopGt5e/lUOxzYcUhV1iXxx+Me0U3YEnqTmXenGt0
         gPGg==
X-Gm-Message-State: AOJu0YzjvhFkHc0Ddn+OZndw507QsDhprOW4tmdGC3GNILDZvaNvMyS9
	2UgbD4qzH/91EdxYmAI0xPk4gEGaqMDQ1qBYDU/MFUPBHm60/WdBnLxn
X-Gm-Gg: AeBDiesL5RPS5RM6Y6OTeRaf9FDiCCIRFtcnXTn1grHSIoZdTTpG9qv4ICACXI/ZXsk
	tCBSZYdVtEO6JAUYayKHAYgdIHuOkWvNVJg6io3NYEgXeUb3E/hmgYZQecT5RwbDe7a4ijbUp0d
	493CNtCje65MMFv3+lvzBFc7tqCKyfy5gCj499/SvT94wxidNfasZ/Gisk1hqN8IVcZraVHTowR
	P0we2pf0NSyLWcx7oJ/cOyihd+0n/BzUa3Ygm0r1zrj52hagWiRZxB1X+6L2T4lNt8IBXymbbl0
	k8S2gg4BIYrgauvfzOo4SywHxeRzji1gpVyuWAJUt/AcVDA5Hbjt8ajiMd/SdHCbX4hPBtU5mH2
	HrY40ks96xKoKQ01vRn771Wn1BqkXyuzctcJ/Qfr5uvLJt6SZJpKvNw7XnLKyqSOe5dw0bR4/o2
	HrJ2trAqdnrxJl7m5tFal5MEc5RDGA9I6bLyGMa1Fzwudp+R9TY6JYmUhPuZRhaXrIYdOJwpuqV
	dYtaWl+bI4gZQ==
X-Received: by 2002:a05:622a:44f:b0:50b:3895:facc with SMTP id d75a77b69052e-50dd5af5b32mr136764691cf.14.1775974389468;
        Sat, 11 Apr 2026 23:13:09 -0700 (PDT)
Received: from fauth-a1-smtp.messagingengine.com (fauth-a1-smtp.messagingengine.com. [103.168.172.200])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50dd54fcaa4sm57909281cf.20.2026.04.11.23.13.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 23:13:09 -0700 (PDT)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfauth.phl.internal (Postfix) with ESMTP id 87CAAF4007A;
	Sun, 12 Apr 2026 02:13:08 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Sun, 12 Apr 2026 02:13:08 -0400
X-ME-Sender: <xms:9DfbaRUflzT_AZa0luQZnMrHBRJ8OZpso-3Nr08lezU33H3bMHJcHQ>
    <xme:9DfbaZARc7kvwQjJC4pdXJE_GDMclXVBymtqcKZhHBPNre6GMKlTiRTT_Sf8ok7tv
    hsoMj28oN3mubfNViEgPeYmSSM7_gUyuKqluDJfzkvyjcjo0YbU9YQ>
X-ME-Received: <xmr:9DfbaaziA530ZmOPzETtcK-AbkoLoGKBoAgVaFVD51Q7gtXVdmUtOE5qzuWJ0gzKKrh1r7B9v_GHUVRBHaBgGVEA7AQxC_CqZ9tVLl-WfoDu>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdefgeehfecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:9DfbaeCOqF-BFizam_KCLVJs1fK169_GgPCr-83sheCv__bvuURm_Q>
    <xmx:9DfbafaQA4yEqsBOABgpUK6IQS8Ps801woUZkAGQtmIH3OJz4w3srA>
    <xmx:9Dfbaeg9G9NnhqRtzwNrzMZTprag7OsPFHwqESn6K-9ImlvuQ04fWw>
    <xmx:9DfbaZ7V6gvtmUlE8FI3K8-MPc7bYTEGf0DJFeCqHPdd5VmYlMjStg>
    <xmx:9Dfbad6ov2P3i3NFjhGcuo2ZdInrRfnKbhaF4qbjKw_LPUMrWkozNQHJ>
Feedback-ID: i444149dd:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 12 Apr 2026 02:13:06 -0400 (EDT)
From: jw910731@gmail.com
To: linux-newbie@vger.kernel.org
Cc: sef1548@gmail.com,
	jw910731 <jw910731@gmail.com>
Subject: [PATCH] [TEST 0/1] Test with random patches
Date: Sun, 12 Apr 2026 14:12:54 +0800
Message-ID: <cover.1775973405.git.jw910731@gmail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: jw910731 <jw910731@gmail.com>

Test message with some random untested patch.

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

