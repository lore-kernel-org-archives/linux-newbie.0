Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C12715382E
	for <linux-newbie@vger.kernel.org>; Sun,  5 Jan 2025 14:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736086094; cv=none; b=prDLjvMRiugNCNPKdOY+k7h7y1t9ujkCjVaB9Jpajhz4gQjATQ2PolRTwzSZlzxjnk1am8pXUPg6z7yR7XWqKEAPbt+ySSaFqaCoAm+iA6rHNN9ujDCXbO35V7AIkhlZtDMqiUK6ikrtXLAOE9jY+9QXVfVZikDYoqaEcYQiOkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736086094; c=relaxed/simple;
	bh=bIkL3j1SUti+mxRknWXsGzjEHfZ++LfAOrCAj6OvBfk=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=Ekw5ia6kh45TcJbtf7OSofDrNnurMz1UjwDgySMBEDoBWg6o9fweSRVXGNeBoos+xlXjOh0RjAI1UUojZ/wq6xa2j0QGXWxYIbJWvz/juMv5exL6RoYWwgYennp9gl8c3psWaqggJ6/fRbG3X0bCA/F6Y2L1IRXciq5AEbDOQw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dOTcr8yh; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dOTcr8yh"
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2efded08c79so15219677a91.0
        for <linux-newbie@vger.kernel.org>; Sun, 05 Jan 2025 06:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736086092; x=1736690892; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bIkL3j1SUti+mxRknWXsGzjEHfZ++LfAOrCAj6OvBfk=;
        b=dOTcr8yhBdo2AZhKFD++unmQUr8e2k4bW54qslNK4FT5m0cjF6s5oj/B1f18v9Z30g
         1psj9QoIZ62U70DtpVrFCSnHwn5s1X+Qech/M1rkzz7qMB9AaOGUpAQXQW/GddthnBhx
         mRbRnPuRSFVu1Gf/LxPAZFpU2BixZfbupZUa15sZXNXb2ZaOkFFuqP8bHgnWFbzwn1vK
         TU5JR1+4T5ogqmPej5moIidIHjvAuJG/W/Oq3EP7GEOyBqyZYHKEhDKGtEbPwU5KBPZa
         oMpxcWmcyUiWwjmT+SCl2yYvhEKTvQLsks09OzmbPgTWeJ5PSD1nGfyJCdleI57rl8tQ
         MYFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736086092; x=1736690892;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bIkL3j1SUti+mxRknWXsGzjEHfZ++LfAOrCAj6OvBfk=;
        b=bzwWOcwyOrG89kSnKBfdu7418I0TtsOa3PLLcxaWpn1pIeJD+6lC5P06XvnU+OyIOG
         6TgMyRAR1HVkS/vilHXHZYaAh4MpjicS30PMJzr6lt/wh61Ab610ikKuMM97S3027Dfj
         gZdLoO8q0ZQ4FbBmXJdSml1A2NuaYaxf7g8WrrYY/wfvkF8zTxtw1uDx4hiejMsqYRnN
         sB0N6MdyF++tSRSvIGtGy9QH8P9d02+Jape4Byb2BrCrZ7Nrte8QaTMEnhSvRb0Bg7f3
         2pfS8At/tbLqtqXLAuov8ykdSurHJGFGP7JgKLpNDse2O6nEy+0OuhnBG8Lm7JKLZ+cA
         I4Hw==
X-Gm-Message-State: AOJu0YwXBb9yeasg/R+dMg/Zq3wMiaNCJNT16LuWg9dGyyCIi44wf3yx
	/1qWotWdewBM9ATrCyYyopa6QeHlv4TPT1hTnsb9TqRkWQdUxkAy5I7HwgRbByETswREjfs3mkJ
	e2J2W3GrQFvH4Uf5G0jmd90y8np1O/vbt4QQ=
X-Gm-Gg: ASbGncvceT1pZqVM6i7PtSW1FoHiu+wsoJ4ioGHirrrpMT5fIZ4zKYqGic8vaUFQbBc
	yBc6tXVuLx16HQLVIm4jd2gYNbqAvp5YUIlYgTg==
X-Google-Smtp-Source: AGHT+IHrAKMQKb1OlUaPY7YekMmmvWV8taiNnX5Gz0PRcj8xXa9SAYwVuTP+egDEaw5CtF9Rbe+hW4SK3+cBBx7KDCY=
X-Received: by 2002:a17:90b:53c8:b0:2ee:c2df:5d30 with SMTP id
 98e67ed59e1d1-2f452eb11e2mr52621771a91.26.1736086091666; Sun, 05 Jan 2025
 06:08:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: zh qi <qizhqtq@gmail.com>
Date: Sun, 5 Jan 2025 22:08:01 +0800
Message-ID: <CAAODV9=+xjCKpFNYnCTJJvLt1xrj-GXTMrYWkY083uzueSnr_A@mail.gmail.com>
Subject: 
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

subscribe
