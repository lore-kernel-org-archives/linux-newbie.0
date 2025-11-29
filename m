Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D532B79CF
	for <linux-newbie@vger.kernel.org>; Sat, 29 Nov 2025 22:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764455125; cv=none; b=CEHOyabtGJk/m3qlV3/NKoiiNwCo/K7S7yzohQiUJavtKViRTueyzVGG7t6ctdyYV1gkgLvs0qyHOclf0A5x/5wWdQV0O6MspN1da53JZa+qsEJygyXwP/Ios9LUxoDzWV7qlZqAhBrH4sMAZZj1Sz16oIGy8i+frtulnlrQAWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764455125; c=relaxed/simple;
	bh=y2KnSrlghJ85uFpSCCa64yXO8DWrz3iIafPn0sGBP/E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mrmdxK7lNzJAjkmkb4540gai6PCCvKLr+OsLEkegPwdlzVJ5pWcX/n/CY9AFHuxtZsnfravPo+vOq4qTZGCZ0+R/BNoK0xxZTUVGAiSjjnWi6eU1qhUaERPDMgeVJ8TUsSU0DpG0fGok6hx15Il9jV0cF7z+kgxuSPIX5hZnwa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KTwBQS+/; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KTwBQS+/"
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-3e3dac349easo1691103fac.2
        for <linux-newbie@vger.kernel.org>; Sat, 29 Nov 2025 14:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764455123; x=1765059923; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cQYmzKB/xj5p08EBjmo3pZiqsZqB3v76/kB9usoX2UE=;
        b=KTwBQS+/FqO59Y1Dwo35oX5RNqzhZIkafgb8QaC/HBYVeM/JInYlNbP9ms9FGx4Koz
         /YprkAJjzu1jUmNoImpMG4BfrJULFUiiG66WkIA2KjtEYiPcaI+pMerbuhZF7Lq4qw5A
         k2Ge1j456HsU78V+xXlLVc9qWO/7L73rlUdTaRSU+KkWdxEKJjM7LrCpg7BfdRAm4aPj
         5R9ydT7u05ZdHBGziNxl6BJPuu4rTbeCS/iqrI/Dfy+KizLdngLD6j2PCBkCvtqQiAoR
         de1tEaH4Z5yCJNgA89EQsIE9/qGqIANCt6xEK6JLv17IoZIgKXhEhP/iY5veEZ/vYGyj
         p/hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764455123; x=1765059923;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cQYmzKB/xj5p08EBjmo3pZiqsZqB3v76/kB9usoX2UE=;
        b=THojugZDgZmwwkAIvuXriLqq4siBbDaYQFsEeKqm0m7dYte5YuGh+2/cWC4p2KE7ka
         OROV2c4mmUq7v1LlAoazYeSDKo+tsj6qSxzJdHaL1v9zW5va4ItIHexMseBjTN8RvSjg
         jG7XY+YaagpasYHBeubLzA9wk5a79J4s3nzo5CtAz2yJOYzfdfs5lOVCmbGQ5Qkbdv44
         BjLOuVrNTKeWNORUWizkTutX0qpwzJNMJHce128+YeYVNgOuKW8qSzlTarAyc/tjRgth
         VdXaOdgF7BIw6zM+Un7dKCNyu7IajJcKSMrY8hTAPCwqhBniDZ5S+kapSlr/s2/r5uUk
         eYGg==
X-Gm-Message-State: AOJu0YzeTTgcbq5x38TYeq/EovfMWTpYgo94z6BmwTwqqRLOsJgwzxzi
	3TeTdOE00V+636nUvf+PMXtXlQm4JOwCnNINfaZd6hUumxK1Pie3cZGwZBBmM9s09yAUm6QPfSX
	LrlvfsrEQB9peugj6OI0Ma1tPsmUHt4k+l3ZC
X-Gm-Gg: ASbGnctcHr+jWuNcXkHjwY2Lpd+WxMFcE1T5R9EXRr2AJVU7hLqvGGO/DQ4+Td8tLcS
	CzRWJsqOkIuJBPA08ctFg4D4HaDWJM5aGULB7TUINcUkXpeyi4SNPjCAaTgNU9XMberwkUUwIev
	H6soYhnZm8qTbNZi3PVLGssyn8DGp9oWXYHzHXWHdNHsi7ceMKCXmuSKNdhPOMPrkip70ufJRQa
	c5mNc7Y6aSCqZjsnst3r4YswPzm8Lx+ExWN1iCvuSlM45H1MOnmtxCNroeaqCXIuiRcykRS
