Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5396A33B
	for <linux-newbie@vger.kernel.org>; Fri, 30 Jan 2026 00:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769732102; cv=pass; b=L6XGQm49Sva2yDE5Iw7T0Z7OL+RMT++WNkdpg1DfPUnBhBf1c3A6pVY/sVuMG4AFn/wVYvfEPI6i3zr9jxHGxqJTQTcIPxcz/1jXZlf0YIvaKkl1IozBXt8dRWbOzsp7cNSxBRsux3bvmtF/9CN01FgkSuqk9oPhUjQ8/6T7fZk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769732102; c=relaxed/simple;
	bh=XHfy5Q9btkyIBwcl7nVFiLIKOMia9X04ow9VDbz6jFg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dIBCHiYp78rmpH0Fm5v57L76IbDTtSG5UkNpvxBAbL9mZW26LYWCL2Rv1wI9BpWL0ZBj7j/d/jV+HwS0avIvxihHxtUlGhyE9eaMxmNojQGfZayqUBbmHCe5O31X0F/FPR1TrwKQa7XRJhSrMKjzUgmSMZlopHxehrHp7po4YjE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AoInojMq; arc=pass smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AoInojMq"
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7cfca52ac2dso999162a34.0
        for <linux-newbie@vger.kernel.org>; Thu, 29 Jan 2026 16:15:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769732099; cv=none;
        d=google.com; s=arc-20240605;
        b=exaDDi9q6XHZR+1DguQkUBPqZEZiqVzbQitQ5ph/4290egDPGLFtxaNix9Jco4YkyF
         J6RWLCJHt1s8W4ioAUBV9pnVCL+HJbiwVtNDB3m+lxStbs3K1mJEPY2+CFFC+pKelXF+
         oWNEe2B9DOo9PJdO6qDGFZOerd9Tkd80tcEgUN1B8lgjy40FChBkfjvD4klG5kGW2ms2
         9VYa+e8SPCogqnP1NG8+oKd1OtoeWqkQPrVze/pdMmokfSGZ/enU9MkZcd1PJgkihmZ2
         8PL5AgxrNk/BlELg/KhjcGpcuS8X2tZqYHiMThTlBzWr38TXJ1hCsQgKO0e0digYAhtZ
         EpSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XHfy5Q9btkyIBwcl7nVFiLIKOMia9X04ow9VDbz6jFg=;
        fh=7XopFJj5ddIpH3y5XjxK6+vCpZuTDofLRs6ZMQTOb28=;
        b=AOddwdm9VRysJ0Ub+omNnZER0jBbLSc4ICXJmM3Y1zR9WvVGiAFgHideglfWLboLfU
         3aWiGloRUhvupZCu38ikdFk28DkQ9iG1elmKgdYZJf+y11fXElzg3fxCM1biSfR1GMAz
         wcFdaNDHQrkQ2R6+ThPhC6OpwTCKxCTQHlpbVcpKwvlhxkdKh+blyJsiki+yUN7LJ9fW
         /ixUk9dkB7mP8Mjnh3NqIUmWvbaLiJCM+J/0Gg9rDEh8w4wH+iSepeqqpR86PtL1TNRT
         L1Z/KHFbD4esZQDycbDNeNyGOoMk3UHkZieuY3eC1/HsGZ1rTLLrZIfLQD2k99WWfSQI
         yDDw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769732099; x=1770336899; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XHfy5Q9btkyIBwcl7nVFiLIKOMia9X04ow9VDbz6jFg=;
        b=AoInojMqE+nfum7if+accuXhMVxYz6Mr3Bgl4iodAKy7yOSdXPeN1wN86iN2wTtkEN
         39pgvmpeo3PHXVfWTRX2Hha0v7RXorjMTZPO8HL6WktfV+p5UmhoQpcyCeYbZIEuVZJd
         BzQGGYDBOkT6Jy8Mg7psGgX+OXwjtJ6GLgWeXGzDYPe/6CVXFILqUjIyEbg/q4alKgY8
         z9IjMsk/ed9MGGbwUepGS6OfG7gd+cCbD1boxq6gbudwshJV5eSYr07ENpbDiySIsXwb
         fqqjqEeXdBz+TrfSbDH8eFm6y3A1CVtk1K9yngk6FxDIBQtoiauK9wLKttekBgVWm4wf
         F90Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769732099; x=1770336899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XHfy5Q9btkyIBwcl7nVFiLIKOMia9X04ow9VDbz6jFg=;
        b=Qpqh0V9p9Au9J4fxY10/719hNpKNZmL1Kvef/Uh0SZOZ4jy5dXhr0Wy5MyqbtRv7ee
         rCMUoAKlUFsStmU/SGURr6/0cevGUFTrKnHGouHuHrPVtDshMMNYDlM09Yigx+gjtn3+
         tg5W7jTPLNJF1eLhN+g0VNte9YfjfD/IScNlYCiPHYRLtj9kZ1D3aN9DjhF0n9IoJHhU
         ILjtLDAlDmnirGhFNS3BBHkA/vXOeH/vfkirxH5IaG5DYEXAKHeLN20xqM4iJjxBxku2
         jdA2jsvqHbQk3eWanyCEckgYiRG40vjG75ImwcYfnl5Ooo+ZnnJ5znMWpqjHVi0yBZZe
         JUPw==
