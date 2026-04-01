Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8239126F0A
	for <linux-newbie@vger.kernel.org>; Wed,  1 Apr 2026 00:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775003772; cv=pass; b=kzDyjgFgzWHvLDpfsFX5Rcc1+MAqFgAUppIgd17ElZWthApCprWHj4dWAdTy8M/GV+hPc99JQYFX8vQaKsLi5oRP23j8oJ1BLPoGW/SCbkjwVv0gXxKk4f69l16ZsYfCdKdOHDBGsbhJHO9jtP2DQl8BMhXw8JNybKxG8pn6PF8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775003772; c=relaxed/simple;
	bh=WBB8JhSveophjXZsuSpOx6A+vGx2/WulaFVZHfAXE8o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O73ZzlNmdeYnLggyqYC+Tz6OUQtabh7Thk3YB/gqDTymxC64oGQcsc/G8dtRNR6U6eCuDULhFU5UTK7nuIMR8ntr7McpLtMW4/Ia+0hJl/8CuS/jpDNp4kNhmnRrJHAcCaHk4XSRUnA6Ia/lwQiKzVa3P4M0SHMIgwtq43w+q3k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hEwwaaMA; arc=pass smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hEwwaaMA"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-486fd27754bso61425195e9.3
        for <linux-newbie@vger.kernel.org>; Tue, 31 Mar 2026 17:36:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775003769; cv=none;
        d=google.com; s=arc-20240605;
        b=EEq8slUFWTCTeE7fircBSmkSDzyVr+gFSaL9UxIJhCYSk+KK1fiAklxrCpulocpF2y
         zAmRj+cXTBFqtx/uaczZIE0+jSs6Df8RKdUAnRdduj0kxidKDsNIMh81bv3yNTEb2vu6
         9CRYWPE/7upANwXJ5yfXKreuPcUiOpg/lg5VhpC9yeGpUsWgoc0v38R2jJ0f/paxoWs7
         4y5M/05wuMHdY2XXbw9+yiwyEpP9nRg2BeFvh0xfkwO5k7RVqeLGW+itBDnEzApmMTJu
         FICc1+mRh1DB9mWIdvodzlHF5O4z9MU6a/WfTFl7UgQNHqRPTNkYFfPSJj8SomNHxPkq
         0vFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jpdgkS7oasW4MYP7OENM8E0HZAxqBRCToMNjDk/hqOw=;
        fh=42qu1aQlQKj0B2rD3dc9jKtgm/KcVyWKvtrVf1mYgwY=;
        b=C6gcs9xfYLw8G/lyEaspShdjWEskdjTEFwgAk7piokp619V3P4RaoKOQswROVV1mET
         JX6yOOD4nlePJq+L7yLTtMuuh5bc8HCqYQkyVwavTW/V5aPzAPxV3lzandV+YUfTV7JJ
         ujfozq8LXygzci0xnLFiJgIHzdATQ59A1Xu2TbqST+9vnkim0LSFl7ZOaf4VO5WJlqfz
         7F/Z2cRDzrXfa5Y71b3dIlqrYEb5urJlr7et6LbgjcN6X4vo+X8FLGga3A73cfw3+sqP
         gR2Sv9+fgbBT+QS6iSrk6F4eJUOrzHFSKLFdMS9+kxglnKypXG+PuJvRnwuprPcMu9UV
         4egw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775003769; x=1775608569; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jpdgkS7oasW4MYP7OENM8E0HZAxqBRCToMNjDk/hqOw=;
        b=hEwwaaMA+cr0MRMjCtIhTeTWcmdW42PxJr+4KRp5dDFeG1Qk4PygFzWM5U17PSkgLC
         uJjuKaDUyjl3ua0my/D1WpbI4Jdzo04Eh7ZvECxW+4Y9eS2GhNRN1Yk9xFmWjeyX28bU
         ExkDdwALECibijSjaBThcJvZk+cWqolJmPSq2U5/nt1MrM4xjAvYDtoK7woxdmSVR6zX
         DtkpQlBbpR6cPazOACahKvMd5b7XUTzCJfEMr7aHuc4t1+w1vHONpnsQNsB0/tBfrIHn
         Icqe5kUtb7ezKleop8KOdL8hpy0WsElU24hVBygIoUIq+az7YivtYb4NiZKRdgBqfnVJ
         KCZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775003769; x=1775608569;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jpdgkS7oasW4MYP7OENM8E0HZAxqBRCToMNjDk/hqOw=;
        b=DxDTo5DZKw7KCb29UtCHYhDkQoB6f6KIsO9GOUAs43TlzLqpKzh2LUC7rz9NJaDIk5
         9Ftiuq6N2ZI9WJ/YqyZgAbCvTXu5Em0om9Q/kog31I3VURo8f0CAoGunNtzTUMqNtcG+
         ScCGeaArIUq2uGrqSvSBZX7zw9ULY17HQNqAbUopzcFmrf7KotCnD2tWleysBLZP4WFN
         zeQ+XEoWwiGv59QOVYDHCkZfDO2paztBFv7YQJ9QcreuYkQ5mN8BFnMaFvGXbJ0+bPls
         2vbbmWkgxa5yc8GfEOSbSk/QAfl9bbm7FQv5+6fYqxShgoR33f11WJo9ItX0b7gBUD0x
         Ubxg==
