Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8791EA7FE
	for <linux-newbie@vger.kernel.org>; Fri, 28 Feb 2025 08:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740731550; cv=none; b=Mt5lyk/rrNi00GIxWA+qT3/4kDcfVYXD8x5OT1JSXN5tUrMN/P5/NQfc5rBPsiKIKGZMJdAJ4fTjbZWdcZs8aTml69nfZrmCzG41/2G20ttOvv3TVhbv+Lg0XjpSDkjgiPAdzMGbzEI/bqg1uj8vfnEyJ+vpn6RhLo7mGmWZXbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740731550; c=relaxed/simple;
	bh=zD4SmyNuRFhFwdfG2VbC94FA7SMy9f+C5s5g1U/KEPs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=pozmLCLGJNL5WUo5MAHIyPHp76fBFuHhbju/35ciIqJ1gn0fJgZCrEI5ekXqP6LbS5Z9rXfrSFDsUM+cOYiY7ISM89iFLlsiIeU9Rk1SuaQp75ywDP+U3MFxyt3NNDgaoMx4HbEiCmo9ePAW4ECzwG6BR6q+uw/YRs0VEBUYhs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ECjYs4kD; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ECjYs4kD"
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5494cb8c2e7so697892e87.0
        for <linux-newbie@vger.kernel.org>; Fri, 28 Feb 2025 00:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740731546; x=1741336346; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fxyeeA1LJqG9O+oYJM9Zvnww3erh1u21LhrsuZ3KBEY=;
        b=ECjYs4kDjUwsuUFXqNBsI+QRQa6lOgnFtODl1lg9A0eS+TvmmbNhpj4KIddEPYuwUC
         roU0dmnEcaq2/UA6JMPEII5dKyv3uZjSQ3HONuKVolOxV05d5jrThZRt2i73YY9aWX/+
         JSZAbP3FjYGgoQ+hWF7UDyoV4zaArTvIMZAN3rMyGtlUcu0vipzqhHyrzOvYraE7/gAx
         /upYFK1eSFjUGZq5KvekJI3X8K00Wcx5c+aEH5O2aVPmnW0D0C8BDDqJaSqbkrDFZp0u
         XjLhWik0ZLnOOVWOPWoM2zCzmKFL8umluyybsenSPGw1Au6fk5C/E6hIpdwxJbw2wTUS
         P9/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740731546; x=1741336346;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fxyeeA1LJqG9O+oYJM9Zvnww3erh1u21LhrsuZ3KBEY=;
        b=YMG1zgiZJ39QCVNWYClg38VM3oTsoYOJ7jo3HXauR+SSd3GgPXgr0MyG6c//MFtGy7
         6fM9MmgPgQThP+S33Da4CW7bjV69vY5rywVeEnhe1bewP0O/rXQRCddaVtZD4+58vurf
         hpLbHfD8fMCqvwfljfIQU32RQB3wJyLtwiF2gGBFgdxBFIP34qFcqvu+beMg/SZz/t2U
         keoQuD3q3Rjg7EUk6GmzHDN0czIALPbb1uMNcNs0D9WmAmpcT9Ym6kKwR8c/60M6mRhe
         MOwEKp4oyt+jGqq/NdSe+0d+jXXsDBZ6vOHRTUIBwW/iQZ+Ie64crsUKtxupbHgiYhjn
         e6Ww==
X-Gm-Message-State: AOJu0YxqG1v6nFCAgfXjUTg0vlMUxHtI7e5r0TBFgm47AXDdVZKNawwa
	q8zEeyr+h1AOb6GatH3Kn9OqfzOqJzw3seHS3frdLxGosXKuKbsGizV0y/xmyKCVcKoTrpFgqDI
	JvITBxGtWQzyeDllXUV5GFF+F0vePjAd5
X-Gm-Gg: ASbGncvJbjmdKD9t3dPhWv+dib2D17C8cAkDPFbPk0jUsUMQqKhEdCZY0aHiJ3KfeLl
	DzEdk5dlYoUQV4c+NkPJ7U0jLJ8Uux5bTf9eYTPuZ36CRfIo6aFS1fYvxOvaNnRD8YEYMkkMX94
	uZBedBzW6YeQ==
X-Google-Smtp-Source: AGHT+IEXpWL/QhjXQIE1lqMWD4P8n2QqUcD7MKEzxf7vLCwuczSmxAMpMP4ArL2EEJbPgX+lEwJhkgA9qUnvcK/vk5w=
X-Received: by 2002:ac2:4a8d:0:b0:549:4e78:9ed5 with SMTP id
 2adb3069b0e04-5494e789f2emr653619e87.45.1740731546195; Fri, 28 Feb 2025
 00:32:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CA+Owze7b4epyxEBky-KK=Okc9PMYByMhaQO_vQrNAQt8K-4TSQ@mail.gmail.com>
