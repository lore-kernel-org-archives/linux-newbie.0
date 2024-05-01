Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1CAF9EB
	for <linux-newbie@vger.kernel.org>; Wed,  1 May 2024 20:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714596936; cv=none; b=JT9n1ENI3q09LM5Cq30ZHdWQpVSzEJNNC2YmTndbjzAX4b8YGnqhdCD6vYxsoUi23/D71xRvxUifhixSd3fYWX6XMFIsvyAJzCdjbZ0SbcVjn15l4uXeVPIFmiUPzG4vVnen2RbleJgEQdvuuuEsHoCX7WqM3Uy7dGfehuCZXXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714596936; c=relaxed/simple;
	bh=rpr/E3MJD+s3lWYPzJaCV41efkqEHXsOl0n1uN172vY=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hcvjUSU996UqpSPHCbCdL9tWNhlXns3c9/vo79ZubqSmfvc8jovGcXAlmYE1qYBkNOg6xXx3GfVv8ovxH9fvkPkUVrbREOgKqsaQM9Q9etLP7BVIeMVtjFqX3ynvtyMstsw0yrMeyQGTaUthBjBeC2UgebveBbmOVtRKqJRvjxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DBs6BkzR; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DBs6BkzR"
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6ef88ce8701so1003595a34.2
        for <linux-newbie@vger.kernel.org>; Wed, 01 May 2024 13:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714596933; x=1715201733; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Lasau0Tcy9FPh/iSdgPa1Lvd4uV0qK5o37Js0a9qAKk=;
        b=DBs6BkzRT/pAK2v1iYv67Ot8CIROFdW7kKBGBWBHNoLPC4AjhdJEY+Ucb/Za3yTdj0
         fsd0i7r0p+MfBGLPD1Un2nhi6mRCNI2Q9BviEVF2AAdzGgDhYGOTRvnNBgl3WNB/h3gd
         qOXVnUrQ6YEtwRwJ+gb/eUw7cbr16NhkON9IkyVQRlg/KXOvPV6sEsks4h0uICseckfB
         0JsKZBXggX9VFOBBFbJo/yFFH8rYMKlCIYnvosIsRWjjpMPSNPDguGNRgx9lsSqTk7VT
         czJEApAcPRjvNYvTbPlV/+ban/aNSK8j/WZ+vow1XnQMuvmsQ0phWdp9WzAWjpoxPzQU
         bXOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714596933; x=1715201733;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lasau0Tcy9FPh/iSdgPa1Lvd4uV0qK5o37Js0a9qAKk=;
        b=wZtsItGDAR4eVvARhdUuDkYToRzF/RslyzAWAzi5PNSk1Z2kv+iXPQ91w+suz4y5mX
         ONOkR3wPS6dcMUf02nkqC9rcnmFzsuY7yNfznRYCn8rzFJykjvk2GhgpT3R0GMa0Wi7e
         3hgML3GRkNJlDvBIW/kUDamE0o8q1kDFVcHQOuNW61tkQg8EdyUaEoXGVKZ7QEAcmrif
         0TUicGTmCY6oxgTFMsgSfMspHl9EQXu9UB8kk5HaHCkTkye8a0SeWJ1CDyFg1Gb3mgAT
         Zjv2IC99qOtEcX9BTsLlApKjCHf8LlexO3NpTOa27+Cyday1WIK4EsTxiEpetyJ1c6sx
         PsTA==
X-Gm-Message-State: AOJu0YwsA8EgV3N6egoZarwGqoEApBYD7KfBj/gf85VeCuOJceWIKGZd
	KZg1Os1Uq0mXxDjW10UhG/ucWCSfHY6k3Nds3kTHvfU+rXY3j/MrILQM8w==
X-Google-Smtp-Source: AGHT+IHZ0jUzhHrDPJ5EsRWs0Sdbxhd7dVk5LBEMWzqZbe7qW2BJ3wp0HERs3EgG7/iQy2jBUO7RFQ==
X-Received: by 2002:a9d:7492:0:b0:6ef:9ec1:2bf8 with SMTP id t18-20020a9d7492000000b006ef9ec12bf8mr87905otk.23.1714596933597;
        Wed, 01 May 2024 13:55:33 -0700 (PDT)
Received: from mythra.localnet ([2603:6010:d800:cbd::b76])
        by smtp.gmail.com with ESMTPSA id z8-20020ae9c108000000b0078f1bd4f7efsm11503041qki.26.2024.05.01.13.55.33
        for <linux-newbie@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 13:55:33 -0700 (PDT)
From: Carson <crange76@gmail.com>
To: linux-newbie@vger.kernel.org
Subject: What subsystem group handles hid devices?
Date: Wed, 01 May 2024 16:55:32 -0400
Message-ID: <4874429.OV4Wx5bFTl@mythra>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Hi, I'm looking to write a device driver for a gamecube controller adapter. 
However there are 0 results when i search "hid" or "input" on the mailing 
list. Thanks

http://vger.kernel.org/vger-lists.html


