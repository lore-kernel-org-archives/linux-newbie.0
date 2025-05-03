Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8354B29405
	for <linux-newbie@vger.kernel.org>; Sat,  3 May 2025 06:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746255183; cv=none; b=Omujt0rJtbfTiPiylA91jRM4JJpjRDYHMrhhyKNgzD2o/6+2nQLLO+s/GGhhnmXofOj2E8FRsW5Xru8xh3vicklBR3wrED9Q4P3OuTL9QOrxlLZ+F96CltyKGKztGPZb1w/oong5bM2e4tKRwIjkS41eu0JfNnSCAJNbP4cI1Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746255183; c=relaxed/simple;
	bh=l0AzVZ2FROvsUB1Hp9YrG/3G5OrEjJQyEi8OEhMviXE=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=ltLpB6pJ4n4m0mwxFL+v1wmrf5oxuw/6ajyWLt2q/8y3meq6tc+hSkajV4JdywQP21PW6GSQD66t/XZtQrmQb3bugGaHRf0jRK0yfP+uCvekmBicIsShAoLF/TBXnQaVsN89LsHoWG6+hqBv6BGY/YRJC6ckMfUDctATQJgjpbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=karlexai.com; spf=pass smtp.mailfrom=karlexai.com; dkim=pass (2048-bit key) header.d=karlexai.com header.i=@karlexai.com header.b=P50AwPWi; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=karlexai.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=karlexai.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=karlexai.com header.i=@karlexai.com header.b="P50AwPWi"
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-acb5ec407b1so446733466b.1
        for <linux-newbie@vger.kernel.org>; Fri, 02 May 2025 23:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=karlexai.com; s=google; t=1746255180; x=1746859980; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=l0AzVZ2FROvsUB1Hp9YrG/3G5OrEjJQyEi8OEhMviXE=;
        b=P50AwPWiz2fOVW5BmUCBKT11Cs3esT8GBwbeD0ps3snR8nBOWagKnYIWkZoLSl0QuI
         1IJ8qv9gGqK799vakhCutpg9nr/l0UiT+NoiK9ReKcLs8tHqLJ/32ypzJLQisrdJ6BSi
         zk0ew5JN7ijf8FUnkTmjQRoE+JZfa4fjmhf6hUzstXzsnOhyLYO4nof+GFUF4FXb1u2y
         NSHXg1fAnzyAQSWsP9obCc/BSIBj4xSIlAz61tm5wRQvh/pyOwE57LCyGsw6uPI18gq3
         7VcbvdUG5BxDsgcHOaD0f5vujbfiu/OsuVnitUPzRvrSDVz+qyYyU+suEwPC8lNURzxW
         kSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746255180; x=1746859980;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l0AzVZ2FROvsUB1Hp9YrG/3G5OrEjJQyEi8OEhMviXE=;
        b=hAZg2V1szPVDZj55bzZmXFUbKO57jV41T8UBawlOBwh/BUDoolw3G/gNDojkkpad+i
         Fqx95xX1QPos8i7p9rRn1GFB4hAcDn5MafGvThwUGqJhv929db7kphHLotEmRQChKfB+
         pZJmbCntvDryuqrLtsQYkiK2X1Hc6eysJN1YvByaxbHEIVXqITgnkdcV6UOrlCFU9JLt
         ZAy81kuLKNGKU8HqFbmLKb+UoYM8nedqrv/6v851jn0JsYxRHHg+X/NZMRS804D3y8mH
         hwLDLq19RaYZpQwDW6LdsD4WuQX78hg5e0uwlKbFB49T4JtmnVHcjeIHbNPkiJtPPo3t
         /UFw==
X-Gm-Message-State: AOJu0YwBBLe95rOSJx//YxPPNpNHLOvySviheprb1Q2IBVCTe8F0ClQE
	kheexQy/KYvqoxm8G5rmLoqz4gLPmiDV7j0LMwIovKHS9Z5C+TzrNckbP5fHNFN66pBlf+nsWNV
	wOjTS0f1dCPKD9LVVz0LWb3smOWVF96TWo0NrYFigmCFUtLhzuBll6Q==
X-Gm-Gg: ASbGncuEkpzMe1l7QdXAjmGogsKk40GoFV+FZqs00w9q4wvYJDTatQslcFZrM1bM08d
	BT8k9SKfRRO6LvNT3JAN7NB/4JZpPRvxxiEPy7/6z5XMxlhGdhVdNrYbsWst3udgduILUqpMeIu
	vMxRIoNgCodYu6THZpWhDBFAifKGKJ+UBdQl4Zyyrw5P09lHALGIV1/rc=
X-Google-Smtp-Source: AGHT+IGeoGRVT5n5ddquTmrFAKQX5XJ0EhdoA+jv93EV2Eu8bp2WsuI2pTW5KYNMuLaToR5c4uxNkLH8PzBAEu4sTqo=
X-Received: by 2002:a17:907:2d07:b0:acb:5f9a:7303 with SMTP id
 a640c23a62f3a-ad1a4a0a0d5mr6582366b.35.1746255179773; Fri, 02 May 2025
 23:52:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Vikram R <vikram@karlexai.com>
Date: Sat, 3 May 2025 12:22:48 +0530
X-Gm-Features: ATxdqUFeR6lU_RnEVAJro_FfmXkXVu0v2jvifaAHY4ZgAQ5wvxxPOXFed4Wd7s0
Message-ID: <CAELLoAjVdYkmZR15e4TTzy21PxGBu=rbFp31uwMULcFvZx4V4Q@mail.gmail.com>
Subject: =?UTF-8?Q?=5BANNOUNCE=5D_Call_for_Contributors=3A_ASIOS_=E2=80=93_AI=E2=80=91Nat?=
	=?UTF-8?Q?ive_OS_=28Kernel_Work=29?=
To: linux-kernel@vger.kernel.org
Cc: linux-newbie@vger.kernel.org, kernelnewbies@kernelnewbies.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

ASIOS is a new AI=E2=80=91native OS (Ubuntu 24.04 LTS base) bringing
deterministic scheduling, NUMA=E2=80=91GPU optimizations, zero=E2=80=91copy=
 I/O, and
eBPF telemetry into the Linux kernel.

Key directions=E2=80=94
=E2=80=94 Deterministic CPU scheduling for reproducible AI runs
=E2=80=94 NUMA=E2=80=91aware memory placement tuned for GPU DMA
=E2=80=94 Zero=E2=80=91copy GPU I/O via GPUDirect RDMA/Storage
=E2=80=94 eBPF=E2=80=91based telemetry hooks

**Call for contributors:** scheduler/MM, GPU/accelerator integration,
eBPF instrumentation.

Project links=E2=80=94
GitHub: <https://github.com/asi-os>
Discord: <https://discord.gg/rWuU7cWU4E>
Roadmap: <https://github.com/asi-os/asios-docs/blob/main/docs/ARCHITECTURE.=
md>

Please reply on=E2=80=91list with questions or join us on Discord to dive i=
nto
the design.

Vikram Karlex R
KarLex AI, Inc. | <https://asios.ai> | <https://karlex.ai>
