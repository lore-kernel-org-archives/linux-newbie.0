Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1820B211497
	for <linux-newbie@vger.kernel.org>; Mon, 19 May 2025 19:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747683641; cv=none; b=jEz5E+cq1vH06MJv2GtGbd9VJxs8VIrdEGpd7TRoS3HOskTl7cgI81fMWFEIGobl+sqgPIM0SkbKInjKjJs3++c3UyYuRhZ0GhtQr85FCXfJuDffap2DgEL7QZ8t2mNkxZ0MpcIaRCsXFaEbpBy7HlSS/mrpCqTguTUlPojEZbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747683641; c=relaxed/simple;
	bh=fzDLlOGj1pvf//Mc9EeTou5DsvMR/5VqKWlOwhZhaNQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s2ttszJb2Q6QP+ObOO079xxkuCo3z/mLp6kx4g5NwLFuJ2buEeqN8wobt6NlOywQ09fH6i9aFoSgh5IlEi0JOnXR/6N+Xzt8q+284WzF85YhBuluZJd/BsNSWyw0yjXH+dQ36OZR5AlanI07yAhqFvEDyzrWMoD/KzlBSyAW9Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=karlexai.com; spf=pass smtp.mailfrom=karlexai.com; dkim=pass (2048-bit key) header.d=karlexai.com header.i=@karlexai.com header.b=TtWBf3HR; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=karlexai.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=karlexai.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=karlexai.com header.i=@karlexai.com header.b="TtWBf3HR"
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-acbb85ce788so1016797766b.3
        for <linux-newbie@vger.kernel.org>; Mon, 19 May 2025 12:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=karlexai.com; s=google; t=1747683638; x=1748288438; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fzDLlOGj1pvf//Mc9EeTou5DsvMR/5VqKWlOwhZhaNQ=;
        b=TtWBf3HRRe9MoHp2ptGi7CQlEMyiY9ZFQry9lPxcK2ewEV1QCCth3HMFGLSyeYVCbT
         wQPO/x9oRQWgNlKiZtq+yCeg9InjLAltTCijmwKM+4sX1ikPlP26hUhEHKORa2qMZESP
         BJLVDvHGNa6+O5/hN9fFESwaX1r8E5JEy6ikRJ1njxKxlkXSFtEhitx5DwyR9n+FNm2i
         tkbUOC43UyCzbFxkGG7AnNcTzY1Ml1IsBPNgVcuhdCjnICADHdNtYFm9xsBXCvMFosbP
         rHIXfRf+5BOGMSC3TDzoV8NjjR+YEBB3xfZmDItfamEU/O/snSYrbSxlsmTimQn9KvIB
         lvhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747683638; x=1748288438;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fzDLlOGj1pvf//Mc9EeTou5DsvMR/5VqKWlOwhZhaNQ=;
        b=HMdTksOVNI0FtNywlAvEu7VPWFl/ltMor2Q9jyLizyJiQb8MBSKDIF6LWTFOzCIkWu
         yexx7PvPT5wFpHtsDr6d5HBDjnCQ44J+1vrKVBQHBqW1/8IcgIlwKcvpWtWucwEA59T9
         CWlfjd1+G7cRrctHCBiGUDX4HoNPZ16cnQfOtgAg66rtLRWrjrsiuHVnhyCyl3vHweKR
         qptqc3QYos3kinUr4IlNoFXBfwlPcZ+OdxEu06JbbWqlRCmMyxDE1+FHAb9dCPiNTH8w
         NTvrwt4Hxr/S6zV4r6kCUGhsqChG9KNoQ0DmroFoaLTFkoFN0MVUjWDCW0/eVKsRptoR
         VAdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYYcisCXxf7Avyn01X0VMQvXQBECOhMdAAFTjQrmV0ldEZb0r8bQMnjyMViBs+k9Q6gX3cXVZuY0PGBGg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3dG4JuFCFfWBhw5OYFNSrPaUbNqJVnr2Z5mhLppfO0sNFKtj8
	fEOpQFa6KV4kcMCrm2GZG3pstni4CzKhVlLhbsmattvPTR0ui4ugMq9K6lZuieT/R+oJEZ3rHqu
	k5MUJ8t1s+0L+aBFNsldIJr+wziaKHaXsJUdmC/F3mA==
X-Gm-Gg: ASbGnctW40kLguxybTtw6Akv9tIEWl5dvBTfK9jNcOfGCiPynxnCKbZ3o5BcLyg3F6P
	2Y6V7VqHPAtoKfMCRqgVSQOgAkJD2KMcsDnK5Iqzhhb9CLbvrHGKWo185bZgn6tz579dyu87+Yk
	8/ih+hIn8wkRstjVQ2MCcFRxNE/LSnrrcWIFyAjib83XKTKzYAIoG+IfUPwq2pPU/4LtsUZ2/yg
	6ydVw==
