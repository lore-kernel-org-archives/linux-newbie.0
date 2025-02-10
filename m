Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11C5632
	for <linux-newbie@vger.kernel.org>; Mon, 10 Feb 2025 03:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739159311; cv=none; b=mgz7LzkphXFwH9L8gJLmOU/SiR0l7tQdTKBjQyBfDhg2Ob8Y3xsKMJW6/rdhmyiVvnxF7ext2TFNZtIJ0gZoYjOo89mLG6aDaRm6JQ+o61hFkX1m6uFRo/FMgdE7M8Ae3WMJl3/XMi8mTmE1z5J7OPCM77xnWNNjeJtowYz1aw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739159311; c=relaxed/simple;
	bh=C+E/Gb+K0qparOYE1yoKqiMNhR4/U+KP1+tRyTZHvLA=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=OqZPG0LNPcy5awLfdyVZf3hDZP2lu+Ts9eks3Uu//zry3zFDOnnUztV5VKEVHXwkskKWJxqvwzQn2pe7jlwhrZ5mU+K93Kd6xaJMYq7Dod6JE7P2epGP+ihpSPYK/0u4T0br7iRKwRcWX+ZOTUiLteQ14Ll6R6VjnvucxFLovTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mFuVv8TF; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mFuVv8TF"
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5de56ff9851so3730436a12.2
        for <linux-newbie@vger.kernel.org>; Sun, 09 Feb 2025 19:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739159308; x=1739764108; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=C+E/Gb+K0qparOYE1yoKqiMNhR4/U+KP1+tRyTZHvLA=;
        b=mFuVv8TF6RIFoxsNUKiDV+2qgt8aLZZj1f0Yz25jJDhOKG6737LEJE+p+N1bEBEUFq
         4exkc9nmHA7Ts8wRkK0JntdJurQveOaxpP2EL+K5pX8eJWr37V89TyFiBLpSKHR7h76J
         TTLygDquyPsrHtSe9WCVafwQvUamDr8vDBIwczFVcRnHPT19czq/by4YsLuAyvy7Vza8
         LH2yYK6+lQuzRX6jkHtj89AcflMKsVfjtguKXV1Su8VP9oYR7ujk+GTu2BlB2XFjWMdI
         CG0bK2RCyb+fnFb7XIYSnqhPnoPfLCxIuY9Eoyy84/+9jH6t70PqkrS16LGcBxA7uC9R
         Lc6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739159308; x=1739764108;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C+E/Gb+K0qparOYE1yoKqiMNhR4/U+KP1+tRyTZHvLA=;
        b=h9iMgOrVHZ1JQvkvuq8JYJCA3SCceacbp0VT9+3TqueOZtut34g/zUfmhPkVqZKyGe
         geWbbMdheBzgCGB5el5XvDtj7eMcB0KAeGixEv8XNeMEzPuKtQzJCHAynjOPE36B39UQ
         LLAeIVh2E0fjYdSn+gu+j4DHdvYTVyg9DtSs/9hu+WTCYjU4rnHobfj6uQhOn0ZRORkx
         73OxEWkmVOrYG9GOqHuk5IABefdc/a58IFmTES2GDPCGEYp1ZDXGuoxPG+JtPLSi6qAS
         ia7vulrRIR4SALPZ9gASnnfI5r7IdcR6rqcg0oUH0ZjJ/PkpLsh57moqRwRnTb8buTgs
         ymFw==
X-Forwarded-Encrypted: i=1; AJvYcCXC9Tpm1/9jcLkXtl9c8MNkVZrkv1nACOZ5BWaOw03/7pRG9jh1JcL0Yu9j5dwhqImMsU7q+dA1AmFT7xc=@vger.kernel.org
X-Gm-Message-State: AOJu0YwDT/yeUOfjoXu0fQrm6VgXCCrBrph2eA+1OO7yVKilsVTGSDHs
	swGWFcW17JeOcSVD0FGog1f5TuJrjA9a8UhFr1Z17hG3AXapMBjGKCMQCcSGCq8HRtinwwxb7eq
	gxX4nm+6hdr3Pxe7C2GAhsAn5FZw=
X-Gm-Gg: ASbGncsvWBhpxsIHaqVRhpsiFwSLeWQ59JvaBmvDPKXjOCO8HLTVXYzG5AWiH2qpTi1
	sjJIlxIVxDbdjv+h9CMzODtXx9wQnIBH60fiWSECwOeNv6WH4me5Rb+x3FlzoaDK+arECny3xaQ
	==
X-Google-Smtp-Source: AGHT+IFUgYAB2gajBDgMhV6vkkrtdKPGr2u/VK0ozjGPT5hBYNlnwEOu/cfsCLn3qT4GsG+d410jvgYuNdQTC2a0qvE=
X-Received: by 2002:a17:907:948f:b0:ab7:63fa:e4e4 with SMTP id
 a640c23a62f3a-ab7897afbc6mr1311969866b.0.1739159307876; Sun, 09 Feb 2025
 19:48:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Vitalii <skikunvitalii07@gmail.com>
Date: Sun, 9 Feb 2025 22:48:17 -0500
X-Gm-Features: AWEUYZk0MALifT7CEvF3aQwYu-FQzyiqFWYLY6n9bQT_Ip_Re8wcWUbPtGs4y7Y
Message-ID: <CALZ+hkPHS=ZqdrqA4TapnT9KNc6RBH5T3uSs4ze2ogM2QudhGw@mail.gmail.com>
Subject: Re: [RFC] Feature proposal to speed up the kernel.
To: joshua.r.marshall.1991@gmail.com, linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Okay, I'll go ask the wayland developers then.