In-Reply-To: <CA+Owze7b4epyxEBky-KK=Okc9PMYByMhaQO_vQrNAQt8K-4TSQ@mail.gmail.com>
From: =?UTF-8?B?Sm/Dq2wgS3LDpGhlbWFubg==?= <jkraehemann@gmail.com>
Date: Fri, 28 Feb 2025 09:32:14 +0100
X-Gm-Features: AQ5f1JpdNsAKNPzlWOOXk9EbZANdCU82NxLm3-tYjsDoE7Kq61WB3QM0l_Kpnsg
Message-ID: <CA+Owze5YojjA9cuBL0VTF5t+trXLmaEwAWKHX9ggMPeF9nh-6Q@mail.gmail.com>
Subject: Re: help with kernel configuration for Intel i7 HQ CPU and Qualcom
 Snapdragon 4G LTE modem
To: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Actually it was a configuration issue.

As shown in the internet:

ln -sft /etc/ModemManager/fcc-unlock.d
/usr/share/ModemManager/fcc-unlock.available.d/*

Enabling QMI

qmicli -d /dev/cdc-wdm0 --dms-swi-set-usb-composition=3D6

Fix config files:

root [ ~ ]# cat /etc/mbim-network.conf
APN=3Dinternet
PROXY=3Dyes

root [ ~ ]# cat /etc/config/network
config interface 'wwan'
        option proto 'qmi'
        option device '/dev/cdc-wdm0'
        option apn 'internet'
        option pdptype 'ip'

Restart device:

qmicli -d /dev/cdc-wdm0 --dms-set-operating-mode=3Doffline
qmicli -d /dev/cdc-wdm0 --dms-set-operating-mode=3Dreset

This command gave me hope:

qmicli -d /dev/cdc-wdm0 --dms-set-fcc-authentication

Then start ModemManager add WWAN connection to NetworkManager.

ModemManager
nm-connection-editor

Makes it work!

regards, Jo=C3=ABl



On Wed, Feb 26, 2025 at 1:20=E2=80=AFAM Jo=C3=ABl Kr=C3=A4hemann <jkraehema=
nn@gmail.com> wrote:
>
> Hi,
>
> First I would love to introduce myself. My name is Jo=C3=ABl, I work on
> GSequencer a audio/MIDI sequencer.
>
> Can anyone provide me a working kernel configuration I can use with my
> 4G LTE modem?
>
> Sierra Wireless EM7455 Qualcomm Snapdragon X7 LTE-A
>
> The USB driver registers for the Qualcomm USB serial modem qcserial.
>
> It worked once, but not anymore.
>
> ~~~~
> ModemManager[1045]: <info>  ModemManager (version 1.18.12) starting in
> system bus...
> ModemManager[1045]: [qrtr] socket lookup from 1:0
> ModemManager[1045]: [qrtr] initial lookup finished
> ModemManager[1045]: opening device...
> ModemManager[1045]: cannot connect to proxy: Could not connect:
> Connection refused
> ModemManager[1045]: spawning new mbim-proxy (try 1)...
> ModemManager[1045]: [/dev/cdc-wdm0] Read max control message size from
> descriptors file: 4096
> ModemManager[1045]: <info>  [base-manager] couldn't check support for
> device '/sys/devices/pci0000:00/0000:00:1c.0/0000:03:00.0': not
> supported by any plugin
> ModemManager[1045]: <info>  [base-manager] couldn't check support for
> device '/sys/devices/pci0000:00/0000:00:1f.6': not supported by any
> plugin
> ModemManager[1045]: <info>  [cdc-wdm0/mbim] MBIM device is not QMI capabl=
e
> ModemManager[1045]: [/dev/cdc-wdm0] channel destroyed
> ModemManager[1045]: <info>  [device
> /sys/devices/pci0000:00/0000:00:14.0/usb1/1-5] creating modem with
> plugin 'sierra' and '2' ports
> ModemManager[1045]: <info>  [base-manager] modem for device
> '/sys/devices/pci0000:00/0000:00:14.0/usb1/1-5' successfully created
> ModemManager[1045]: opening device...
> ModemManager[1045]: [/dev/cdc-wdm0] Read max control message size from
> descriptors file: 4096
> ModemManager[1045]: [/dev/cdc-wdm0] Opening device with flags
> 'version-info, proxy, mbim, expect-indications'...
> ModemManager[1045]: [/dev/cdc-wdm0] created endpoint
> ModemManager[1045]: [/dev/cdc-wdm0] creating MBIM device...
> ModemManager[1045]: [/dev/cdc-wdm0] MBIM device created
> ModemManager[1045]: [/dev/cdc-wdm0] opening MBIM device...
> ModemManager[1045]: opening device...
> ModemManager[1045]: [/dev/cdc-wdm0] Read max control message size from
> descriptors file: 4096
> ModemManager[1045]: [/dev/cdc-wdm0] MBIM device open
> ModemManager[1045]: [/dev/cdc-wdm0] Checking version info (15 retries)...
> ModemManager[1045]: [/dev/cdc-wdm0] QMI Device supports 33 services:
> ModemManager[1045]: [/dev/cdc-wdm0]    ctl (1.5)
> ModemManager[1045]: [/dev/cdc-wdm0]    wds (1.67)
> ModemManager[1045]: [/dev/cdc-wdm0]    dms (1.14)
> ModemManager[1045]: [/dev/cdc-wdm0]    nas (1.25)
> ModemManager[1045]: [/dev/cdc-wdm0]    qos (1.6)
> ModemManager[1045]: [/dev/cdc-wdm0]    wms (1.10)
> ModemManager[1045]: [/dev/cdc-wdm0]    auth (1.3)
> ModemManager[1045]: [/dev/cdc-wdm0]    at (1.2)
> ModemManager[1045]: [/dev/cdc-wdm0]    voice (2.1)
> ModemManager[1045]: [/dev/cdc-wdm0]    cat2 (2.24)
> ModemManager[1045]: [/dev/cdc-wdm0]    uim (1.45)
> ModemManager[1045]: [/dev/cdc-wdm0]    pbm (1.4)
> ModemManager[1045]: [/dev/cdc-wdm0]    test (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    loc (2.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    sar (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    ts (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    tmd (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    wda (1.16)
> ModemManager[1045]: [/dev/cdc-wdm0]    csvt (1.1)
> ModemManager[1045]: [/dev/cdc-wdm0]    coex (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    pdc (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    rfrpe (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    dsd (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    ssctl (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0x2e] (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0x30] (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0x31] (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0x36] (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    rms (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0xf0] (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0xf3] (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0xf5] (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0]    unknown [0xf6] (1.0)
> ModemManager[1045]: [/dev/cdc-wdm0] Enabling QMI indications via MBIM...
> ModemManager[1045]: [/dev/cdc-wdm0] enabled QMI indications via MBIM
> ModemManager[1045]: <info>  [modem0/cdc-wdm0/mbim] MBIM device is QMI cap=
able
> ModemManager[1045]: [/dev/cdc-wdm0] Allocating new client ID...
> ModemManager[1045]: [/dev/cdc-wdm0] Registered 'dms' (version 1.14)
> client with ID '3'
> ModemManager[1045]: [/dev/cdc-wdm0] Allocating new client ID...
> ModemManager[1045]: [/dev/cdc-wdm0] Registered 'nas' (version 1.25)
> client with ID '4'
> ModemManager[1045]: [/dev/cdc-wdm0] Allocating new client ID...
> ModemManager[1045]: [/dev/cdc-wdm0] Registered 'loc' (version 2.0)
> client with ID '1'
> ModemManager[1045]: [/dev/cdc-wdm0] Allocating new client ID...
> ModemManager[1045]: [/dev/cdc-wdm0] Registered 'pdc' (version 1.0)
> client with ID '1'
> ModemManager[1045]: [/dev/cdc-wdm0] Allocating new client ID...
> ModemManager[1045]: [/dev/cdc-wdm0] Registered 'uim' (version 1.45)
> client with ID '3'
> ModemManager[1045]: <info>  [modem0] QMI-based capability and mode
> switching support enabled
> ModemManager[1045]: <warn>  [modem0/sim0] couldn't load list of
> emergency numbers: No AT port available to run command
> ModemManager[1045]: <warn>  [modem0] couldn't load UE mode of
> operation for EPS: No AT port available to run command
> ModemManager[1045]: <warn>  [modem0] couldn't load initial EPS bearer
> settings: LTE attach status info is unsupported
> ModemManager[1045]: <warn>  [modem0] couldn't open ports during Modem
> SIM hot swap enabling: Couldn't get primary port
> ModemManager[1045]: <info>  [modem0] state changed (unknown -> disabled)
> ModemManager[1045]: <info>  [modem0] state changed (disabled -> enabling)
> ModemManager[1045]: <warn>  [modem0] Failure
> ModemManager[1045]: <warn>  [modem0] Failure
> ModemManager[1045]: <warn>  [modem0] couldn't enable interface:
> 'Invalid transition'
> ModemManager[1045]: <info>  [modem0] state changed (enabling -> disabled)
> ~~~~
>
> regards, Jo=C3=ABl
