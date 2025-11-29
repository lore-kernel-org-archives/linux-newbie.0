Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996621F16B
	for <linux-newbie@vger.kernel.org>; Sat, 29 Nov 2025 13:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764424775; cv=none; b=GZFPR7+YCtuc3hzFSTVi0CcFmiVIsEJ8RZN7qdUnwl9X6ERDO+tatc7xaDunliYZaroVGTSuqDAqHs0A86f+AQMhA7+aunmXdT8LYdmVdkFAlKU8HWXF132GvAcqWI31R5X3M15DdFvoHEaorHiBmj8fcRDb/crb/VH/bdrw3Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764424775; c=relaxed/simple;
	bh=iATmrntlrTrPs2mi2bUEwWEcCsU261qmT6hLj5FI/QY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=djbRMQZFasD+AreiHPyuLMLakGcXFLaMjkTY0xk7JqWXwL3Oqwjxu/YUFnHf1HKn22XCS609h8+GCotJ8fEE6HX4kTKkiIQAdWJ2uX3hOJYJMry3pOY46ALWaIca4D5zbUMIvek2mNUCMoHwsgfsN4fiMABGT/uIalnuHWh99fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S7SosOup; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S7SosOup"
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7c6d13986f8so1869035a34.0
        for <linux-newbie@vger.kernel.org>; Sat, 29 Nov 2025 05:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764424772; x=1765029572; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y3GQBfM8VgLcL58E5R/MKaeUwP2oWwP1IBooj6giYPU=;
        b=S7SosOup46ChHm2gJEBaa6YRrI7eTw8U2ERc7BqXGCKtD9Rlx6Cr6cNAVJk2sMibaK
         zIcfFeaJ/6PmYb7ry/JaazNo1ZibE5+JUuw/jXPgsbvtFL2ZSXJQ6/0i7vLW1hQg7Sjs
         4TMMFJq+qSURHcjqrs+pqSY1KmBlPeE21bFXa0tpfuwLA/3PAmTpOfHMoHVWjVyS/hfV
         bjO7n8JTL/yOdgPmVF7RzM6kkSTd9jcMAUM00NRa+2kVsYcLiIL9pDVYqQgEvYPTc8mO
         HRaMrc+ihTFa5hvqYKWH9KgkcuFxXVb+Uvi510BUK+hwHYpYvRVtYRRI76/8zsgbY38u
         paxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764424772; x=1765029572;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Y3GQBfM8VgLcL58E5R/MKaeUwP2oWwP1IBooj6giYPU=;
        b=ufyL/xjGZK8yP13oN8KHUKKT1rz/R7Oby1yBtyYz9ba+t1x1ySTA5wzsNzAqDugPE3
         jLW3U5cTqv4kK1ozdyYnpCgrPFLp7a1/ZOCV3fl7VY2OniY5PA9l8rhbHdVLaFAW2hYq
         86qof1NU09XMMrDmWTTALmobHj3/hpUkfqUun5HtYA6qC/idmwb/5IzEGz12LtxKLz/B
         l1waCmBRoGCIsfwH7CSOpBQFQ/XpBNEZHXCmuy90sMTi9u8yCnEDq/OHHWnd10ekLEm7
         AO97fqgGTu1iEtrAR0e7tQ0JlXZunJF2R9ePFPvojTzCJseprEQQLqMdPHBxv+wVhtOW
         cCWQ==
X-Gm-Message-State: AOJu0YwQW68AZj+0U4vT0+vWjuUB8iSaMWDhAetwydZtE8RzxxhL+9qu
	LeJhpy5259Ek15+Bnu39O1g0S4nHLiDyrj0im4TUiN2HZf95dBV+9VkgdG7G71SELxauoy3+803
	chGU4iGxMezrZH2mM6QQDI+U7k2k1clNX4763
X-Gm-Gg: ASbGncsgNjsAJDaVwU/9KczQJ7r8jcw6WTpPb7Y0eZD16Bt+8H3Db806nG1o0E/6cul
	v+KZ16X5bUppwBom+cdoIhA2eMvmAKj1w/sP6gJrj7Hb9gLpzJQnXJRqumfNGoFVQ/Q1L8RfJQ0
	WHkeVNWAQ63lFR3MlDXcS8ha5n0UfZ4aPXj8EcD7QO5MI6CdQotED9ogZgXJQLSMcf4zUMy0HC6
	vSmbQQyM0zELKmETYF/Kya7MFH6SHqwtZNomoPrbZaPRirjzGhVfMWJywrQTRStLl2Qgws=
