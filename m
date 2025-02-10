Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A234943179
	for <linux-newbie@vger.kernel.org>; Mon, 10 Feb 2025 03:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739159948; cv=none; b=tMMhrY/mhtMOghac7hgGoCDCAAMHhLj6rKrOHGB/tvNoMn6IXod81Tb/p3V4BySMXbJNFmAs7VcOcA4bioi+6fX6Ot2jdAEo8ad7/ciaIp0tUdjwe3J7J9LAL4Qo13p5iHKxyuaX4JsxJ8XYaL9P4F5K/sxQkOrWmM6sg0jEp5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739159948; c=relaxed/simple;
	bh=wx51KAgM+1dWtcpNr/wDEX/K4TXrHE+jeg1OVkxIaBo=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=H2iCvMDjRc0Q3f1teI6UerKW3y0W3tJc19yTnyokPcCQRY3G1/ix3g/NbRxtWTejQ/81SfdHm4HPwpbN90/KFH22ScrDvr6UCOgzw42OTsii3Cf4oujgM33arr2yNMw6LdYvYpLYS0u+4v0bTPjq6MWn8NeZqoDmr0svBkzPHyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kafvR8b9; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kafvR8b9"
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ab78d9c5542so446687966b.1
        for <linux-newbie@vger.kernel.org>; Sun, 09 Feb 2025 19:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739159945; x=1739764745; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wx51KAgM+1dWtcpNr/wDEX/K4TXrHE+jeg1OVkxIaBo=;
        b=kafvR8b9n6ZCg2/qkh/cAlwTvpmO8NbNk2e/NV5hIPsffc9IsoTQQX4m4cgrmPhReO
         gLCGyPgi7lW/HrO6pPZRK5JApZjZ+7YD2lwIt5TDlsISZL7M31RAkEXjtELYIgYZOIW5
         EV7T8JxRcMcn7hdPIX63VTJFkyJmOeZBS35K3NFvpgI3zsQXmwtSh0E1Y/f8yxI90pmV
         LqQFxVab0lY8H4w5GA4TMGzzAkDfZMZKNEojBtnWkv09i/wiH6jGipA+HTnwZkaW8x5Z
         r0qa35GAvW2Nxyl5ojgrMV+BfE7QeaH74sgCI7D9PLpiFg0RodIOjJlDhjtDrTaIoS6M
         TKsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739159945; x=1739764745;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wx51KAgM+1dWtcpNr/wDEX/K4TXrHE+jeg1OVkxIaBo=;
        b=l7aG2N4Evana1taXNu98hhbG5r46vV5m2wWNYW2CSq7KtX9F5/QFby8enDEDjAJFQE
         +aYYmf8T8Xa8patV7TeKccN776YVdzUPAHm8+0cAgyT67K2s4x+cXGlHxIg7A9wuiwtR
         DN8/G1I4ne2V7HE7ppL/ZQrPxUSZhwJgytnjvVRl9YsSTZEg2RLUHFest/v3mMp+lF2N
         twPOBK3HumHpiSJfZsUXWp+qBrVhl/pHa0eLs9HrP63nl0B9l7vtCCckC1FjA6ejao4K
         nHVf6PXhrWXHUygH5K9OJh+ct/WsiiOw7/+Zwo0gvwfLJYBHjboVELrWYYEzkiN4whZQ
         E4Hw==
X-Forwarded-Encrypted: i=1; AJvYcCWTY7ddf9hXIht8unjYmqDH3q2ZGJY8+iTASsnx1nCW/98YP9Zfbe8a9eRciJOiIlTr9+GrAr8PSzzPmyY=@vger.kernel.org
X-Gm-Message-State: AOJu0YxHpZfa525YMWmEz76y96IXtZ0tbluZ9kNwin+Nnzxt29OIlubd
	59qLhIx7Eeq2cqarmBXV6iF0bP+Ba+zY+OC60eLWjfMS6qW7/u4aKLvpbesvs7gBILi2MNfcKHm
	XIYFTqU2EA2p7at5VpLH+w8MGipXFsQ==
X-Gm-Gg: ASbGnctCppuHhHYePNpLgtwCQolTl5b3vao76JkG+umZCu7FwN9dsGRSCfbvLvxJgXh
	QTu1GAXz6pcq9+7l8aUUiJA1Gn5ZiH/QlUMjSi11tdws3ZSXfI1ugMwtxRKDjMqfi2n39Z2zUpA
	==
X-Google-Smtp-Source: AGHT+IGTTczv4GbXIA62K4ZfCsAveVPrMW+nMFJzWxqO80RwWl5j6hqxSf3rYMRPqOlKdpBNbCTyhW3VDv5jHFS4eu4=
X-Received: by 2002:a17:907:6eac:b0:ab7:4641:a72d with SMTP id
 a640c23a62f3a-ab789c2d78fmr1203621366b.51.1739159944696; Sun, 09 Feb 2025
 19:59:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Vitalii <skikunvitalii07@gmail.com>
Date: Sun, 9 Feb 2025 22:58:54 -0500
X-Gm-Features: AWEUYZlMHkILt0MHIgZpnTnFWu_1GP8HbUnlTNKdsmm6cnLchEU8yCv1i9OGhC0
Message-ID: <CALZ+hkPB_Zh0WhFfnE62_Qy1=4UAn-DVhdWw6T8RnAUxr2e-Tw@mail.gmail.com>
Subject: Re: [RFC] Feature proposal to speed up the kernel.
To: joshua.r.marshall.1991@gmail.com, linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

You mean asking the desktop environment / window manager devs if they
want to implement this?
