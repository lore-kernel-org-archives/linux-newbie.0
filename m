Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0286F14AD20
	for <linux-newbie@vger.kernel.org>; Sun, 15 Mar 2026 23:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773617671; cv=none; b=iHeNxCKR+kxTDXRrQP/Z4uuB/N4g7K57fu79ewYl2XqF4433Rk1SKsBOBwbk0LJrrRD/HkjU31Ah6NGRfh/MZk/GFJB1Q8R6M3WcvLhoTUkeVZDB8SDxVHqyga3Eou8842C4LEm3Ky64mcFJPrNalasPgAj0kdHLc3FK7rFc43Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773617671; c=relaxed/simple;
	bh=Xp0YJyEC3Src8xDUL2Yv0mBEVNZS1yH4bygjH1q/wXA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I4RViFhPnA4FKitT4oJdXhw7joDftDBimjiyWQ6L1Ar/vGkhPYhwaHFfR11Ed0CoTDyDNzNe05Jrkxo/+svvnoWKxuFgb/afO+N6CN3enUjCVJcTa+lJlqlZbyD1JtazIeOVgY0njxBSjg5UKmNAJE/zO+2Obp0iRHSFzQbXV3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ccP+LthO; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ccP+LthO"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4852a9c6309so30976885e9.0
        for <linux-newbie@vger.kernel.org>; Sun, 15 Mar 2026 16:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773617668; x=1774222468; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xp0YJyEC3Src8xDUL2Yv0mBEVNZS1yH4bygjH1q/wXA=;
        b=ccP+LthOq/YairX8PDEk9+WAHmF1RurBwwhdpfLLXxbZj55i/jxH3JjctoQxXbxftG
         notGCCvvvH7mfr+aRXa6U6jS6tiO/nH6zY5MlJaJ3UTjQZqLcRcuazT+27Vkh8JnEs+5
         F9KYIek/4+F94F/98B/qzFL1R21vWc8Id7CowKoCIgtBhvrFwUvBveHVTPBjHtIw64M2
         rWsyXjibhxJT6Gr8dSXBtbekheylo/Mf7jSBtyQXoOyDPXSeiIJq+lx81VUwN9wqsC1k
         UP1xWWFbKTQXgE0uRVqExSPGCCgzBDXdS7RcZ1IVm4Xplv0/Y/4xJyHcdxOGoq6K1EMF
         NC3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773617668; x=1774222468;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Xp0YJyEC3Src8xDUL2Yv0mBEVNZS1yH4bygjH1q/wXA=;
        b=Rhes9SRGlPR7KdmPfZJzIeXUwsKYQpJ6uBwzds1fMGaIJNr5BrtdS1WDdkM9yuWju5
         8yoSNC3Kh0AZbErlHz1LMeWwnrVzLARy5xbb8QXr8qfrvamHzAXAZm2nE5paxhlc2Yp8
         8ErTqyElF+vQ/OghEJHbq5K2SNdkup4oG2aBc50seS/L18lGu4ADteUKfzazz6IM+AkM
         rSvjBujaCNNiUjgnJTbbV65+BXOcL0cj1+T/oxSdHvaQ7WFUqAlqJyvJe+UmezEBAxqC
         hxN4WiOpiOQFGEfwBHXqEpPYxvxmiaSdcGSESXa3C3BkqytMZy9wKsNpmMcdp+75oG0K
         ttBQ==
X-Gm-Message-State: AOJu0Yzo2wVmr6C7shd/vH3lRPz6hMgsJ5Q0mBQ+dpTjGDmwEXAbotXX
	BpW6z/VkeH3HdqJd52JxNzyOLnppqnfXT3T9cNZT7l/GDdCvxy2HuCrt
X-Gm-Gg: ATEYQzw+kDMXVs/y+R5nF8zyckg+REzeGiZsMvRxUDjAybh/8CMK4oZn3bXXtmh31ZI
	v5YL5HrVoL6H1P/btYjif+7IpW77FtWO7EnSkFuYUCsnZwHl7qONJV//c8zS3pz6IRHPOaNo9Vo
	TcOdH9xAoxOUXUUUf18yA7ElI4y+oVmCtIeCZi/LDHRkdGVM/sKi9vG4w8jyog7cLCKfObVzi4J
	MqB75fzye3YT8e5u+hx/sKNPuaxWi9WmjY09MablraumbWsw9cmJ0nAPxeD6DVnN1x96oEhgbbg
	VAflHoncz/cj+8S69XoAaAw2X2ZLU5crPLz1IP+dOPDGn4HFUDFGHJJR1D9KnS561XPYhkln1Lt
	PBDNvppQU9IErwEUgKtuthFdJK4/aZrksYFKwinLcGhtLnpL7aNU5JhA0OYqBrAzpU+uZHU6UAi
	N3vBSQu49G8rs0c0ETsBPKUJ7C1a7qjkg3jQAwRxJfh0TLAYit3w31+ykTac6/LlkvJDdQAu7OX
	EcqD+Na32MeqjeiYTrtvgvLdAKtOjQk1pq0KQ==
X-Received: by 2002:a05:600c:c162:b0:485:45fb:3472 with SMTP id 5b1f17b1804b1-485566cf8b9mr168093775e9.7.1773617668146;
        Sun, 15 Mar 2026 16:34:28 -0700 (PDT)
Received: from localhost.localdomain (brnt-05-b2-v4wan-169762-cust1351.vm7.cable.virginm.net. [81.101.101.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b5f6c24sm349790985e9.5.2026.03.15.16.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 16:34:27 -0700 (PDT)
From: BryanChan432 <bchimhim15@gmail.com>
To: vvvdwbvvv@gmail.com
Cc: linux-newbie@vger.kernel.org
Subject: Re: [TESTING] newbie: just testing 
Date: Sun, 15 Mar 2026 23:34:19 +0000
Message-ID: <20260315233419.18689-1-bchimhim15@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260312140951.63906-1-vvvdwbvvv@gmail.com>
References: <20260312140951.63906-1-vvvdwbvvv@gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

I am new to kernel, just trying to replying emails!!

Bryan
