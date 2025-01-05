Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83E43595C
	for <linux-newbie@vger.kernel.org>; Sun,  5 Jan 2025 14:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736085854; cv=none; b=KFb42Gc7cYMn+32Zd7MkcKpXpWbyb95cw6hiBCbxnyDONowKmGP/g/QYKT2p7w8LIPKIpWWZiAQNu58Da560b8xo2z7XqdcF8MRPddbNA6TJw3SWYCr9yTh+4fNya6PlRaUIwe/YhtYutQEZP4AMn05Qbo+WNRp6olqoM/i59jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736085854; c=relaxed/simple;
	bh=bIkL3j1SUti+mxRknWXsGzjEHfZ++LfAOrCAj6OvBfk=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=sxmV6tIpb3wlcrnUbPxWvdzJywq4SIecpVMU/zDFuO0YTf3Ft/kRrrsVkypmevq0nETIRKEGs7Sh7eblbbGHCqTxHXj/y71QFBOs3jtMHdxo/XyukdnC0a63kqWUs5zvviWPri8hjo1iBHwLCTH5AVfgYSy9S+XzOmzqLx5TiLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L7rcxSYU; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L7rcxSYU"
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2ef87d24c2dso15640267a91.1
        for <linux-newbie@vger.kernel.org>; Sun, 05 Jan 2025 06:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736085852; x=1736690652; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bIkL3j1SUti+mxRknWXsGzjEHfZ++LfAOrCAj6OvBfk=;
        b=L7rcxSYUyF5UcY6gSOq0O+hxeU/TQCewxbIx6kQbr4BpoibYqYjNnyhEezF80ffXlH
         Ra9/wenm7aOYYcz+ESZ8ijNIzczSM8zS0Km0L4bsZtqmBjYmj3lLcaT4r7uKHFyD/aqe
         NUkwwl2/aOknz59jSScIMt4lqL3XhXlrtrKILwomLLQJu1KVZjS0uyvVGSdRG3k/J5fO
         pL7G/JtXMUwyh59w/ZqmFRA7P8rB4fSpoGYpqSRIU820eZkEb1DXpyeU0vx/XeJzTDLa
         NemST+s4cOm1PUsbO7nKUdMwQfWr0Y9Dcl4I0AXPGJ4AaEJ/eSwY35F2yZgpjvuaBEoD
         SKpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736085852; x=1736690652;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bIkL3j1SUti+mxRknWXsGzjEHfZ++LfAOrCAj6OvBfk=;
        b=I3puQbO9UP3Da7VXQVSVAf08BKYBdIfMd0Im1Zxz9tSfwSo6s6uz+SfXYmHN6uiuIJ
         HyHONbsbbZDbKhB10mUYB/cwOmgGIKSsM7Ow5CH01to3oKif4/aK65sd+l6Icw0iHU3q
         ba/ionEp3gSkQ5wCh1HMKhNGOtnfcjqdqNF+qhvLmjbP16MHh3aNX7ZJtRD05ZoAe6ML
         kliB8BWSIeVIWxiyZInnBzSF2GUlz7T98oRm9lI1sNHRzLnqAJy+QlXuvMxcju+hdosC
         1bxu0pHCK5aY00aa2mM3thZsHKZvO74nNBCWOdtH04Clt0W/LEHkGWZJg+e+dx5q9N3v
         STng==
X-Gm-Message-State: AOJu0YxOYtU7k32q9DXiwVNjbUKE+rvNxANrJP50rG56xn33dTTC5gzN
	lMMqal1XK8qd71PFaQQLQZM9dwfZJeyA42aiB5DX5tqrR26cYr5YgZcL96Pmka7uYW4TZmd3ib6
	hjy35CaH/V25BnZc3cU6T+yR4Lh0uYBPfT0A=
X-Gm-Gg: ASbGncumHZbIzYozR1+0xiie9PMHuIx2IxyZ3MhMdQTKJFHN+2SmMt1jWHtLGO1Tp5e
	uK4zpZqL0/EGAHhQLevmeLLFlIPhc8fkXi4jyvw==
X-Google-Smtp-Source: AGHT+IHABmAvqok+hTL6PN6EgJG0UKztU+DkGHOgIXquQpMqedSBx2wH+VdnFxUw4mRZqiowZHoqPuwKDw+nCfTYytk=
X-Received: by 2002:a17:90b:5347:b0:2ee:3fa7:ef4d with SMTP id
 98e67ed59e1d1-2f452ec37bamr81987804a91.24.1736085851940; Sun, 05 Jan 2025
 06:04:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: zh qi <qizhqtq@gmail.com>
Date: Sun, 5 Jan 2025 22:04:01 +0800
Message-ID: <CAAODV9mcORYYfA--5XXz8u7AwRY7R9DNLb+1do=g7ZbJ8j-36w@mail.gmail.com>
Subject: subscribe
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

subscribe