X-Google-Smtp-Source: AGHT+IHHltVOYKG43NbDyQCk/9ZzkGirGNIMLPd3U+mm0m2Oxv9c9fMZDGdOhOpCvy5oQ5YuMk5TQJcLnzrTCLyOz04=
X-Received: by 2002:a05:6808:228c:b0:450:1f44:d1ce with SMTP id
 5614622812f47-45115b51138mr12547776b6e.64.1764455122927; Sat, 29 Nov 2025
 14:25:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu> <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com>
 <d5ffb46e5f000c75343b4689956445ca4df03575.camel@nazs.hu> <CABZAGREHMZwvxC3KizedrDUgTpvPbTmTDX-xde_uWzmSz7GdCA@mail.gmail.com>
 <ba1aa77d759f79db11f69bed4707a0502f65e53d.camel@nazs.hu> <CABZAGRE7jbjUbE8kbGmAe_pY=YiXhKr1woFNgwba68DENUBXoA@mail.gmail.com>
 <4dfc904f7e11e5d29e65a11959ae751bcb179d52.camel@nazs.hu> <CABZAGRErVVOT+0PP0_-QCi6Q0UT0kd7SUGWkUe_q27WQ3PVzPA@mail.gmail.com>
 <415fe5eb56047a9930d9e28b47cc37c462fa7f6c.camel@nazs.hu>
