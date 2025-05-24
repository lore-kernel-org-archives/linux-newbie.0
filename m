Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1E435962
	for <linux-newbie@vger.kernel.org>; Sat, 24 May 2025 01:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748048753; cv=none; b=fzTBmxZhA/AqIMWM1ymbnghRMkPCeZWSHGJURP60R9M8Y0ktnAarGvJdVCHlpiM47zUvYIO6QlwiDnCBcMMHnKJC2UvwvTytPPROGXTW5yacLJ6V6n6lovQzSkfhxstDKnDyxpulvcBI5rZjWvSGCndN1P5w3MKlI/KtzKl/IH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748048753; c=relaxed/simple;
	bh=TX2gPLZldprlegwfG4lvLAw+L5akwfQqJINVr+TVLE4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sPmuKY+eJonoYZUOvSI7WMlsn0dPICyEesyoILb1uR8GbMQJr6KfD/stSrl5QSmG06Gi5Wz0FEEP15rB0K/wr/EYRCvDgo5U6zvwV3xo7ON2LlM4Tck3OgSQGfqXwzXVzoa/YQYbI5UvgVRRY7K6ROD3BHoblcDhvjloq2zJHUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=karlexai.com; spf=pass smtp.mailfrom=karlexai.com; dkim=pass (2048-bit key) header.d=karlexai.com header.i=@karlexai.com header.b=l86rRq4E; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=karlexai.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=karlexai.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=karlexai.com header.i=@karlexai.com header.b="l86rRq4E"
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ad5740dd20eso57265066b.0
        for <linux-newbie@vger.kernel.org>; Fri, 23 May 2025 18:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=karlexai.com; s=google; t=1748048750; x=1748653550; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TO9x/Eq60Jwyn6Q/x+YwmwLVDCJ7hmJ1gXI1y2ISDQU=;
        b=l86rRq4EAeO9Y1snavrxgEXZa8QRuUBj5icFpE7oY4eyThSJUNua2p1Kyqp961jCXS
         SJGQsztk2rfUMOAMHbnFm1/Rw7St45gcBM17b1vzwYgUPAC85iCZ+XXhdJd/AJb6kKNt
         dUVWtcSSo3UcQcHlgNRjKCqduExrioBbBXq9oBM03o3Go7qW3moy3hEs9wAGw31t9YPB
         EE2NBnBvsHvTdYducfrQFzjOL1qjNP/sRq5k1P/WyAuiV9ETU9/HEU56ggIjrwB6Zdbk
         2qAlmMrEJMrvtehw1EI8nktS4/YSY+Gxp73d/gyBL8mc4dgh5ogc6pzY1THhdyTCc8Lx
         IJ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748048750; x=1748653550;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TO9x/Eq60Jwyn6Q/x+YwmwLVDCJ7hmJ1gXI1y2ISDQU=;
        b=u3OIGHNOURnaTczwCUV9M1b7aG4TECBBYn9mVRl6MBB/CoMjVKp15k351pVMJX+I0i
         5G4Eeja3fSDgTqplEXFSj8ccRIaM8Gb7wd26iNzjP/835RD7Tlu2Pull113nZV4NAqpL
         YOjmGOmLA8ZdYr9SgFT9VEQtCoUUttBMe5UPCwOoTuz48UVdEsu+McKFPcacrD7r2jda
         khM6srWMi7d01NSpZQY2ESgkn1XtK8cQVhZyoS0YDyqLA1rW3qdmUtKfRA7Lbq47AH9i
         lSDQ3REFJXiwdH776Kxowsk5K7ilgJd91M0N5NUQ/1H0f8vNtxIjnQTmRrx6/uW7vf49
         lozQ==
X-Gm-Message-State: AOJu0YxWBs68ZVltzx01+iZ84mV4PgSFLwO8MEK9Of47VAhYw5ltjGiQ
	5rEoa4tKHSItn+Qz1jh5lWf6Cs2kx9F6OsHU/9eDGm4G0IJGxhVXYoQOovQTAhzm7dKh8GxEA8A
	qqX0cvtCZs18SV3fig6WsUt0gvt05vSG8Qi6+Rk3Hmlica5uA14T+rag=