X-Google-Smtp-Source: AGHT+IGT8WkAnDWhr9WxsWlPjhinzLMeZ9D7bK10e2U8d0T/14lXIAkC/uWA3L/KGyY0Yo/JbNSQ9mKDkzKeoITb4vw=
X-Received: by 2002:a05:6830:2b1e:b0:79e:7e5e:7c63 with SMTP id
 46e09a7af769-7c798ba4d5emr18463064a34.14.1764424771634; Sat, 29 Nov 2025
 05:59:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu> <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com>
 <d5ffb46e5f000c75343b4689956445ca4df03575.camel@nazs.hu> <CABZAGREHMZwvxC3KizedrDUgTpvPbTmTDX-xde_uWzmSz7GdCA@mail.gmail.com>
 <ba1aa77d759f79db11f69bed4707a0502f65e53d.camel@nazs.hu> <CABZAGRE7jbjUbE8kbGmAe_pY=YiXhKr1woFNgwba68DENUBXoA@mail.gmail.com>
 <4dfc904f7e11e5d29e65a11959ae751bcb179d52.camel@nazs.hu>
In-Reply-To: <4dfc904f7e11e5d29e65a11959ae751bcb179d52.camel@nazs.hu>
From: Nick Huang <sef1548@gmail.com>
Date: Sat, 29 Nov 2025 21:59:20 +0800
X-Gm-Features: AWmQ_bnWa7GqOYldaiSw15kphQ2GlAn2hF0slqM_F_nJj9AJ2PoeWLqGDIyfwNQ
Message-ID: <CABZAGRErVVOT+0PP0_-QCi6Q0UT0kd7SUGWkUe_q27WQ3PVzPA@mail.gmail.com>
Subject: Re: Kbuilds and Makefiles in building the kernel
To: =?UTF-8?Q?Nagy_=C3=81brah=C3=A1m_Zsombor?= <nagyabraham@nazs.hu>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=
=B411=E6=9C=8829=E6=97=A5=E9=80=B1=E5=85=AD =E4=B8=8B=E5=8D=889:22=E5=AF=AB=
=E9=81=93=EF=BC=9A
>
> On Sat, 2025-11-29 at 12:09 +0800, Nick Huang wrote:
> > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=
=B9=B411=E6=9C=8828=E6=97=A5=E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=884:18=E5=AF=
=AB=E9=81=93=EF=BC=9A
> > >
> > > On Fri, 2025-11-28 at 08:12 +0800, Nick Huang wrote:
> > > > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=
=E5=B9=B411=E6=9C=8828=E6=97=A5 =E9=80=B1=E4=BA=94
> > > > =E4=B8=8A=E5=8D=881:37=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > >
> > > > > On Thu, 2025-11-27 at 19:26 +0800, Nick Huang wrote:
> > > > > > Abraham Zsombor Nagy <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=
=B411=E6=9C=8827=E6=97=A5=E9=80=B1=E5=9B=9B
> > > > > > =E4=B8=8B=E5=8D=886:43=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > > > >
> > > > > > > Hello,
> > > > > > >
> > > > > > > https://docs.kernel.org/kbuild/makefiles.html#the-kbuild-file=
s
> > > > > > > stat
> > > > > > > es
> > > > > > > that when a directory contains a Kbuild file, the Makefile
> > > > > > > is
> > > > > > > skipped in
> > > > > > > that directory.
> > > > > > >
> > > > > > > It feels to me that both files are in use e.g. under
> > > > > > > arch/x86/
> > > > > > > directory.
> > > > > > >
> > > > > > > I'm trying to see what files are the core of the kernel and
> > > > > > > what
> > > > > > > files
> > > > > > > can be configured for x86 by partially parsing the
> > > > > > > Makefiles
> > > > > > > and
> > > > > > > the
> > > > > > > Kbuild files. Would it be sufficient to parse them as:
> > > > > > >
> > > > > > > if file =3D=3D "Makefile" or file =3D=3D "Kbuild":
> > > > > > >
> > > > > > >  > parse(file)
> > > > > > >
> > > > > > > or it should prefer the Kbuild file when present, or it is
> > > > > > > using
> > > > > > > some
> > > > > > > other logic?
> > > > > > >
> > > > > > > Sincerely,
> > > > > > >
> > > > > > > Abraham Nagy
> > > > > > >
> > > > > > >
> > > > > >
> > > > > > Hi  Abraham Zsombor Nagy
> > > > > > What functionality are you trying to add that would require
> > > > > > modifying
> > > > > > the Makefile or Kbuild?
> > > > > >
> > > > > > Sincerely,
> > > > > > Nick Huang
> > > > >
> > > > > Hi Nick,
> > > > >
> > > > > I'm not modifying the build files, only writing a script that
> > > > > walks
> > > > > through the source tree and parses Makefiles and Kbuild files
> > > > > to
> > > > > list
> > > > > what source files are linked to the kernel by default and by
> > > > > CONFIG_*
> > > > > options. This is to see what to read through to get a basic
> > > > > understanding of the kernel at a given config.
> > > > >
> > > > > As I understand the documentation linked above, I should skip
> > > > > Makefiles
> > > > > when Kbuild files are present in a directory, but Makefiles
> > > > > feels
> > > > > to
> > > > > have important lines too.
> > > > >
> > > > > The approach is something like to extract object files and
> > > > > subdirectories from lines that start with python regex "^\S+-y"
> > > > > or
> > > > > "^\S+-\$\(CONFIG.*\)".
> > > > >
> > > > > Sincerely,
> > > > > Abraham
> > > > >
> > > > >
> > > >
> > > > Hi Abraham
> > > > You can use git grep -n "CONFIG_**" to find the files you need.
> > > >
> > > > Sincerely,
> > > > Nick
> > >
> > > Hello Nick,
> > >
> > > Thank you, I've just tried git grep, it seems convenient, however I
> > > still need to further script and fine-tune the output, in which
> > > case I
> > > think having a customizable walk algorithm is the way to start
> > > with.
> > >
> > > find/git & grep walks through the directory tree that could include
> > > build files and sources that are from an incompatible set of config
> > > options. Also, there are some Makefiles that end the line with a
> > > backslash '\' saying to process the next line too, but which won't
> > > have
> > > regex match.
> > >
> > > A custom algorithm can start from a Makefile (and Kbuild file?)_and
> > > walk directories only that are visible from there. This way I can
> > > enforce a horizon of config options that are meaningfully able to
> > > extend the kernel. E.g. starting with minimal config, seeing the
> > > available additional configs, then in subsequent calls adding
> > > configs
> > > one by one until I have a whole kernel (but without extra parts).
> > >
> > > Make menuconfig combined with git grep and a text editor could
> > > help,
> > > but it would require more manual handling to achieve the same.
> > >
> > > Sincerely,
> > > Abraham
> >
> > Hi Abraham
> >
> > Are you trying to find out which configs can be enabled? If so, I
> > suggest you check the description of each Kconfig to see if it=E2=80=99=
s what
> > you need, or if you have a clear idea of the functionality you want
> > to
> > implement.
> >
> > Is your main goal to build a Linux kernel?
> >
> > Sincerely,
> > Nick
>
> Hi Nick,
>
> Yes, my main goal is to build a Linux kernel that is configured
> specifically for my laptop and usage. Slowly, I would like to learn the
> build process too and to get familiar with the source roughly.
>
> I see that Kconfig has the config dependencies and feature description,
> but yet I would need a script to find the corresponding sources that
> parses Kconfig files. If I understand well, it is for composing a
> meaningful .config file that then passed to the kernel build system.
>
> My approach would start with the build files, list the included object
> files and visible config options that include additional object files.
> I would continue this listing with build files in mentioned
> subdirectories, then grep the corresponding source files for the rest
> of the configs. Then, I would browse the source based on this overview.
>
> To see how Makefiles and Kbuild files are used, I would need to check
> the build system, but I'm hoping I can get some guidance.
>
> Sincerely,
> Abraham
Hi Abraham

Do I only need to build the kernel without modifying any code?

Sincerely,
Nick
