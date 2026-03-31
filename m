Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCC52F39CE
	for <linux-newbie@vger.kernel.org>; Tue, 31 Mar 2026 09:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774949773; cv=none; b=mV3Vd693O1y8WaXW2CNnr5i3AAg6YYvl/jm48wH8Tk3DUYiM05vp4sylEhp6U8yo6Xp17lx+mR9JQQgpnjjJj4sOpI4Fny5mnvG77ZE7MwO1mtTdCLYqlChydH0Qq98FZdR6GtEyU4ES8SgQinRkQJByS00dE6eMS5AldxcXE00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774949773; c=relaxed/simple;
	bh=DFhVOJ25aJCzHx+GGNwv4zsUe3B9rriM/VunQup83Zs=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To; b=T1KV82mplNnkxkx2l7CwbpZoPEbA6eQFcJ/oK0J+JkOBixMI4wfJBTM0783GpIfkjP/Oxf/U5mC8YRk+BN/EonmSxgielGVlycCKTKokMeSkA1PPQ3Zq3l1Ifh3hGhqWl5klDRJnp5BmMocEZFd/OMQVoll+xFMpbCCuE27UtAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WQSLrFkp; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WQSLrFkp"
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-43cfbd17589so2075056f8f.0
        for <linux-newbie@vger.kernel.org>; Tue, 31 Mar 2026 02:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774949771; x=1775554571; darn=vger.kernel.org;
        h=to:date:message-id:subject:mime-version:content-transfer-encoding
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Nsblj7iElK0SR6FcgQw0m/jUtymzhaUMUSFJmc+Pl/I=;
        b=WQSLrFkpYyXJ54M2LpLo4MOgigmq2TtJhsH6lJE+HxcvAE869iQbBD/k0sSpzY9/Gr
         hDUhPMRBUvMDMRzL/ITo41+8XUNzFzGwd7ghmmZuDGdN8wHudSiXYyR9JVCW0hP39j9l
         8Vs8BSIucJL8R6tuxu13VwcPRABapkrO7jirJfat0Ywb6Z5DHunvrcVTVijC//OilJOK
         xSru/cYwawSAzU4UsnrDmNBeCx8M+5aEQdwb0r7Xea9aBVDLoG5m5fx0oLIZ8XmFXScP
         3BjeSnTG5lgAasYq+CJjMX2Hb10dprGYf3gDh/5sIcZ7DjMXBJMeaQZRVPJFgOQw1wzn
         tJEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774949771; x=1775554571;
        h=to:date:message-id:subject:mime-version:content-transfer-encoding
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nsblj7iElK0SR6FcgQw0m/jUtymzhaUMUSFJmc+Pl/I=;
        b=rBhdUFYE9ogeDxloBonrXUVRg6gYmcu59zcXaL82ldEl9199kJ6m4DIWiidHvnDhfO
         R5wf2y8LYwQr8qerhdylmjR7rdX4dLdQgARYN9xDj4ODtr41KtFdp0/2f47zKFX3AyaQ
         4KaOAZ8RKQhBO0Sl7p90+G3AE/7N6jYm7aNPl4wupooUe6iErIpIx+7pXjdMnfp92dKM
         hIlMSHyw4kMUBnt0p21SPb8/hPUJB4JG9UnWTxe0EeuNtwF8Jyqxr4hZjqnVCSZ7UKxU
         6D1yH9fH33cx8Puc+4MbQTWJs7Dw1C8PydEeNgXLfXiC+gXNMLKeko6f0EWTQ2rxZexc
         uRjg==
X-Gm-Message-State: AOJu0YyvgWr+lU4GKAh2opJuY/5P8mwNBqLJCFF/5OpZWPfKwh6GbyCX
	MZeiCBb5OK7fT2JDqQl3up1fAfB6YeBKLzl6oKrOYiNJlRc3OW7RljL3S5aEijGe
X-Gm-Gg: ATEYQzxX3V+abQRI/xeso+Hi+RFihFbIS7448woLnDd+ODSnHGFXlX1iAOlMnGHcrBL
	B16ZGt/vXzuFQQg0gk/agtdwtN1cgPqkOTPHQbRLAVqyMoZIhEe3wUnX8ob7TrBpCo0md+J7JYt
	NCQthiELjqTyhtVWKcktH/jcKC+xWr5ikUhZMXO+Pc545V94Lzd0JJcvi/jXu+PCcvo6AqpJY6g
	mscRntlwV/cYK2CzeaN5Y879dmaUAZ+aNjrFgcgUHVZrpHyXW+/WzF41H3Bi8GzPCBsZNu/JoBQ
	6VlKbM2gSy2+YM3eTOOxJd0ih7r2K2BGX9ywhljPx2ibSedy2A2EpghnD2NVW8XJ55DZOsnKc4v
	ABW5QuHPYLtmEVEMxC7IXBZ54CHCQSgh4/8+PzAQdof5GYjwcIWb/NQdrajMHtbZgwO5O2gpK4L
	Ew7auYtYs2sfZ1lLyHLibwUrA2bFQVkCAf+wTriqWq0PZVScCKWmyuhNHpNRmlWE0nU1aiPn7TF
	GWZMPXdkkxe9a+TDJ3Usg==
