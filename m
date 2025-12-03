Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB6042E8B74
	for <linux-newbie@vger.kernel.org>; Wed,  3 Dec 2025 11:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764761026; cv=none; b=uz03v8aTJJH7iLQLWP07dQUOYwWVLcfLRAhVnAqw0WEsvOG+LYWOjaoJMTVmGN/jXC7ZIyrsd7+VeU29hYZqwQhPBHMnL3+NnxnDHDgUdrUxZkHAMPC9QUP0pSQnzwjC/WBsvgWlFuD1PwsnVMq6/JDMpVuENLFzzxPcjBVqhPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764761026; c=relaxed/simple;
	bh=Ndbh/sD2BneiovCY28q8ZEd0St/sMzhY89Zsv9XSpLw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QA1PVTWpYibPCEuUGtBg/nRZi2hWcOWRDfrGhu9fE4XgWdkkXAy0shNqXuroxML/u0WJwDZjUZJKJUnaZQUHoJsER7lJAGMh9teVwLEKJ9ZlIXu8UerXzxF9SZokXg1aJ6UeQshM6rDAsvJVvmzbzxMEYGrsRFWy4yvTQa9TVsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nXLArZsC; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nXLArZsC"
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7c66822dd6dso512040b3a.0
        for <linux-newbie@vger.kernel.org>; Wed, 03 Dec 2025 03:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764761024; x=1765365824; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ih7UlKJuzS66DrOclS0PTTZoK169Rfoiu742k92DMqk=;
        b=nXLArZsCw6qsc8h97qhUYaebyA1sAlUUfzaJACHUewmoa4STY2F6g+wD38rvQkOlB6
         3DDFNB13uj2pHnNzW99RjnrprB5PuM7mvLmljrK9i09wdap3X/jyb0/iff+rEE3DB0DF
         XIKQzL0q8EO1Ye4xUgacjNvxyt3SFljhJ50BWl0imDaWCkOXPycJXAthPSYLQIa2xxMK
         koZwN1YqcWy1Rlqcu3AmjIsbZI2chJmIeytamfJFCRzcaDeW37QuLj4Fvu76zsgYd6h4
         2j3lwvEsuqvT2Azg96llsqbPIdFTdDlctJwEjmQIGOZKLk2NRiE08tNuGR33bO+QgJ0P
         62yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764761024; x=1765365824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ih7UlKJuzS66DrOclS0PTTZoK169Rfoiu742k92DMqk=;
        b=eEaH3+Pivb175sMNXK7up9e+hzOpL2gdAaEsSAxGifW8QR6YZniEimIK4rFmYxT861
         5p+B6a9V8M56BioFqG0dwV+QOiH9vieQxHhr9mnyMEmfiSsimjKpY1kAzdb6uDL03ckE
         j8pbeDT6FvBJRTxVlvjz2I5RRpfyUIezZbA8aN0z6epHTg4Ho0TCcqxJlE4DhGpCnpQK
         Zmr8U3VtmURSKQnrwcUlvV/iyozYfsnux+ikIYLrQ0bwCoyENA65tWNr5Z0lW5ETxyRZ
         cfN8pf8w1n/38XMqSKBF+yL8F0Sud+x9tOKdoQtjZ2ZG2ajDNJPQ8pzvSI6ZwkbwQ6Iy
         VAtw==
X-Gm-Message-State: AOJu0YwcCnr8Afl0ijsAJW/mWmuaOd/T6EbQdb+FfoFF+cfqq+gullFb
	nGTt9z2KoPcfOpeiVqt76ue7snTwJS2wlwHrYUYqynKM9kCQjJSM2OHd4eM4IA==
X-Gm-Gg: ASbGnctutZrXuffDTISvd1n4NimrvEKSmm07Rn0MRXMLIR+uBeqGG/pdEtBAvtq39Q4
	l67pAFJJYEit1UBI2M0X7iG67Lv+L7Msky3F2Lx3HQiAkILqTElLLtu9f6s5tTgOpBJcdkWrnhh
	2/D/TZZ7P9sa4Y/RwNrDYlnaqJ72MOcrHWckLiUdCGW61gQstb7Sz6xm+dsgrdIXaiaESHqOEd/
	ZCnecNPwyhLIuc8aFym4PZI6pX0JF52A8fKmE16sASxbLt4kVcE59ib58Dx8hAvsZ72pViLisai
	b3MGkPoZIPZIv1uKbBUtwESHLIkSG6PUDc7fqm62DvSktP1dsnYbaG5bPkd2wU+0Ilp2pVUMCel
	VsGoUwyaRhGUFRcikUTrbYDG46Je9tnag4SgfJKxEe3kIcLa1Rv+dlBwfMuTQwCwENAx4le7M8t
	N/Sz0ru3m59JNyvpRHBs4MPPs7GPIk1WR84FtTDpLfO/bYAmyTz2IDgovf
X-Google-Smtp-Source: AGHT+IF+eQyQ2x3wTganruIyg6yEhBxjfVbTKyPTwbB7j6NVzerHHKO+ftpsczSQsdBU4iksXWDIRg==
X-Received: by 2002:a05:6a20:1581:b0:35f:7431:5da1 with SMTP id adf61e73a8af0-363e8b179b3mr7362111637.0.1764761023857;
        Wed, 03 Dec 2025 03:23:43 -0800 (PST)
Received: from localhost.localdomain (223-137-152-58.emome-ip.hinet.net. [223.137.152.58])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-be4fb434e8esm17596516a12.4.2025.12.03.03.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 03:23:43 -0800 (PST)
From: Nick Huang <sef1548@gmail.com>
To: dilanjohnson@outlook.com
Cc: linux-newbie@vger.kernel.org,
	Nick Huang <sef1548@gmail.com>
Subject: RE: What's the standard for dynamically allocating memory?  
Date: Wed,  3 Dec 2025 19:21:30 +0800
Message-ID: <20251203112132.5121-1-sef1548@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <LV8P221MB1399D71143E168BBF9D9C955C3D8A@LV8P221MB1399.NAMP221.PROD.OUTLOOK.COM>
References: <LV8P221MB1399D71143E168BBF9D9C955C3D8A@LV8P221MB1399.NAMP221.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


Hi Dilan,

For memory allocation inside the Linux kernel, there is no single
“universal” function — the choice depends on *context*, *lifetime*, and
*constraints* of the allocation. The commonly used interfaces are:

1. **kmalloc() / kfree()**
   - Allocates physically contiguous memory.
   - Good for small objects and structures.
   - GFP flags control allocation behavior (e.g., GFP_KERNEL, GFP_ATOMIC).

2. **kzalloc()**
   - Same as kmalloc() but zeroes memory.

3. **vmalloc() / vfree()**
   - Allocates virtually contiguous memory (not physically contiguous).
   - Suitable for larger buffers.

4. **devm_kmalloc()**
   - Managed allocation tied to device lifetime.
   - Automatically freed when the device is removed.

5. **kmem_cache (slab allocator)**
   - For frequently allocated objects of the same size.

The kernel documentation describes the rules and trade-offs here:
  Documentation/core-api/memory-allocation.rst

In general:
- Prefer kmalloc/kzalloc when possible.
- Use vmalloc only if large sizes are required.
- Use GFP_ATOMIC only in non-sleepable contexts.

Hope this helps!

Nick