X-Gm-Message-State: AOJu0YyP3S8W8iKsd7TFIXMl15Y0M0NYvggqtu+sO22LZjMmjpgrpDZC
	1Hq9SCIk+55w3p18uBfy6Yu3kjdpQr478HskfsklUxjg5TTldTOd8P2T/a6wnW1xEsFDVsceY6g
	5FxXp89/YmLYszH+5aQVqSPP+l7ApY2Jp5FmN
X-Gm-Gg: ATEYQzxpL6kIrTyvwiFTihiNAlKufMn3sR+mMIfWW7gfUrPO5MpRWo8njATHELIWZkz
	dEFfPIc3mtrx7L/Je3VecN766YQLM0XOwuu7fCLKVyVAFfmjioDPfS3vRacMIo0JU9Az5J7CdUc
	C9/WsiYsF5kM/gnKypX045DmgEzkjWqZsTNqKcHt73TVSS1ts4CmdrZ5hWRMjCk3BW4uLuGHwmv
	/QJ+sP5sTeZDnmb/LImh5h8UAcqYLU6ZUcdg7Bg8PW9Zh2a5oaYt4pTWZbTxfjKuy9WaXCrSnmU
	RT/a0yCt8PruLZnlqW8=
X-Received: by 2002:a05:600c:8708:b0:485:3dfc:57d with SMTP id
 5b1f17b1804b1-488835a59bbmr20886315e9.30.1775003768904; Tue, 31 Mar 2026
 17:36:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <18989BCB-DC88-4CAE-9145-43F853ADB3D9@gmail.com>
In-Reply-To: <18989BCB-DC88-4CAE-9145-43F853ADB3D9@gmail.com>
From: Nick Huang <sef1548@gmail.com>
Date: Wed, 1 Apr 2026 08:35:58 +0800
X-Gm-Features: AQROBzCOwa0jwzC72PGtJ7B7p0lI2_0-ZSdG3TZgDF4p1pVhyNA3rN81FTJbo_g
Message-ID: <CABZAGRFUXLoDWjDRhzwk_u7-26cQ9wpS=_QottW-T0FTvqOstw@mail.gmail.com>
Subject: Re: net: question on Liquidio II link speed management code, i
 suspect it's a bit incomplete