X-Google-Smtp-Source: AGHT+IEWuA8uFa+j9pIqSV3LWC71itWuheMdaBYA86dF2CXyMoxTfiZJ+WcUQW1lpKsnFUvYPPouTGg/k8ONC60Yb5w=
X-Received: by 2002:a17:907:2682:b0:ad5:2b4e:bb7b with SMTP id
 a640c23a62f3a-ad52d49e2ddmr1272560866b.15.1747683638056; Mon, 19 May 2025
 12:40:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAELLoAjVdYkmZR15e4TTzy21PxGBu=rbFp31uwMULcFvZx4V4Q@mail.gmail.com>
 <CAELLoAhC3emyLF26DNNb0m-D+eUJ2z9=G6r1Px+oYwOztzvZ=g@mail.gmail.com> <CAFLt3pgG8rzyULWGGeMifZWzV6si2U0zrzyZUjhYxm1BT-1JnA@mail.gmail.com>
In-Reply-To: <CAFLt3pgG8rzyULWGGeMifZWzV6si2U0zrzyZUjhYxm1BT-1JnA@mail.gmail.com>
From: Vikram R <vikram@karlexai.com>
Date: Tue, 20 May 2025 01:10:26 +0530
X-Gm-Features: AX0GCFvLECesW_9RhXG-s2dBDqipE3tkYNDVF6mllUnHb0akdowLEqvYy-NEzkk
Message-ID: <CAELLoAhV738NN0=0VLx6obioPfVuHqWjWA7GwcXmmOU_zR_t-Q@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=5BANNOUNCE=5D_Call_for_Contributors=3A_ASIOS_=E2=80=93_AI?=
	=?UTF-8?Q?=E2=80=91Native_OS_=28Kernel_Work=29?=
To: Grozdan <neutrino8@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org, 
	kernelnewbies@kernelnewbies.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry for the noise.

On Tue, May 20, 2025 at 1:00=E2=80=AFAM Grozdan <neutrino8@gmail.com> wrote=
:
>
> Please do not spam the list with your AI crap!
>
> On Mon, May 19, 2025 at 9:28=E2=80=AFPM Vikram R <vikram@karlexai.com> wr=
ote:
>>
>> ASIOS =E2=80=93 Envisioned to Host and Sustain Cognition & Synthetic Int=
elligence
>> The world=E2=80=99s first AI-native operating system.
>>
>> ASIOS is a new class of OS built on Ubuntu 24.04 LTS, designed from
>> first principles for AI workloads. We=E2=80=99re creating the foundation=
al
>> infrastructure layer to support ever-more sophisticated
>> intelligence=E2=80=94from today=E2=80=99s deep-learning models to tomorr=
ow=E2=80=99s advanced
>> cognitive and quantum-ready AI.
>>
>> Building on our May 3 thread, we=E2=80=99ve landed a resilient config-ov=
erlay
>> and build script for ASIOS on both x86_64 and aarch64. Key artifacts:
>>
>> asios-config-overlay.sh: idempotent Kconfig overlay that tolerates
>> missing symbols
>> build-asios-kernel.sh: automated clone to config to compile workflow
>> test-asios-config.sh: verifies .config flags post build
>> Initial perf on Ubuntu 24.04 HWE 6.11:
>> x86_64: mbw=3D7.3 GB/s, hackbench=3D53 ms, fio=3D1.6 GB/s
>> arm64: mbw=3D27.4 GB/s, hackbench=3D4.8 ms, fio=3D3.2 GB/s
>>
>> GitHub (scripts and tests): https://github.com/asi-os/asios-core/
>> Discord: https://discord.gg/rWuU7cWU4E
>>
>> Areas for review and test:
>> 1. Overlay logic: skipping versus failing on absent Kconfig symbols
>> 2. Build-matrix logic: host-only versus cross-build
>> 3. Test completeness: missing flags
>> 4. Scripting style and robustness
>>
>> Any pointers or suggestions are highly appreciated before we push to a
>> formal RFC series.
>>
>> =E2=80=94
>> Vikram R
>> Founder & CEO, KarLex AI, Inc.
>> https://asios.ai
>>
>>
>> On Sat, May 3, 2025 at 12:22=E2=80=AFPM Vikram R <vikram@karlexai.com> w=
rote:
>> >
>> > ASIOS is a new AI=E2=80=91native OS (Ubuntu 24.04 LTS base) bringing
>> > deterministic scheduling, NUMA=E2=80=91GPU optimizations, zero=E2=80=
=91copy I/O, and
>> > eBPF telemetry into the Linux kernel.
>> >
>> > Key directions=E2=80=94
>> > =E2=80=94 Deterministic CPU scheduling for reproducible AI runs
>> > =E2=80=94 NUMA=E2=80=91aware memory placement tuned for GPU DMA
>> > =E2=80=94 Zero=E2=80=91copy GPU I/O via GPUDirect RDMA/Storage
>> > =E2=80=94 eBPF=E2=80=91based telemetry hooks
>> >
>> > **Call for contributors:** scheduler/MM, GPU/accelerator integration,
>> > eBPF instrumentation.
>> >
>> > Project links=E2=80=94
>> > GitHub: <https://github.com/asi-os>
>> > Discord: <https://discord.gg/rWuU7cWU4E>
>> > Roadmap: <https://github.com/asi-os/asios-docs/blob/main/docs/ARCHITEC=
TURE.md>
>> >
>> > Please reply on=E2=80=91list with questions or join us on Discord to d=
ive into
>> > the design.
>> >
>> > Vikram Karlex R
>> > KarLex AI, Inc. | <https://asios.ai> | <https://karlex.ai>
>>
>
>
> --
> Yours truly
