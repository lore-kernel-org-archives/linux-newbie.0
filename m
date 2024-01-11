Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86119DF69
	for <linux-newbie@vger.kernel.org>; Thu, 11 Jan 2024 08:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VAaFF9vV"
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-67f91d48863so30502806d6.0
        for <linux-newbie@vger.kernel.org>; Thu, 11 Jan 2024 00:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704960211; x=1705565011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=NIJRD4l/ZsE/39M9pXVw0aknyQdn1vDzQnkRiw+AVB4=;
        b=VAaFF9vVsLgha3BZA6oZsHv3Ahc5yWIDLmRKYAIF6qZh/ZKRbxIpOtGsqmAx2IZB+P
         4hVbu46zs7YkvqTQjb56XsPlo0c5e56nC8EsVzL0OXrkij/qHwc74S/wAgknH3FImBnq
         4UGL7HfbjSMarV11oTkb5kvC9I2seT9RMkOm+81SVEFx2rNFPZO2BnGBCbLuBCAmdwXn
         L4cm/pSqYkwnUMlab15uYK4gA68yTSSQhrvnpgI16LnfuXlBIWHlPlh8jmWD3hs7NN9h
         XuN8SLhLkcVdGEqd9mTo7MB2zddhzgjKCj1PaUKKFMtblJJvF8dOOgF2GhECozEMwzc9
         Oe+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704960211; x=1705565011;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NIJRD4l/ZsE/39M9pXVw0aknyQdn1vDzQnkRiw+AVB4=;
        b=RXooYa8mTzSEC4ZAZ7gjaaAiSgvUYdpmrwRSHeIZEz55dJVwCdk9Lztvc7QYdUK0JB
         CskOKzcTXu/9VUd2dsNPCNrd27XFhtPFVOOg+WwqEcuoZdtftOKHlggFP8LM2QYL7iZd
         S2BWY1VR1hHwIpAxRE9a+3E7qYt8dlzWignUM2kTAXoQAKj2MlaVTWnsTUg5+fPG1ovD
         1gL/q2m0G7U9nWBxEDauB0/GxMfX+pP7n0KvTIzbBY/Sv9gOhtktNASXDFeB/U/9vhQ5
         KdRvgAslwm2S/FzPyRjY1YoueQvsutRVU/91IXOZIzmcGwX/9nQZtGxhLuLDfNJJ74yn
         cR+g==
X-Gm-Message-State: AOJu0Yx+CsE1YXK14PzIqh9xNWMSMFYZJm8wJ/8B/YkrhfKozNSpZb45
	csyjlfxZtrFaBFQrT/3rrjGPmDxIi5wrf6+D
X-Google-Smtp-Source: AGHT+IGL7sCEYvsu+J4FZJVyaI2XJ2Ob3ShSrfWYxBFWaB/wQOR3wYVDmn5rnv3XAH+einky+niYRg==
X-Received: by 2002:a05:6214:19e1:b0:67f:b920:f248 with SMTP id q1-20020a05621419e100b0067fb920f248mr798625qvc.120.1704960211620;
        Thu, 11 Jan 2024 00:03:31 -0800 (PST)
Received: from mythra.localnet (2603-6010-d800-0cbd-0000-0000-0000-0b76.res6.spectrum.com. [2603:6010:d800:cbd::b76])
        by smtp.gmail.com with ESMTPSA id k15-20020ad4420f000000b00680ce23bc29sm141070qvp.71.2024.01.11.00.03.31
        for <linux-newbie@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 00:03:31 -0800 (PST)
From: crange76@gmail.com
To: linux-newbie@vger.kernel.org
Subject: new to the kernel
Date: Thu, 11 Jan 2024 03:03:30 -0500
Message-ID: <7633373.EvYhyI6sBW@mythra>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hey, I went through kernelnewbies site and got everything setup. I also enjoy 
rust and would like to work in that area, but where do I start? There's no 
real boards of what is done or what plans are, or where to start. 

Thank for you your time!



