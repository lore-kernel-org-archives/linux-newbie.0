Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=74.125.82.173
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792846549;
	b=M0ZgklqkKczy+QTrQ0wH51ngXPSRe24QuPxEjL5/EeSNLxPq9MAjLVIg26Hgezb+18fN
	 lAQXCe9Te+hv6jJZSJM9jYzMiBHHa+hrUiGWSUAzsqsUnImJsleeeQj0kk4nJNn2Yw6sR
	 VKeUm1qaynHCaQXnKhSnkLezG0NR4/MJrj0nwHEzL0wjQC+ACrGh+xFes68TLrUu7ZDZ/
	 Us5W7bzub1IW5wkqHf9lS9RUwszcTjZzrVG77cCJ97JiZfkmaY8WIrDpDYiDGtA/ubad8
	 75W6P3cfbPE9jSXZ/YuBsUkkB5SdR8dkgBBuFgKkKaq/W9J27+gTZCZ225395L3PI1w==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792846549;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:References:In-Reply-To:From:Date:X-Gm-Features:
	 Message-ID:Subject:To:Content-Type:Content-Transfer-Encoding;
	bh=qDN0DhZlpG31Db1a+qgDTn9ndshsKxDFrnBds7GpNtg=;
	b=A/SmbV2k85HV5IzqxbwT9yksQYzKQHNNckxEAK9K1GALEXZhGy/GBODPmO0a4Jpf5uCk
	 I/tXVqmyUfZRiQDiscKNF392dOFpMa3w8gI+mKW9fvw3Cgz98Itt+NQNpVx9iF+htgGBX
	 TVGhtin/QpvMn59j4LwzJ1mOQOwcc68LWIXU8K8k6simj/SkzxQcl0jveJKxI2wbBVjnh
	 DwzTjUjHkC4BcE/8tjQTH6PS0UHSaOWIb9U4ES5JiqKf8bGdOgygF6yb6akRHuvIAA9MH
	 TgFVCTytI/J8nZemZOP0XvthBEOW6HYdLW7VMeGP1aSpL/yElzjjg//vRPPQi0QQHpg==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=FMGUVPj2;
	arc=pass header.oldest-pass=0 smtp.remote-ip=74.125.82.173
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AF5606A31B
	for <linux-newbie@vger.kernel.org>; Sat, 24 Oct 2026 12:55:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 30AF5606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=FMGUVPj2
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-3535a54bed9so2710371eec.1
        for <linux-newbie@vger.kernel.org>; Sat, 24 Oct 2026 05:55:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792846548; cv=none;
        d=google.com; s=arc-20260327;
        b=aE7+wpv9Et7XxgSFYM8h9kxobymL0IdMLfca1/dJpzY3UDsovm28fKsu0GL2FJxM62
         gEQOJ6/AL9hO7NMR5tBUHcBSgM0Iq30umAem5aF2W/KUZZEYLiZSo7YEbeL6Rd05jipp
         KZSOgRo1caC4pKx0uCCSoUxWM9XQKHK0Oo0Qhp4JcUMaxVLo4WoqzTcaUtNirciSzSeT
         GksE/AiVXfeg3q3BJ+xtoUNv8cXotjplhJlz0bli8wxZZdmwOP4qYCXTK4prRiyGwjYv
         ayXT6b+jlcAVYRB3B8JoVEw7yFJ5gY3x2o3N9aGDHKHYhaEYlMoHUujsM3k6Ly2k97Ie
         5BIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qDN0DhZlpG31Db1a+qgDTn9ndshsKxDFrnBds7GpNtg=;
        fh=hrbc7TCkjWzCbXznb54FOlnszM5rY5DRoS+ADyq1cvY=;
        b=aIeb7yICOXW3rF/JOTE04Nj1VByAgUw6VQWP7UT+N6BDUaq7xavfkszALgVG/exG3M
         BKT7Qs9rwKDkEc8bH2kWdhH5M5L39k9TBpWuYHzQwlkYb8pS38VgBpaYrwgW4VuS0h6G
         tdXRCboSdjncmql2fex7NOswvftgMRpDwJAKalpdYntIpB+fWyitIKJJCYByhIq6PPC1
         rAeM7eZeJwmyvLL9DvhzFX3T1421QSJ5Zdb+0GsPDRccsxDXaAhpgHr9We2wbPiF3/Hy
         LJ+zMjcsn+hpfqsNnILp5KL06jmq6Tp1Hz1pc+2M+IjD+BkoPRpcDY49KLW9uWDsLJ9r
         kyPw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792846548; x=1793451348; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qDN0DhZlpG31Db1a+qgDTn9ndshsKxDFrnBds7GpNtg=;
        b=FMGUVPj2ETH9pORqUREuH1VbouOqxF0Ffuvhmuj9WL9f+8LYi+ZKq1YlilzRPI6MnM
         xcpDwW4JkSvR2Cp7A1BzZZFKvqOv8S6jozlid3XjTKFnrqx3F4GeXut/yT+BAbzmqYKH
         AKZ+1NFB8mzn7RZHnZNcPEq/TWYwLCi3fnz2e6bc3cqRB7aOqxNAl4XLutX+n0F4dxmN
         Dfix1ZUFNTafE/OOIGH5s0ZHXq/g72/8kbaVBNLtPa5h82BaZnwEBVBuvdjLVCYlHpF8
         6FFvtEBeh3nEqZ1EJY3JGQcPEPi1tUgT03UUxOdKNuBSI9gCmDGcLgRav+eSp+WtLGuw
         7xpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792846548; x=1793451348;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=qDN0DhZlpG31Db1a+qgDTn9ndshsKxDFrnBds7GpNtg=;
        b=GUsbghwCVJSyVAFNnuaXWlmPQT2HegEsZ/WKHJa8hsmn52JBl5CdadgxwG0gxB6kR0
         cm27f65VfWvF6dR2qeIiWdkNP/cKZVkzf4J2Zn7vmXBBiggWPyTll9J4CwloTZV3hBSI
         IWzo3HLSbP88axymSUvcavfpPtNycAfHeNdtKHS2DjLgSIFW65zrtJkniLPrDHDXu37Z
         e7D8u8X34LqCGm3XA9q0qmyBOJ7Tl4uxgfm6WuBspJ/Tdj3Wu6REuOGHOMZJiL5d6wCT
         zBK6bYACuHeVr55auVPCL6LuIliE93TTcZNHXxkANAo6UJodEi/LVwvSWtSY06xCWRRp
         J8ow==
