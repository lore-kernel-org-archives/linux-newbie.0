Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078578F6B
	for <linux-newbie@vger.kernel.org>; Wed, 26 Feb 2025 00:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740529253; cv=none; b=OQUSexh8D6n/+nIWfLFbtYa1edET/KEfvfBNklRugfM2/4H4rcheiWVVvXR275O6N36R+AR3/dwbxIbHsCZXD1vVEGAT1JOTRjr0+eM/Uq3kMGtVwCxeyO1mGTEgRh5dqsnLWjsPhTMXLQ8gKBPM741o536O2GwdogJs82fKDFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740529253; c=relaxed/simple;
	bh=zF01Iglghh2YfpSTC8EjVWgJyWi/90qwP4zr3JVquHk=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=F9w7pD3Tu8I+gdvpw+WMvcg2adH0b/2RuvhZeuvf+3HYq4+P+7Ed9UTx3UdApwUwPXrnxTup+9zrmLamo0MnUdYfqvxTgt0YHJfLzKQxDrbp3OkrO33gxAjtFg6iJSXsjOb9JtRSfcykZ7gkgfxSeVsPicgHoQqw2HlGlfUMB5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M5bVbstl; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M5bVbstl"
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-548878c6a5aso1201919e87.3
        for <linux-newbie@vger.kernel.org>; Tue, 25 Feb 2025 16:20:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740529249; x=1741134049; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XWaHAfzBUYpObA0Nwo6Z9U6SoUHarlRH6gzpqTtMmiE=;
        b=M5bVbstleDuFqzkAEtdKrlPW+m+Xf0BjJ7VH73MadhERL5DWp6x5inUnW5AmoRXjNY
         2/eg1FXRC7/NDV8C9zQFqA0kBDKs8CuKNqqIolKiW3bjLbFkpjKP3j5NCRplEgon29YS
         l40Pt4q0+PeS7gpoQj3LT39Umk5hdMFKzRNhwnhgy0IyMjKwvmK7G96UsvOqK/RsfESC
         HU9RFBXPkM6SvCZfWxzanvPQSHbWN06S+lUpQV1Komn+yIq3LgJg6Qi7zZIwQxQCQtI1
         C44t5ybmtR3XA30qn4CKzRQ9YNtjOmad65Qaa9ZavaVAjebDJNn6pAjPLQmNSWIsBHop
         Co9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740529249; x=1741134049;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XWaHAfzBUYpObA0Nwo6Z9U6SoUHarlRH6gzpqTtMmiE=;
        b=m5giYZhTZUDonhZ7fWVHY0pxG+p5gCtJu3Hs1ZAI4BSPOBhtjjoueMH92M/S8BD2Pq
         fHCiUgemNhnV9C9R36fIA4vIHD34TVW/F9NKD8GyYr3wgc1BVi+iWDHsrUy+d4bpdozI
         KUa+LHl7JxXDnpx19xD9Kzh/kmpWASgmEy4iZKdfPGlcBcFiR33n2ciDnOd4G2Dhi53g
         9UtTU4+5P6bNkVZVvP8TRTb3Id4xm5PquwSrGyVGlavujcNwGu/EHkkxsPXeYQrV6Pf7
         pDoCaEGhPtY9I43huYkQGkGBtxx52SA6yW+NuE/MkGjXzcdII1F2EZtrmv9MDpqNV7QK
         sPTg==
X-Gm-Message-State: AOJu0YwQEcIw9ZQRgxJOuJG1VRqCR+J+5+M5F3s31neZMjh+OV2/1pCS
	ftcHKCMKPlEiHvqHksqzw6Z4mFYVFz8Hdp9DW36vfV03Zhfxl88bnONGcloqGpaZQvZfkbMCjEN
	YZBxFReDgT76tUSQZK3bzJ23DsesrJcOa
X-Gm-Gg: ASbGnctnX2ONKyKmC6fXxg5OwydLrXeRNJh7SyogAA23VAnXjqYLBM1dHLCDfx2rt1L
	9bU3cMVO8/11n4MG5BNaNkxG9s5DlydycpP3yDY5B21A2yRvdYO7qfpZ5GCdsDj/EfiD8WLrsg7
	CeE1mCs7udiw==
