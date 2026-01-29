Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ADFC287247
	for <linux-newbie@vger.kernel.org>; Thu, 29 Jan 2026 17:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769708399; cv=pass; b=crxI+87GqR69+npewFuYVWbuVh3IRXTPUxElEondIlZmcZ+72k6rHxp4dHJRTZ6+GlLKJ52NPpmy3RR3vBXhOLx1xqEqRvkqLGWQYNE5qfZ1r/eVvgxaFcCNzIjN9oE+cxu2TU9+iMxna+BoOfCre5YHouOSvti8AbKD/fFXH3w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769708399; c=relaxed/simple;
	bh=KV93W28ol98LgBqYsRUx8vs5TgoTJI3x2nhsGqfdI0Q=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=F+gebNVH7xbz3hpLvFbkrXwLMHrqfByqi+cD3wXepwqp9dQcPqqPYeHSOs4h2S1pWkkC5RfZ1FmnPCrS6T5OnU7ZLoe9XJmAentiMy8SyIwLArIVeevuK7Htfnq1OJEFbUHorypIfi+BVzvq6fhQujS4RKsMCZgVIAZobX0hrKw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YJ/SVRiu; arc=pass smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YJ/SVRiu"
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-430f2ee2f00so791671f8f.3
        for <linux-newbie@vger.kernel.org>; Thu, 29 Jan 2026 09:39:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769708396; cv=none;
        d=google.com; s=arc-20240605;
        b=Z9J6wQl1DPpfEKiNHq88kVhcdUB1YOO9Ji1hCqKTsDDkjAT2WI67N4eV3m+WhJXPmf
         rB4/VQHXajB/sa5p5p9cqvBO7h6m+AIFvGg0m6vzbzI9nx2z5H2bW9FENGZ3AX7M+1SA
         tJkroKWi6DstEG89QTqCStR6APX5yymaePKGBgu9TCQLpRFMDjEYR2cg/B7I5SDw8308
         V5/ouPx7D/jAYj3ZfJbt4Gn6rDq8aIoJohbVz7l1DnU+MNZAgfChYAn2yyRhZBb7TPBs
         +P4hcdo7KbEqJkmCuxy9gKP6m/K/QbPc/s2CpGq/Bvwan4b0e0dgWnlz1Z5VvJRsCQUC
         wqrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=KV93W28ol98LgBqYsRUx8vs5TgoTJI3x2nhsGqfdI0Q=;
        fh=u3dlZKQwpJSd+zcmuj1rJNhgAJ1zUJwhQmSUmIdaVPQ=;
        b=XwtOluJmdJH/gvcqU21CPe1+9RACKZzFANNvqflLxSSDrhoGPvVZFQHIyD3RtCQtDu
         hVJpS4JY5w/DX5KhWcREYuH+t8n7EC2hEQaEkWwqjB6glrNwHJjFpRPdGpZ9hw8Fu0Sk
         8D6lT89Lk1Px7ZelyBFBFR3tj4U2wbwkmBwDAUYQOXMv2sqR3XVFJu8Zrc8dAHrPoOPU
         sx8JwdOp+pX6uuhsT5Q5zO3xKP8es4WDqLcB6cvrqODrce2clLr2E99zmuOKBDfwHy+T
         3QHXl4mqBkzTE5ehyp7K9F1USixE/YJH9vzVsn054yyLXGRR8EN2tS2LoYewB45/IbOZ
         e3PQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769708396; x=1770313196; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KV93W28ol98LgBqYsRUx8vs5TgoTJI3x2nhsGqfdI0Q=;
        b=YJ/SVRiuZalPwgHfZbEz4NP3wCT8J7y9ru6KdmRlQRCk/O99QEzqkD5fv6Ci/A229V
         GAlU/Qo6RaR6Pk61cJ/mfPlg+GZX2FWgVq1YPOVlWrUSevLbRDMb/Us/xMWagGgpe1VM
         zmEdwOVnOp+Ftp1CLVWaCOF5Ablp/o7153qgb6FQzkicg9+bS9j9tds9ubrZhKfxCo64
         uWme/sNW6EHaJyX3E9MvLSYuhddX5Z2+XrwQAabTXchLq68YcuTsnqLYSZYS5EMazjsO
         iEr3E6DIxOeSYHKwyY6OlkeanpweBuNtEDv5TerCfMJPryIk+E/2lzfaN0eL2ePDZfmi
         LOuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769708396; x=1770313196;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KV93W28ol98LgBqYsRUx8vs5TgoTJI3x2nhsGqfdI0Q=;
        b=gzmh2zmzIYNDGjTtKwFzPlNQxSk2Ee+x1JBSm/nQddTdSQQ3AeeQKHKksQBhVKsrN1
         WlhTejQdDRr5yFhBKn9U+tvaOY47+HGEQbh96I8FE8qXO1bn87lVKquvwjL3pq3s/GAi
         sAGLEfnZkpKLuPNXAhuh1MRA8sQOicSIGEFKQUW8sdrR8VW0J/aHtPmN3Diy6jH6NeIB
         JMgiBHixonunR8nlEFEN4GJIah6ab2C/6R58WMhOgtT6q7jUxGOOiNr42p88P3HdPhQW
         PQsWOKIIjicdBVs5AvFi2psw6OSl2Fd7bk1bLhLBs5ZmIuHB316N4V/gM5cccIqHuVCb
         sT4g==