X-Gm-Gg: ASbGnctrYDRon2wZ3KEwMIXiaa4kuAmk4FJZE7xWoqfvelXV6oVkTqSBZ4BKTlv0MDY
	bs40B2wj6wPaNeVjN6AwnOCAkdc5QfT/BCcxl2leeV+3+Qm7a6JV7d2uYSLiKq0y0vOS+Pcnu74
	JWPhaYAy/CzG685oLxRY28Mp0YungoOAL2ZWxHL4A9vp46HmGGJUqJ6GgmXOmg+whprZWVfxo3h
	6gyVg==
X-Google-Smtp-Source: AGHT+IEqxFz3qjLZgPea/WG+qfJbGpAVNRfMrhlKontQniEgebRUWruOADN/bACG6/x+0reufSOHQi4bqcVD2LzonmM=
X-Received: by 2002:a17:907:6091:b0:ad2:39f2:368d with SMTP id
 a640c23a62f3a-ad85b0a9c93mr98649066b.11.1748048749663; Fri, 23 May 2025
 18:05:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAELLoAjVdYkmZR15e4TTzy21PxGBu=rbFp31uwMULcFvZx4V4Q@mail.gmail.com>
 <CAELLoAhC3emyLF26DNNb0m-D+eUJ2z9=G6r1Px+oYwOztzvZ=g@mail.gmail.com>
 <098f0dff-5838-40bc-988a-b97cbb718043@metux.net> <CAELLoAhRMZVLVnCxmZKrSTukNpn5bqD70cdcz+9iC814No9=0A@mail.gmail.com>
 <CAK+U71SvOKnoLUUJgGbVTVneGpCZL4L60UUoFh+PosPi8odkng@mail.gmail.com>
In-Reply-To: <CAK+U71SvOKnoLUUJgGbVTVneGpCZL4L60UUoFh+PosPi8odkng@mail.gmail.com>
From: Vikram R <vikram@karlexai.com>
Date: Sat, 24 May 2025 06:35:38 +0530
X-Gm-Features: AX0GCFuRGN3oueYTtia2lUBmuh1ZMCUI1z7_aN0eHdwTQpaToUqz8Sgz_wO1zb8
Message-ID: <CAELLoAjTO6MVJ2SzDhf+1Z+dGpAYghHbOBPajK49FkSK-7SZtA@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=5BANNOUNCE=5D_Call_for_Contributors=3A_ASIOS_=E2=80=93_AI?=
	=?UTF-8?Q?=E2=80=91Native_OS_=28Kernel_Work=29?=
To: Venkateswarlu P <p.venkatesh551@gmail.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@kernelnewbies.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Venkatesh,

Thanks for your interest in ASIOS =E2=80=94 really excited to hear from you=
!

What=E2=80=99s working so far:
- Cross-arch kernel build system (x86_64 and ARM64)
- Ubuntu HWE 6.11 base with AI-optimized configuration overlays
- Automated builds with PREEMPT_RT, SCHED_EXT, and NUMA tuning
- Multi-arch packaging, signing, and module verification pipeline

Where we could use help:
1. Performance validation =E2=80=93 Benchmark ASIOS kernel vs vanilla Ubunt=
u
on AI workloads (Torch, JAX, etc.).
2. BPF sched_ext policies =E2=80=93 Create AI-aware scheduling extensions
(e.g. workload tagging, core isolation).
3. Low-level optimization =E2=80=93 Enhance NUMA memory locality, improve
GPU-thread mapping.

You Can check out scripts and build instructions on:

https://github.com/asi-os/asios-core

If any of these areas match your expertise, feel free to dive in or
open an issue/PR and  you're very welcome to join our discord
community: https://discord.gg/rWuU7cWU4E

--
Best,
Vikram