X-Received: by 2002:a5d:5e01:0:b0:43b:43d3:62ac with SMTP id ffacd0b85a97d-43b9e9e9071mr27583043f8f.18.1774949770606;
        Tue, 31 Mar 2026 02:36:10 -0700 (PDT)
Received: from smtpclient.apple (host-82-135-35-250.customer.m-online.net. [82.135.35.250])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf21eba4dsm27865441f8f.11.2026.03.31.02.36.09
        for <linux-newbie@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2026 02:36:10 -0700 (PDT)
From: Florian Heigl <florian.heigl@gmail.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.21\))
Subject: net: question on Liquidio II link speed management code, i suspect
 it's a bit incomplete 
Message-Id: <18989BCB-DC88-4CAE-9145-43F853ADB3D9@gmail.com>
Date: Tue, 31 Mar 2026 11:35:59 +0200
To: linux-newbie@vger.kernel.org
X-Mailer: Apple Mail (2.3864.400.21)

I=E2=80=99m trying to wrap my head around the link speed setting =
mechanism for the Cavium LiquidIO II / CN23XX NICs. I have a few of =
those for playing around and try to make them more accessible for =
others.

I=E2=80=99m on Alpine Linux edge, running 6.18.19

The card defaults to 25gbit, and when I try to set the link speed from =
ethtool it doesn=E2=80=99t work.
"Changing speed is not supported=E2=80=9C in dmesg and in ethtool =
it=E2=80=99ll say

tschike:/tmp# ethtool -s eth0 speed 10000
netlink error: link settings update failed
netlink error: Not supported

that was odd since I can find that that support IS in the kernel.

https://lists.openwall.net/netdev/2018/05/08/21



Today I was looking at this again, and specifically at how the flag =
no_speed_setting comes into existence.
I found that happens in lio.core.c (drivers/net/cavium/liquidio):

specifically here
                        var =3D be32_to_cpu((__force __be32)resp->speed)
if that sends back a ffff it=E2=80=99ll end up at the default link speed =
and deny setting it.


=
https://gist.github.com/FlorianHeigl/de72c603b1579dd94dc9ecbeb290a36c?perm=
alink_comment_id=3D6068358#gistcomment-6068358

I got the strong suspicion that the code for that decision making is =
incomplete.
common scenarios:
- if the card has link at 10g, it=E2=80=99ll send 10g, and you=E2=80=99ll =
be able to switch link speed via ethtool
- if the card has link at 25g, it=E2=80=99ll send 25g, and you=E2=80=99ll =
be able to switch link speed via ethtool
- if the card has a 10g cable and tries to talk 25g it will not have a =
link and no idea what to do.

>i think it the driver then ends up with no negotiated speed state,
and in that situation, with the current implementation you can never set =
the right speed<
this would explain the actual behaviour I see, and it would explain it =
better than just looking for
differences between the old SDK and fresher in-kernel code.
the supported link modes in ethtool are also =E2=80=9Ewrong" (only shows =
25g, should show 10g, 25g)



i=E2=80=99m just not sure how to prove it from the code. I can point at =
three relevant opcodes in liquidio_common.h


#define OPCODE_NIC_UBOOT_CTL           0x17
#define   SEAPI_CMD_SPEED_SET           0x2
#define   SEAPI_CMD_SPEED_GET           0x3

but IDK what really happens when it queries the that resp->speed thing =
(i=E2=80=99m not a dev, obviously)

I=E2=80=99ll test with a different u-boot version but the kernel side is =
far above my head.
some other dumb tests I can imagine are changing it to always select 10g =
or overriding the =E2=80=9Affff=E2=80=98 return.
it just feels like piking at things blindly. I=E2=80=99d like to know if =
that even has a point.
if someone tells me no that logic flaw you imagine doesn=E2=80=99t exist =
then I can avoid a lot of frustrating tests.
I don=E2=80=99t have a 25g DAC or SFP that the card accepts, so I =
can=E2=80=99t even test by just connecting it to itself.



tl;dr
I think driver only allows the card to change the link speed when it=E2=80=
=99s not really important to be able to
I think the supported link speeds are reported wrong
if someone with a bigger brain or more practice could look at the logic =
and see if my suspicions hold up, or tell me a reasonable next step to =
take?