X-Gm-Message-State: AOJu0YzuAujF1cs8dN8dKJ5Szfh5yoHLW0/NJnpO0D7uzOkjkQisFKxX
	+PQaHsFjHXQEd+KvNNiiBjKm1VybVGtraVBvAX9Run3UTmnR+QHGnlkRlAXeF1FCuoCB0SF4B3d
	xp7KzXxXQkst+LmpD+NPkBS18vW+NYCNYj/dy9vc=
X-Gm-Gg: AZuq6aKNt+IwlZ4I7Rqx1lo8/L/vk5S4SuEKY08qZ/2JbskL3q9V5IKdZ5U+CiiM8Ck
	H3zXxSq9po/NpTgMSkLyeWt8MOimv6syQ3gKSpH0JnanGMWGO6Qi9HBcWRMFKlxztF7tnyhbJsQ
	0O05KO7vPFPqbPn9Xeh3pvM4UUvL480qsrKbX5x4SOJGnk+Lfs1I15yWvX4HNuOhwI1Juv0pSFk
	M31ZUJiqWc4w8BBMB/Uft6Q/uo8X1naGd3lpEzF82jRRnLrEGBbromhKIPTMqnLBBuUs/MFWDfe
	dQsA+rjnbDFPvmHQGl7uGkrS/ceZGw==
X-Received: by 2002:a05:6000:4026:b0:432:586f:2a9d with SMTP id
 ffacd0b85a97d-435f3aaa407mr614376f8f.32.1769708395553; Thu, 29 Jan 2026
 09:39:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Kalyani patra <kalyanipatra2003@gmail.com>
Date: Thu, 29 Jan 2026 23:09:44 +0530
X-Gm-Features: AZwV_Qjz97xsYIq3-tjYhM1jJIS5bOIhEw5Zg47e_Zu65HLia03Po6AnK2fu7x4
Message-ID: <CACjYBvjCehhixijXDqdrY7CHCJgUUKuVdeC8DCFmzRRKOG6ZFw@mail.gmail.com>
Subject: Seeking beginner friendly kernel janitor tasks
To: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hello,
I recently started learning Linux kernel development and would like to
contribute for the first time. I wanted to ask if there are any
beginner-friendly tasks, janitor issues, or recommended places where
junior/new contributors can find suitable work.
I apologize if this question has been asked before.
Thank you for your time and guidance.
Best regards,
Kalyani Patra