X-Google-Smtp-Source: AGHT+IEirZNts8bVN0DxmN0Q7W2BrOn+tk7XQmLmz4x48pTwPelSlIC58AylkgyRaaBiyGNSou8OaQFK4/f11jgaO84=
X-Received: by 2002:a05:6512:3e14:b0:545:576:cbca with SMTP id
 2adb3069b0e04-5483912fcd7mr8223073e87.8.1740529249000; Tue, 25 Feb 2025
 16:20:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: =?UTF-8?B?Sm/Dq2wgS3LDpGhlbWFubg==?= <jkraehemann@gmail.com>
Date: Wed, 26 Feb 2025 01:20:37 +0100
X-Gm-Features: AWEUYZnFgZSygq4lxM4fMM5FuboGB3KZS1vuOcQy87hP-PLu-ETKeFWf-vXiEpI
Message-ID: <CA+Owze7b4epyxEBky-KK=Okc9PMYByMhaQO_vQrNAQt8K-4TSQ@mail.gmail.com>
Subject: help with kernel configuration for Intel i7 HQ CPU and Qualcom
 Snapdragon 4G LTE modem
To: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

First I would love to introduce myself. My name is Jo=C3=ABl, I work on
GSequencer a audio/MIDI sequencer.

Can anyone provide me a working kernel configuration I can use with my
4G LTE modem?

Sierra Wireless EM7455 Qualcomm Snapdragon X7 LTE-A

The USB driver registers for the Qualcomm USB serial modem qcserial.

It worked once, but not anymore.

