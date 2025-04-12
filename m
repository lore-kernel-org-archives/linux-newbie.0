Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27161891A9
	for <linux-newbie@vger.kernel.org>; Sat, 12 Apr 2025 08:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744445498; cv=none; b=L2zx6QF8wmoChN9sv7W9IS8TmFWkl218XGpFGMyFVvoIrFrsxsXbQxSuWcE+9AssWNOZ7D60ebKKmqD4/gL8Z+Szso4e8nTk1Pfasrc6pDcpJGk8ve1xW6PIYXpIB/X486wLHiSqg+FSFDCl98z2oXp9vj12sRjRopWg061nASs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744445498; c=relaxed/simple;
	bh=xYuUu6cJ/L4eZmFeGwKzRvnf91s/ZCCrgvRFs2egOsk=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=np4rdQvFCIzP/fJGUuMtn2kZS+frAUIOcxpST21kotnRUH+8KNFMbflzZHHMa7t0B8q1OTHbnck7iSjhqE1pIMROhMIoewqpCFBaJ5AlhkTyBbLzOGI436B0rY3lHEocH1K9qUhytRcWZ1GV25SVJG0DAYTNDfHCQqIFHRu9Kgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P7a2hpqW; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P7a2hpqW"
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ac289147833so532404266b.2
        for <linux-newbie@vger.kernel.org>; Sat, 12 Apr 2025 01:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744445494; x=1745050294; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=h1j/zn2LOeaOczthU3caLP94zuz790iU5P5wwXJ+6tE=;
        b=P7a2hpqWzKHJ3D3i4iAoNI73dwsPxqPzXIelJQATDmbo7uluyE+dgQKPfh7DQSAM5w
         VlyFkxir02UN6e466l1Z9fN2owuSIm1+UgFh8SpQSBCfngvPO6YMqbK6RbVmgvn4b+Pq
         vDmrysJXU+m37MaDkcfe6vEWODDib1KGgQ7KDpX99DpsIMgccqD0RnqCxnbcALk/7rRe
         WPRiUEjecWe39xJWwCrIaqnUtz1mgXXgtMhKljTjr07+8+piH6VG3BWnD6ZwQiCE1QNf
         XgMFja7sIezKEUSU4bxb118vKmw47Y+Zfdhw/9MWJhA6TJrz/U2TQ0PZCa4uh02eEIef
         8Zvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744445494; x=1745050294;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h1j/zn2LOeaOczthU3caLP94zuz790iU5P5wwXJ+6tE=;
        b=ADOGKkiAe9fG/9QJJpHXhJq7Lm4C/EVWZpuVbTAv48x8EH6pDk+cjJsVO8haUUm854
         oNIa0JGmqRtqrqyiIsOtWCtKc/T6jA2+rRmoyWxBRbb01S3I8U/yL2dOJ3wzhSvfuD7i
         dXmWfdFX6o8sxcUVOh7S///F7/iVNneW3QKhMQhcwWoLCUG/wQlucvWNbdiICXL+wQ3m
         oJFA0eJTPrTuh5V87Fcdzbwslny4qwdKiiAiGsRmhHIooZ/pH4mGtCWyC5ZdSrxjlSSo
         9VCvDkq4Ls/T47idKxFTtr/PLI0rl96V0CnmQ4kldGMUAoHyS0IM6qlz8BhdSTfBoNOR
         BZzQ==
X-Gm-Message-State: AOJu0YzE2GYShRXPkfP9W0zDEc+mROqMyjrPp9J01PsFWpeU4HxjbOTR
	WgLY5+ilcgst1pvqnwZzXgo9YR1cZChU27PG1dkZiKoc9JLpaAHkpkMM9IRcmLoYpw2SB/v3gpr
	/76Kh+OGfdg4Ls5X/nENCMz69egHXW6RiKY0=
X-Gm-Gg: ASbGncvizLFQ2nfAC2tTMtieBsNUjTncxPUsqyeUOpxtf9JOFuUgtZPD7eqVGK95W8Z
	gHI9dwysISr0Mpe9XGDoWPl6gToxhSAM6sxWUN2b3Rwfi3i8ndbnW8F/AsA/fY6vPkfP2rGSkBJ
	M07Juaz5I9fZzvSmlqBTYvyNeip35vDRXNn1iu9dKhcedSn8rM8kc=
X-Google-Smtp-Source: AGHT+IG+atu5aHpXjyPuWF73z9HyINdG+E8mqy/fc9wpDOOXa3uGk+z3TE39fmN/A5pHXirF/enTPB3tC9Hq3mJ8WcA=
X-Received: by 2002:a17:907:70d:b0:aca:c7c6:b218 with SMTP id
 a640c23a62f3a-acad3456e8bmr525034966b.1.1744445494304; Sat, 12 Apr 2025
 01:11:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Laurent Lyaudet <laurent.lyaudet@gmail.com>
Date: Sat, 12 Apr 2025 10:11:23 +0200
X-Gm-Features: ATxdqUEoOvtBLYgQy1q9dNjMEf9aD1WIges46xKTf2JKx035ydHion9KtChxZsk
Message-ID: <CAB1LBmsr0AKUAN+gChbLCWB36Dt81F3vtMEnGfK6e9oxYHL7-w@mail.gmail.com>
Subject: Where can I ask increases to PATH_MAX and NAME_MAX, please ?
To: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm not a total newbie.
I need to ask if it would be possible (in Linux 7.0?)
to increase PATH_MAX and NAME_MAX.
I will not detail my arguments here.
It would be quite lengthy.
This email to linux-newbie@vger.kernel.org
is just to know where I should ask it.
I looked on https://lore.kernel.org/
and selected the following candidates lists:
lkml@vger.kernel.org
linux-fsdevel@vger.kernel.org
linux-next@vger.kernel.org
linux-arch@vger.kernel.org

I hope you can help me exclude some of these 4 lists
where my request would be inappropriate,
and avoid making too useless noise there.

Thanks in advance for your help, best regards,
     Laurent Lyaudet