X-Forwarded-Encrypted: i=1; AKwUvBzgMIBes6OMKtzwlEXBEGwMR/AKj2ubtYp4Cwty3JV2KVhsuMybbThSerPAM7A6j8w1aU7gjIaVxUNcbzc=@vger.kernel.org
X-Gm-Message-State: AFq9FYIOaCZ2WWgSlz3cCmPI532jpThIuc/Sl0t47DVRDGdLx7OIqbRg
	hbz/DJUqEBgA0qstnLech4drdKyPUuujKpM0z6hvFT+sXAYvYXyVIufN75NEEttQQKONKe/C7if
	rke623u1qhFiCdTlhX1d/FXOcbiILCw/Bmg==
X-Gm-Gg: AYBFou2WZCiQYuPKf4T/71l3horPuNtYadfTjqDmempZ+XGZZSrwuS+2xhjBeHEaS9H
	INo0ARbT5+jI7kq9iOvbcTFFdjeow8sSR4rCSZ8cw6ujQIB2U2Wgynb27MUaZIfq/TSvIAKhgu0
	tpz7aWbrhm3sbOAZNsau2l5r4lY9AppG9Y+wPdQPvQihofb6E3Ska2dNffJ6OMKKWsvZ5LFZrXe
	WtCRlUod7vFu2nCN+7V/fYLwFxkueRgK73otpWQuZXTPBSz0HLXG468BE87e5q0aZ03r8n9Khd3
	UHNNtNqIS6zg8oV4cs0tmxP9FBZvtnacPal+rQgklbaPb4tdG3jitioy8hKCcX4PslxKAR/qknp
	DSIUuE0mRZNSWJT5S+vDqQEcNhh4htgxmFJOsWSSAkPfEKcgk0bJkF8RsGnZWm1cFJg==
X-Received: by 2002:a05:7300:8812:b0:35d:e49e:74ec with SMTP id
 5a478bee46e88-369e84e88a0mr3831920eec.41.1792846548250; Sat, 24 Oct 2026
 05:55:48 -0700 (PDT)
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Post: <mailto:linux-newbie@vger.kernel.org>
List-Help: <mailto:linux-newbie+help@vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-newbie+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
References: <CAO6a-9_b5qEu7WqZ_Db0fwKRo29zhsYV+UbQFPvHJa+O=HES-Q@mail.gmail.com>
In-Reply-To: <CAO6a-9_b5qEu7WqZ_Db0fwKRo29zhsYV+UbQFPvHJa+O=HES-Q@mail.gmail.com>
From: Vivek yadav <linux.ninja23@gmail.com>
Date: Sat, 24 Oct 2026 18:25:36 +0530
X-Gm-Features: AclHuK-8zD_o0_eJd9eBwAAfd0VJ1S_c-vwVkRG99e3nUL125uREUY1PVqYGNmk
Message-ID: <CAO6a-996waMafG=p1-GN25P1zsECAgW=OMV-UBnp3060bo2iRA@mail.gmail.com>
Subject: Re: Questions on UART FIFO Depth, Watermark, and RFR Values
To: linux-serial@vger.kernel.org, linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For wider audience

On Sat, Oct 24, 2026 at 3:21=E2=80=AFPM Vivek yadav <linux.ninja23@gmail.co=
m> wrote:
>
> Hi,
>
> **File:** `drivers/tty/serial/qcom_geni_serial.c`
>
> The functions `qcom_geni_serial_port_setup(...)` and
> `qcom_geni_serial_earlycon_setup(...)` both call `geni_se_init(...)`,
> but with different parameter values.
>
> I noticed that the RX watermark is set to 2 (`UART_RX_WM`) in the
> former case and 8 (`DEF_FIFO_DEPTH_WORDS / 2`) in the latter.
>
> I have two questions:
>
> 1. **FIFO depth assumption:** Why do we assume a default FIFO depth of
> 16 words? Since the FIFO depth may vary across hardware
> implementations, shouldn't we detect it at runtime or obtain the value
> from the device tree?
> 2. **Watermark and RFR values:** What is the rationale behind choosing
> these specific watermark and Ready-to-Receive (RFR) values? How do
> these values affect UART operation and performance?
>
> Thanks,
> Vivek Yadav