X-Gm-Message-State: AOJu0YxRqSuB3sdmLAkfRpLKFOfIRJRR/njnW9fcFjjGTs4eBThiMro+
	idCe6PaG+GFHtyJBHewS9Ce2cFqy/mQIpuojTV3RnDowTg4yoRHsoKGku0xIhDMAZgJ1St7/Gdq
	m1mvvDx3Bs+On+OM2eJipW/YqHeVyYkQ=
X-Gm-Gg: AZuq6aI0Bs5b2XGkkRRHZmurOHsfcVP9SGt60ePIi7dkuL0SAHlvWZ/ohkX+kIb+I4F
	g/EaorYrV4YWqz3H1VhEkkFsJbDxNAGQe/tDh9X1gvEG3ELNYU8KxyYP+HmOPm47G7aR4fHO6HJ
	0wkgyxRB+UA3kLJz+amNrt2OSXiMYRybAjGoHcBrvfMXgapJ6saBkYgJ1p8PwDZOisSXyyR16qA
	Oiw/7S9pC3HgSEPcekYKjK2x/n+XHZCZguNvh2EXtKVz4VNbliOLEUXiSN8XtCzrTACjnwG
X-Received: by 2002:a05:6830:6813:b0:7c7:6626:b595 with SMTP id
 46e09a7af769-7d1a5244dc3mr849526a34.3.1769732099494; Thu, 29 Jan 2026
 16:14:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CACjYBvjCehhixijXDqdrY7CHCJgUUKuVdeC8DCFmzRRKOG6ZFw@mail.gmail.com>
In-Reply-To: <CACjYBvjCehhixijXDqdrY7CHCJgUUKuVdeC8DCFmzRRKOG6ZFw@mail.gmail.com>
From: Nick Huang <sef1548@gmail.com>
Date: Fri, 30 Jan 2026 08:14:48 +0800
X-Gm-Features: AZwV_Qj1f5YHgLp7hshNJslSz2LL7Po5yblwwzOKqouyaa8EBg36PJ4OsM1zB_4
Message-ID: <CABZAGRG7rQibBM48cH+X3tn7n_RkcrbxK-1S7Ca2NGNRooj74g@mail.gmail.com>
Subject: Re: Seeking beginner friendly kernel janitor tasks
To: Kalyani patra <kalyanipatra2003@gmail.com>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Kalyani patra <kalyanipatra2003@gmail.com> =E6=96=BC 2026=E5=B9=B41=E6=9C=
=8830=E6=97=A5=E9=80=B1=E4=BA=94 =E4=B8=8A=E5=8D=881:40=E5=AF=AB=E9=81=93=
=EF=BC=9A
>
> Hello,
> I recently started learning Linux kernel development and would like to
> contribute for the first time. I wanted to ask if there are any
> beginner-friendly tasks, janitor issues, or recommended places where
> junior/new contributors can find suitable work.
> I apologize if this question has been asked before.
> Thank you for your time and guidance.
> Best regards,
> Kalyani Patra
>
Hi Kayani patra

Here are a few recommendations on where you can find beginner-friendly
tasks and how to start engaging with the community:

1. Focus on Testing Frameworks
A fantastic way to understand how the kernel works while making a
meaningful impact is to look into testing. These areas often have a
lower barrier to entry and help you learn the internal APIs:

tools/testing/selftests: This directory contains tests that verify
kernel functionality from user-space. Improving or adding coverage
here is a great way to start.

KUnit: This is the kernel's unit testing framework. You can look for
drivers or subsystems that lack unit tests and try to implement basic
ones.

2. Monitor Subsystem Mailing Lists
Since the kernel is massive, it's best to narrow your focus. I
recommend subscribing to the mailing lists of subsystems you find
interesting and watching the daily patches and discussions. For
example:

linux-mm: For memory management.
kvm: For virtualization.


--=20
Regards,
Nick Huang