To: Florian Heigl <florian.heigl@gmail.com>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Florian Heigl <florian.heigl@gmail.com> =E6=96=BC 2026=E5=B9=B43=E6=9C=8831=
=E6=97=A5=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=885:36=E5=AF=AB=E9=81=93=EF=BC=
=9A
>
> I=E2=80=99m trying to wrap my head around the link speed setting mechanis=
m for the Cavium LiquidIO II / CN23XX NICs. I have a few of those for playi=
ng around and try to make them more accessible for others.
>
> I=E2=80=99m on Alpine Linux edge, running 6.18.19
>
> The card defaults to 25gbit, and when I try to set the link speed from et=
htool it doesn=E2=80=99t work.
> "Changing speed is not supported=E2=80=9C in dmesg and in ethtool it=E2=
=80=99ll say
>
> tschike:/tmp# ethtool -s eth0 speed 10000
> netlink error: link settings update failed
> netlink error: Not supported
>
> that was odd since I can find that that support IS in the kernel.
>
> https://lists.openwall.net/netdev/2018/05/08/21
>
>
>
> Today I was looking at this again, and specifically at how the flag no_sp=
eed_setting comes into existence.
> I found that happens in lio.core.c (drivers/net/cavium/liquidio):
>
> specifically here
>                         var =3D be32_to_cpu((__force __be32)resp->speed)
> if that sends back a ffff it=E2=80=99ll end up at the default link speed =
and deny setting it.
>
>
> https://gist.github.com/FlorianHeigl/de72c603b1579dd94dc9ecbeb290a36c?per=
malink_comment_id=3D6068358#gistcomment-6068358
>
> I got the strong suspicion that the code for that decision making is inco=
mplete.
> common scenarios:
> - if the card has link at 10g, it=E2=80=99ll send 10g, and you=E2=80=99ll=
 be able to switch link speed via ethtool
> - if the card has link at 25g, it=E2=80=99ll send 25g, and you=E2=80=99ll=
 be able to switch link speed via ethtool
> - if the card has a 10g cable and tries to talk 25g it will not have a li=
nk and no idea what to do.
>
> >i think it the driver then ends up with no negotiated speed state,
> and in that situation, with the current implementation you can never set =
the right speed<
> this would explain the actual behaviour I see, and it would explain it be=
tter than just looking for
> differences between the old SDK and fresher in-kernel code.
> the supported link modes in ethtool are also =E2=80=9Ewrong" (only shows =
25g, should show 10g, 25g)
>
>
>
> i=E2=80=99m just not sure how to prove it from the code. I can point at t=
hree relevant opcodes in liquidio_common.h
>
>
> #define OPCODE_NIC_UBOOT_CTL           0x17
> #define   SEAPI_CMD_SPEED_SET           0x2
> #define   SEAPI_CMD_SPEED_GET           0x3
>
> but IDK what really happens when it queries the that resp->speed thing (i=
=E2=80=99m not a dev, obviously)
>
> I=E2=80=99ll test with a different u-boot version but the kernel side is =
far above my head.
> some other dumb tests I can imagine are changing it to always select 10g =
or overriding the =E2=80=9Affff=E2=80=98 return.
> it just feels like piking at things blindly. I=E2=80=99d like to know if =
that even has a point.
> if someone tells me no that logic flaw you imagine doesn=E2=80=99t exist =
then I can avoid a lot of frustrating tests.
> I don=E2=80=99t have a 25g DAC or SFP that the card accepts, so I can=E2=
=80=99t even test by just connecting it to itself.
>
>
>
> tl;dr
> I think driver only allows the card to change the link speed when it=E2=
=80=99s not really important to be able to
> I think the supported link speeds are reported wrong
> if someone with a bigger brain or more practice could look at the logic a=
nd see if my suspicions hold up, or tell me a reasonable next step to take?
>
>
Hi  Florian

I recommend sending your inquiry to the relevant subsystem mailing
list as well. In this case, netdev@vger.kernel.org would be the
appropriate place. Since not all maintainers follow linux-newbie,
targeting the specific subsystem is usually more effective. You can
refer to this thread for more details:
https://lore.kernel.org/all/20210927090347.GA2533@linux.asia-northeast3-a.c=
.our-ratio-313919.internal/

Hope this helps!


--=20
Regards,
Nick Huang
