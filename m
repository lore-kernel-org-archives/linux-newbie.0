Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64D4EAC6
	for <linux-newbie@vger.kernel.org>; Sun,  9 Feb 2025 17:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739120611; cv=none; b=EsBdCunLYioEO+SdRTGlQqQc9Y3dpT/IrRrusAsaZRUafGACLgVft1rjBzFHPwAAC4oqDZYVhjlbraTos6pJ/qhfOfYCSTs/dd6nU0UNqb7PRY+9kWHUPPWQCoSLvH4PXOJlPLPQQw309B9hCA1f1M3uWi0HJd8F0pKWmJct2iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739120611; c=relaxed/simple;
	bh=kfj29WDP2dhSf58waZ2BeziAdGwiwHxwQwe2t0LCddc=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=eaRQHRW9hlXpn5I52YBHQ5nL88sFiuNfBnm3yUnVjWzhe3IuFkBHwAH8o41pxNmnTqmR6BwGJM1BOBLLoS8L4LIA6DhX9WJ080clRThzzKuGyG7g49qIDT3qAOS+U5tGABJYu05J3KNySoQOeoj3g63K9ffzuBivGAZaO1lmqZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QPEwv4h3; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QPEwv4h3"
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ab771575040so697492666b.1
        for <linux-newbie@vger.kernel.org>; Sun, 09 Feb 2025 09:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739120607; x=1739725407; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kfj29WDP2dhSf58waZ2BeziAdGwiwHxwQwe2t0LCddc=;
        b=QPEwv4h3SICudf9eVrmeLWZmc4F4WgbOXUJ5GXpI0mj53fblpfw3IOqHqBihOCupcd
         /twMXe5BjdViF2699e+CZ7+IQZrK5Bloj0aMlHUPR9KgQ2tu7tLyUvMFET6Knf8tM3he
         MccGunerQNm+r5jReHwD6ashQr25FdOIIgWjIeBG6xb8s2bmW4DDBgj4tHqycHs+FDBi
         gvC0Kb1u/Qh2d1+Ev85XQi3YjF2A4mbya+68lM7K5CsvbzUXFkeqgkx/sUFUekNWmwBU
         ZSp7Nx1IPWhqAwdjsuG5sx66sGj2W/U5gfABIBEbjr9DWX+SWGM/DirICGAJLHI7AiQZ
         yx4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739120607; x=1739725407;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kfj29WDP2dhSf58waZ2BeziAdGwiwHxwQwe2t0LCddc=;
        b=Ai9t5As3572jSkcUDB9c8W4/AgQ1dSeuexuwoMlYbj0ZvxHPZTIK1y3moCytO0WPUM
         3OYESe86tUTLdxovnHHuDeg+4wQxrbnV5V8JeFJKo8no6ZCaSNrkv+Y9oxYHt1WlyS0x
         CbNTpG22/YwuIqprb+tChcJnl9BtpG9S84WXm0TDbhn96tShfUpNjdmzkLTxIrdEIN1Z
         pBcZe4RYGhT1FCrzTGp7DW7oAEi6vFzrJaBeshqECWG6prEUo+8Kk+JL4MdbSSRxc+JM
         tO1BC7pIqTOwotUHQXF5VttMx4xKVQC3c/dNP2X/VVoWgyWCRd+UxGQC7u+G52fdNjFp
         U8Xg==
X-Gm-Message-State: AOJu0YzpMUrzhQ2RQ1fhUVo3rF3FjPA/rx4MDomvVqBGVYwgnjetrbd1
	Od+0AH69ngEZW5lioRzvMiEiUKp4XYbicF1hnlmGWUATzObdP3/H2xWZm21UbMdqtA+IJ5nRyz8
	E5i41PNIdE9gEdLaDpe9yzwaY/vQVmAHo
X-Gm-Gg: ASbGncttqlpiSd6zIdlKwlm7EQi5I8FaH4kCkfDZrd8Hqpv7Fs6PRH5rCvhFMYV9g5F
	8mJIMGOZ/bZXKQ+2FJ1grxFRwtV6HQqML3jf81i5eSzwSNU78vc/2Xnw+MGrnUyInBRlV/xh47w
	==
X-Google-Smtp-Source: AGHT+IG2xdil08IqOwLtbdcrHYNehqHbHPT2lFizTixmJUHBsw+etZ2NBv2WplPhmHYYOcAg+x6CWyfZc9PNDb1uiNo=
X-Received: by 2002:a17:907:94c2:b0:ab6:c726:2843 with SMTP id
 a640c23a62f3a-ab76e98834amr1468271166b.22.1739120607149; Sun, 09 Feb 2025
 09:03:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Vitalii <skikunvitalii07@gmail.com>
Date: Sun, 9 Feb 2025 12:03:16 -0500
X-Gm-Features: AWEUYZnbz2AqYPZ21gf06UUqZcea5ROG37RoBlv7DdSvZsDSxNHR7pu9bD1kQPQ
Message-ID: <CALZ+hkPg+WSsTf3yKFcQP+7yDb5nTGX2jVvVE11tCndJCk1+2w@mail.gmail.com>
Subject: [RFC] Feature proposal to speed up the kernel.
To: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

When the display is turned off, the rendering of graphics is skipped,
speeding up the pc. When the currently running command returns any
exit code or when the display is turned on, the rendering of graphics
occurs, setting the speed of the pc back to normal.
