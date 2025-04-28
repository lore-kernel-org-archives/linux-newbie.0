Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4C128DF09
	for <linux-newbie@vger.kernel.org>; Mon, 28 Apr 2025 19:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745868488; cv=none; b=KskaXClpAKvRjLN4D+GtmnaYyCM0vmju6HyWmUrBFXMTNToMKRx1xZobuGL4G0QrLa+eFPAtnxRnMahIYZ5l1ewiLFV2sLyIGvf23JyTlqg3lzqtINqHdzzPOxWpuVE4SBX+B32m9EfRwDAoIiS0pNEQODrkCeDbPwXQkA7suO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745868488; c=relaxed/simple;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=prWcEhsd2Efx6MYhhu54sTOBNZ62GZ3n9t7izAg1IQwfwQ2R6dkY1xTK0tb+ErYzktX3F3jo/c4O1vnKECw7q3HOOMrAo2GkK0MZy0QB/QciFwKFm/xHW0piPaNRYil/VW7YId1xL9zLmLCoLy5s806PIT/CiTi+Ae7bOOA6Vuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nku18qj5; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nku18qj5"
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6ff1e375a47so54211827b3.1
        for <linux-newbie@vger.kernel.org>; Mon, 28 Apr 2025 12:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745868486; x=1746473286; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=Nku18qj578VYQvzyV2/ZkaIP/VdWuwiV9DxioUEfSbyAHOCqQlxupiMjNxGsjFALVg
         yZ2s8MWDHgG09I/uACsyf429Dmu9Qk3e+KW2vFFxMyzTV6a2ynkbIaduJNGO7FqRjRv2
         oRQnFH2xx2C20lXhj75M6ukZibD1biZr6xyzDJTrlkAP1u/TycFQHrVYtJlaM5ogHtr4
         c6BviExtqRsz2LGkVgqBkphkZ4rrjPEk49X0xWLrWuMBXfNWl9VjlUFoW3aCKqe9X7gg
         7P6Oiz2IExyjNYvPaPd5QtbJXLL0kxPCmB6mbmZRCi+cEF86dsssD+x8bBwZu3/xkuqS
         hHpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745868486; x=1746473286;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=S41idzZqyXztcZ3qsH1lO5IV19g48yXMlvqqB2Y7qURaHKs1z6v6KMmNUoEGHjUbPE
         5Gy8BoRghe+k1XIWb1fQn+oKHJBG8owHPvRfod8jv+MFcL6IfAHDju9Ps3PNcV+rKKvS
         +SyA0a3gPFfzll6VlfZgz/7eUSEQii9ZfQsQ8UKOHWGN34rJ1xqPkv+j4XIUlaAhtrrX
         VY4GvfDmRZP+5UuJ/KC8Do4mONJZyQVWbAqXeYZXXvI7TgDhKBJhGCe65tazSmwgcztm
         GVXvFFxCdRSBVBN7L3neTRUUkV/m9/2QooUICyA9fHm9zYZpCLAv8xyfg3xxwDI90gU0
         IZBA==
X-Gm-Message-State: AOJu0Yx/skW6vaBqzGoLx2x+A3zBwVyaHEaT2zt9QFjSvfAtMgo0d9Pw
	sEQUmrrL4TE+2eFW4Fib7FygC7heQxKAY4luvO5AwsR4pM1/3fNqBuW7s5OfxKM2b71NK05Bk+c
	0/Gjdc8sSbpYvt5HVBs0QSh30XC6za4U7
X-Gm-Gg: ASbGncvc6okFGa4svgIv+vYKej7BGVppUQEBOCTTAdwRybe4E7SBbf0iWcZw0cBM4VW
	B6W24vzYuNBDU4oOudF0YN6RwJ/Fz3WDAKEElBqJYn5L44PQA9XxtJ+NEu4fLTClgXBjDXSZHWa
	wyO8GW8hn4A4z5A80zXk4VgR713p+aRQ==
X-Google-Smtp-Source: AGHT+IHZxLhId+BIHz/gdyeG+/DlfyVQZU9kriLn0k5ULxLo71Sp70+rzkN278FwjdDDPmHnCgizNFrkFUIMdvyYy3I=
X-Received: by 2002:a05:690c:6e07:b0:6fd:6589:7957 with SMTP id
 00721157ae682-7085f253467mr150966967b3.32.1745868485808; Mon, 28 Apr 2025
 12:28:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Zhou Jialu <joezhou883@gmail.com>
Date: Mon, 28 Apr 2025 20:27:54 +0100
X-Gm-Features: ATxdqUG4Q-ZOkxOfYMtb3xvDtKWkky4UJpGkBVHmAsN029DOm9r9i6lssorsvAs
Message-ID: <CAN5toS+EehLM-90cgC6Cn+tbHnSei-xYxhnT55jaVG1DtprudQ@mail.gmail.com>
Subject: subscribe
To: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"