In-Reply-To: <415fe5eb56047a9930d9e28b47cc37c462fa7f6c.camel@nazs.hu>
From: Nick Huang <sef1548@gmail.com>
Date: Sun, 30 Nov 2025 06:25:12 +0800
X-Gm-Features: AWmQ_bkwuBhmC_H_fUsn_oiAB2H6NL_l0y7gnKrk8pWPt0J2OQTzSkZvUPpQATY
Message-ID: <CABZAGRG6W61Vr+V7c7ND2axJKPjDBS674gPCXy_pSReQZ+9wog@mail.gmail.com>
Subject: Re: Kbuilds and Makefiles in building the kernel
To: =?UTF-8?Q?Nagy_=C3=81brah=C3=A1m_Zsombor?= <nagyabraham@nazs.hu>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=
=B411=E6=9C=8830=E6=97=A5=E9=80=B1=E6=97=A5 =E4=B8=8A=E5=8D=881:14=E5=AF=AB=
=E9=81=93=EF=BC=9A
>
> On Sat, 2025-11-29 at 21:59 +0800, Nick Huang wrote:
> > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=
=B9=B411=E6=9C=8829=E6=97=A5=E9=80=B1=E5=85=AD =E4=B8=8B=E5=8D=889:22=E5=AF=
=AB=E9=81=93=EF=BC=9A
> > >
> > > On Sat, 2025-11-29 at 12:09 +0800, Nick Huang wrote:
> > > > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=
=E5=B9=B411=E6=9C=8828=E6=97=A5=E9=80=B1=E4=BA=94
> > > > =E4=B8=8B=E5=8D=884:18=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > >
> > > > > On Fri, 2025-11-28 at 08:12 +0800, Nick Huang wrote:
> > > > > > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC =
2025=E5=B9=B411=E6=9C=8828=E6=97=A5 =E9=80=B1=E4=BA=94
> > > > > > =E4=B8=8A=E5=8D=881:37=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > > > >
> > > > > > > On Thu, 2025-11-27 at 19:26 +0800, Nick Huang wrote:
> > > > > > > > Abraham Zsombor Nagy <nagyabraham@nazs.hu> =E6=96=BC
> > > > > > > > 2025=E5=B9=B411=E6=9C=8827=E6=97=A5=E9=80=B1=E5=9B=9B
> > > > > > > > =E4=B8=8B=E5=8D=886:43=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > > > > > >
> > > > > > > > > Hello,
> > > > > > > > >
> > > > > > > > > https://docs.kernel.org/kbuild/makefiles.html#the-kbuild-=
files
> > > > > > > > > stat
> > > > > > > > > es
> > > > > > > > > that when a directory contains a Kbuild file, the
> > > > > > > > > Makefile
> > > > > > > > > is
> > > > > > > > > skipped in
> > > > > > > > > that directory.
> > > > > > > > >
> > > > > > > > > It feels to me that both files are in use e.g. under
> > > > > > > > > arch/x86/
> > > > > > > > > directory.
> > > > > > > > >
> > > > > > > > > I'm trying to see what files are the core of the kernel
> > > > > > > > > and
> > > > > > > > > what
> > > > > > > > > files
> > > > > > > > > can be configured for x86 by partially parsing the
> > > > > > > > > Makefiles
> > > > > > > > > and
> > > > > > > > > the
> > > > > > > > > Kbuild files. Would it be sufficient to parse them as:
> > > > > > > > >
> > > > > > > > > if file =3D=3D "Makefile" or file =3D=3D "Kbuild":
> > > > > > > > >
> > > > > > > > >  > parse(file)
> > > > > > > > >
> > > > > > > > > or it should prefer the Kbuild file when present, or it
> > > > > > > > > is
> > > > > > > > > using
> > > > > > > > > some
> > > > > > > > > other logic?
> > > > > > > > >
> > > > > > > > > Sincerely,
> > > > > > > > >
> > > > > > > > > Abraham Nagy
> > > > > > > > >
> > > > > > > > >
> > > > > > > >
> > > > > > > > Hi  Abraham Zsombor Nagy
> > > > > > > > What functionality are you trying to add that would
> > > > > > > > require
> > > > > > > > modifying
> > > > > > > > the Makefile or Kbuild?
> > > > > > > >
> > > > > > > > Sincerely,
> > > > > > > > Nick Huang
> > > > > > >
> > > > > > > Hi Nick,
> > > > > > >
> > > > > > > I'm not modifying the build files, only writing a script
> > > > > > > that
> > > > > > > walks
> > > > > > > through the source tree and parses Makefiles and Kbuild
> > > > > > > files
> > > > > > > to
> > > > > > > list
> > > > > > > what source files are linked to the kernel by default and
> > > > > > > by
> > > > > > > CONFIG_*
> > > > > > > options. This is to see what to read through to get a basic
> > > > > > > understanding of the kernel at a given config.
> > > > > > >
> > > > > > > As I understand the documentation linked above, I should
> > > > > > > skip
> > > > > > > Makefiles
> > > > > > > when Kbuild files are present in a directory, but Makefiles
> > > > > > > feels
> > > > > > > to
> > > > > > > have important lines too.
> > > > > > >
> > > > > > > The approach is something like to extract object files and
> > > > > > > subdirectories from lines that start with python regex
> > > > > > > "^\S+-y"
> > > > > > > or
> > > > > > > "^\S+-\$\(CONFIG.*\)".
> > > > > > >
> > > > > > > Sincerely,
> > > > > > > Abraham
> > > > > > >
> > > > > > >
> > > > > >
> > > > > > Hi Abraham
> > > > > > You can use git grep -n "CONFIG_**" to find the files you
> > > > > > need.
> > > > > >
> > > > > > Sincerely,
> > > > > > Nick
> > > > >
> > > > > Hello Nick,
> > > > >
> > > > > Thank you, I've just tried git grep, it seems convenient,
> > > > > however I
> > > > > still need to further script and fine-tune the output, in which
> > > > > case I
> > > > > think having a customizable walk algorithm is the way to start
> > > > > with.
> > > > >
> > > > > find/git & grep walks through the directory tree that could
> > > > > include
> > > > > build files and sources that are from an incompatible set of
> > > > > config
> > > > > options. Also, there are some Makefiles that end the line with
> > > > > a
> > > > > backslash '\' saying to process the next line too, but which
> > > > > won't
> > > > > have
> > > > > regex match.
> > > > >
> > > > > A custom algorithm can start from a Makefile (and Kbuild
> > > > > file?)_and
> > > > > walk directories only that are visible from there. This way I
> > > > > can
> > > > > enforce a horizon of config options that are meaningfully able
> > > > > to
> > > > > extend the kernel. E.g. starting with minimal config, seeing
> > > > > the
> > > > > available additional configs, then in subsequent calls adding
> > > > > configs
> > > > > one by one until I have a whole kernel (but without extra
> > > > > parts).
> > > > >
> > > > > Make menuconfig combined with git grep and a text editor could
> > > > > help,
> > > > > but it would require more manual handling to achieve the same.
> > > > >
> > > > > Sincerely,
> > > > > Abraham
> > > >
> > > > Hi Abraham
> > > >
> > > > Are you trying to find out which configs can be enabled? If so, I
> > > > suggest you check the description of each Kconfig to see if it=E2=
=80=99s
> > > > what
> > > > you need, or if you have a clear idea of the functionality you
> > > > want
> > > > to
> > > > implement.
> > > >
> > > > Is your main goal to build a Linux kernel?
> > > >
> > > > Sincerely,
> > > > Nick
> > >
> > > Hi Nick,
> > >
> > > Yes, my main goal is to build a Linux kernel that is configured
> > > specifically for my laptop and usage. Slowly, I would like to learn
> > > the
> > > build process too and to get familiar with the source roughly.
> > >
> > > I see that Kconfig has the config dependencies and feature
> > > description,
> > > but yet I would need a script to find the corresponding sources
> > > that
> > > parses Kconfig files. If I understand well, it is for composing a
> > > meaningful .config file that then passed to the kernel build
> > > system.
> > >
> > > My approach would start with the build files, list the included
> > > object
> > > files and visible config options that include additional object
> > > files.
> > > I would continue this listing with build files in mentioned
> > > subdirectories, then grep the corresponding source files for the
> > > rest
> > > of the configs. Then, I would browse the source based on this
> > > overview.
> > >
> > > To see how Makefiles and Kbuild files are used, I would need to
> > > check
> > > the build system, but I'm hoping I can get some guidance.
> > >
> > > Sincerely,
> > > Abraham
> > Hi Abraham
> >
> > Do I only need to build the kernel without modifying any code?
> >
> > Sincerely,
> > Nick
>
> Hi Nick,
>
> I will only modify it a little, e.g default boot params, in case I want
> to use EFI_STUB (until I find in my UEFI how to pass them without a
> bootloader).
>
> Sincerely,
> Abraham

Hi Abraham
Are you planning to develop a Linux kernel driver, or do you only need
to build the Linux kernel source code?

Sincerely,
Nick