~~~~
ModemManager[1045]: <info>  ModemManager (version 1.18.12) starting in
system bus...
ModemManager[1045]: [qrtr] socket lookup from 1:0
ModemManager[1045]: [qrtr] initial lookup finished
ModemManager[1045]: opening device...
ModemManager[1045]: cannot connect to proxy: Could not connect:
Connection refused
ModemManager[1045]: spawning new mbim-proxy (try 1)...
ModemManager[1045]: [/dev/cdc-wdm0] Read max control message size from
descriptors file: 4096
ModemManager[1045]: <info>  [base-manager] couldn't check support for
device '/sys/devices/pci0000:00/0000:00:1c.0/0000:03:00.0': not
supported by any plugin
ModemManager[1045]: <info>  [base-manager] couldn't check support for
device '/sys/devices/pci0000:00/0000:00:1f.6': not supported by any
plugin
ModemManager[1045]: <info>  [cdc-wdm0/mbim] MBIM device is not QMI capable
ModemManager[1045]: [/dev/cdc-wdm0] channel destroyed
ModemManager[1045]: <info>  [device
/sys/devices/pci0000:00/0000:00:14.0/usb1/1-5] creating modem with
plugin 'sierra' and '2' ports
ModemManager[1045]: <info>  [base-manager] modem for device
'/sys/devices/pci0000:00/0000:00:14.0/usb1/1-5' successfully created
ModemManager[1045]: opening device...
ModemManager[1045]: [/dev/cdc-wdm0] Read max control message size from
descriptors file: 4096
ModemManager[1045]: [/dev/cdc-wdm0] Opening device with flags
'version-info, proxy, mbim, expect-indications'...
ModemManager[1045]: [/dev/cdc-wdm0] created endpoint
ModemManager[1045]: [/dev/cdc-wdm0] creating MBIM device...
ModemManager[1045]: [/dev/cdc-wdm0] MBIM device created
ModemManager[1045]: [/dev/cdc-wdm0] opening MBIM device...
ModemManager[1045]: opening device...
ModemManager[1045]: [/dev/cdc-wdm0] Read max control message size from
descriptors file: 4096
ModemManager[1045]: [/dev/cdc-wdm0] MBIM device open
ModemManager[1045]: [/dev/cdc-wdm0] Checking version info (15 retries)...
ModemManager[1045]: [/dev/cdc-wdm0] QMI Device supports 33 services:
ModemManager[1045]: [/dev/cdc-wdm0]    ctl (1.5)
ModemManager[1045]: [/dev/cdc-wdm0]    wds (1.67)
ModemManager[1045]: [/dev/cdc-wdm0]    dms (1.14)
ModemManager[1045]: [/dev/cdc-wdm0]    nas (1.25)
ModemManager[1045]: [/dev/cdc-wdm0]    qos (1.6)
ModemManager[1045]: [/dev/cdc-wdm0]    wms (1.10)
ModemManager[1045]: [/dev/cdc-wdm0]    auth (1.3)
ModemManager[1045]: [/dev/cdc-wdm0]    at (1.2)
ModemManager[1045]: [/dev/cdc-wdm0]    voice (2.1)
ModemManager[1045]: [/dev/cdc-wdm0]    cat2 (2.24)
ModemManager[1045]: [/dev/cdc-wdm0]    uim (1.45)
ModemManager[1045]: [/dev/cdc-wdm0]    pbm (1.4)
ModemManager[1045]: [/dev/cdc-wdm0]    test (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    loc (2.0)
ModemManager[1045]: [/dev/cdc-wdm0]    sar (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    ts (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    tmd (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    wda (1.16)
ModemManager[1045]: [/dev/cdc-wdm0]    csvt (1.1)
ModemManager[1045]: [/dev/cdc-wdm0]    coex (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    pdc (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    rfrpe (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    dsd (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    ssctl (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0x2e] (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0x30] (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0x31] (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0x36] (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    rms (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0xf0] (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0xf3] (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0xf5] (1.0)
ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0xf6] (1.0)
ModemManager[1045]: [/dev/cdc-wdm0] Enabling QMI indications via MBIM...
ModemManager[1045]: [/dev/cdc-wdm0] enabled QMI indications via MBIM
ModemManager[1045]: <info>  [modem0/cdc-wdm0/mbim] MBIM device is QMI capab=
le
ModemManager[1045]: [/dev/cdc-wdm0] Allocating new client ID...
ModemManager[1045]: [/dev/cdc-wdm0] Registered 'dms' (version 1.14)
client with ID '3'
ModemManager[1045]: [/dev/cdc-wdm0] Allocating new client ID...
ModemManager[1045]: [/dev/cdc-wdm0] Registered 'nas' (version 1.25)
client with ID '4'
ModemManager[1045]: [/dev/cdc-wdm0] Allocating new client ID...
ModemManager[1045]: [/dev/cdc-wdm0] Registered 'loc' (version 2.0)
client with ID '1'
ModemManager[1045]: [/dev/cdc-wdm0] Allocating new client ID...
ModemManager[1045]: [/dev/cdc-wdm0] Registered 'pdc' (version 1.0)
client with ID '1'
ModemManager[1045]: [/dev/cdc-wdm0] Allocating new client ID...
ModemManager[1045]: [/dev/cdc-wdm0] Registered 'uim' (version 1.45)
client with ID '3'
ModemManager[1045]: <info>  [modem0] QMI-based capability and mode
switching support enabled
ModemManager[1045]: <warn>  [modem0/sim0] couldn't load list of
emergency numbers: No AT port available to run command
ModemManager[1045]: <warn>  [modem0] couldn't load UE mode of
operation for EPS: No AT port available to run command
ModemManager[1045]: <warn>  [modem0] couldn't load initial EPS bearer
settings: LTE attach status info is unsupported
ModemManager[1045]: <warn>  [modem0] couldn't open ports during Modem
SIM hot swap enabling: Couldn't get primary port
ModemManager[1045]: <info>  [modem0] state changed (unknown -> disabled)
ModemManager[1045]: <info>  [modem0] state changed (disabled -> enabling)
ModemManager[1045]: <warn>  [modem0] Failure
ModemManager[1045]: <warn>  [modem0] Failure
ModemManager[1045]: <warn>  [modem0] couldn't enable interface:
'Invalid transition'
ModemManager[1045]: <info>  [modem0] state changed (enabling -> disabled)
~~~~

regards, Jo=C3=ABl
