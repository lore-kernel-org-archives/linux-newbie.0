Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A703D2BCFB
	for <linux-newbie@vger.kernel.org>; Sat, 29 Nov 2025 04:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764389405; cv=none; b=t64zTimYHb6CN7IrLXMUKPTiTJ2YDY9P8qXgWL9r9/0QlEmxozn2YJnlkdJJSszjTNc72dak/E/bqP0g/dpj37hToi1JchXT6g3K4r63O5k6cmeJi/S+tMc+jRc+1ragK0j6jeu0Rqz46B9A0rxBE6DDD7/GJTNxu8bMVO3pZkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764389405; c=relaxed/simple;
	bh=Bm4bloG63LVPuMiiQ/CENNz2YoIXxjCd9dbF7tRyIFU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uDlNqMEEmZsThegE8LiXCkXlI8oEqyw0nSM1EumwQ4MPRmEw0kWxPEdQLKISq28fEWkRUQCh1sMzkQJyTbPpsnsl6RpEcSYzj30qNvLHDK5bA2VTu7cdTlWMv1cLtUDx7OgpU3Zj1XYKBGvFiob3a8R8o4E9y4YAw229acYYO24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RBE2eCaY; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RBE2eCaY"
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-450ac3ed719so1289102b6e.0
        for <linux-newbie@vger.kernel.org>; Fri, 28 Nov 2025 20:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764389402; x=1764994202; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eT4qCFzJjpj++MsNg5tmnIa6x6GXyowQHflrb6e7Gns=;
        b=RBE2eCaYaqdqZDRZQaJjfk/Rc7JJt1Y7DsZ7/aqhp8JilfTbaPVlMWmthf+PhcZ9Oo
         kJdfLw/cWAkU1oCZxn0uE808iyVPcsFAPvgqcx6PFEPC94pCY9YEwhw4lOCXmg45DisR
         G7U7HF9Ok7RV11SeukhO7x4dyXU1nD9ksfSTe4qU4kiz+/AV5dGRLeK01hSfyAXZEBb7
         +L/1QjggauAQ2uwINhV/3j3v4Rbr7O9XJSH+S81HTHwZ7abXMPVZ9ytsCUVJ3kZsGnM7
         ZRyWmzZ7UeWlQQxqvgtMcygViWa4b/KydRB0T9VFuO7aYFMsiAaCvPlXhPeI4MoIbDzK
         T5+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764389402; x=1764994202;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eT4qCFzJjpj++MsNg5tmnIa6x6GXyowQHflrb6e7Gns=;
        b=HxNBg15TftB79yPcv1/tIbpLZS9osG4waHZRfaUnOn8kx9oEtxhdyO1VJXMUNxc516
         UD9AaQ5P5rhC/hCIwkmOJJX0d/bwqNXQBP/567OODnd3Wak6pIZ+a7GJgwAANIPytUk0
         C/okouLE1LZ7EXLvymmgMubsOk7VJLmKIyfi0M7rMzP3rt0GlBnx65DofkVfqarkgLev
         OHmib/VDtjICAM3baKG9Dk/NCxVGqIVnYknYRa65VVPiisngZ/osJV6c1foOisvuVHS+
         ZxLiGEo7y46NTkrzgXxarwx/KoZRe6Yyt0PJ/hjUcXQqWCq1QLodOM5ItCm8HCeMD6KP
         AO/w==
X-Gm-Message-State: AOJu0YwE62/neL3XzChu5YXFdBf8IN7SCstxB5gSipKC5wGeIiAnbfNE
	PFut5NsuL4iVqDmnCpB+ABKSe+8JqspM6Hb5iERYVdusuWmxdEMsPbEaqCe+r4nYpdS+qPQS9X0
	7cBpgEW/Rhp+0G/42c4BI4qz4ks44/RCdfORh
X-Gm-Gg: ASbGncu71mwtXbWxNNJ3/cT3TyOLea34+iWQYBn2gjdnVHX3EvkUHeveL2Y5QmLR0aK
	eXsTeSmC2OINU6s4QIEwqgWLmV58lVA5o1sbgWjMGwjNXf0N4fCyi5LHjSn/+vC46TYJAiMH2X7
	TAyYrI8o1sJZ6Rno0lauCKHNkMNg1IHQr5aDcueyVw0HsRGH6XqtlTrHYaQZdjaRFpHZ7Yft2Es
	uOuztrlZr/XLF14J7SGOggHwKMM493zXsNOQUt0KY7ZdUf6mjYOzjE7iXmPDUMJZGj2IYlzFk/g
	/1QRmCLKBHeIQ+GagaXZ/LVhpnknTw==
X-Google-Smtp-Source: AGHT+IHzDjEWB31VUSlI8ZIVicruEcelAzpoGsnF6KZkGteDMFMTf3otQjAwJ7kYe6OwsDKmGT6veXXD04fC1ZlnFbI=
X-Received: by 2002:a05:6808:2228:b0:450:3b8b:b472 with SMTP id
 5614622812f47-4514e8791c9mr8086071b6e.63.1764389402523; Fri, 28 Nov 2025
 20:10:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu> <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com>
 <d5ffb46e5f000c75343b4689956445ca4df03575.camel@nazs.hu> <CABZAGREHMZwvxC3KizedrDUgTpvPbTmTDX-xde_uWzmSz7GdCA@mail.gmail.com>
 <ba1aa77d759f79db11f69bed4707a0502f65e53d.camel@nazs.hu>
In-Reply-To: <ba1aa77d759f79db11f69bed4707a0502f65e53d.camel@nazs.hu>
From: Nick Huang <sef1548@gmail.com>
Date: Sat, 29 Nov 2025 12:09:51 +0800
X-Gm-Features: AWmQ_bl91mPU2NDWV7KFz2aRLng_VwJK-A28_-3WSynQnt80We0skwInYvTns8M
Message-ID: <CABZAGRE7jbjUbE8kbGmAe_pY=YiXhKr1woFNgwba68DENUBXoA@mail.gmail.com>
Subject: Re: Kbuilds and Makefiles in building the kernel
To: =?UTF-8?Q?Nagy_=C3=81brah=C3=A1m_Zsombor?= <nagyabraham@nazs.hu>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=
=B411=E6=9C=8828=E6=97=A5=E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=884:18=E5=AF=AB=
=E9=81=93=EF=BC=9A
>
> On Fri, 2025-11-28 at 08:12 +0800, Nick Huang wrote:
> > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=
=B9=B411=E6=9C=8828=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8A=E5=8D=881:37=E5=
=AF=AB=E9=81=93=EF=BC=9A
> > >
> > > On Thu, 2025-11-27 at 19:26 +0800, Nick Huang wrote:
> > > > Abraham Zsombor Nagy <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=B41=
1=E6=9C=8827=E6=97=A5=E9=80=B1=E5=9B=9B
> > > > =E4=B8=8B=E5=8D=886:43=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > >
> > > > > Hello,
> > > > >
> > > > > https://docs.kernel.org/kbuild/makefiles.html#the-kbuild-files
> > > > > stat
> > > > > es
> > > > > that when a directory contains a Kbuild file, the Makefile is
> > > > > skipped in
> > > > > that directory.
> > > > >
> > > > > It feels to me that both files are in use e.g. under arch/x86/
> > > > > directory.
> > > > >
> > > > > I'm trying to see what files are the core of the kernel and
> > > > > what
> > > > > files
> > > > > can be configured for x86 by partially parsing the Makefiles
> > > > > and
> > > > > the
> > > > > Kbuild files. Would it be sufficient to parse them as:
> > > > >
> > > > > if file =3D=3D "Makefile" or file =3D=3D "Kbuild":
> > > > >
> > > > >  > parse(file)
> > > > >
> > > > > or it should prefer the Kbuild file when present, or it is
> > > > > using
> > > > > some
> > > > > other logic?
> > > > >
> > > > > Sincerely,
> > > > >
> > > > > Abraham Nagy
> > > > >
> > > > >
> > > >
> > > > Hi  Abraham Zsombor Nagy
> > > > What functionality are you trying to add that would require
> > > > modifying
> > > > the Makefile or Kbuild?
> > > >
> > > > Sincerely,
> > > > Nick Huang
> > >
> > > Hi Nick,
> > >
> > > I'm not modifying the build files, only writing a script that walks
> > > through the source tree and parses Makefiles and Kbuild files to
> > > list
> > > what source files are linked to the kernel by default and by
> > > CONFIG_*
> > > options. This is to see what to read through to get a basic
> > > understanding of the kernel at a given config.
> > >
> > > As I understand the documentation linked above, I should skip
> > > Makefiles
> > > when Kbuild files are present in a directory, but Makefiles feels
> > > to
> > > have important lines too.
> > >
> > > The approach is something like to extract object files and
> > > subdirectories from lines that start with python regex "^\S+-y" or
> > > "^\S+-\$\(CONFIG.*\)".
> > >
> > > Sincerely,
> > > Abraham
> > >
> > >
> >
> > Hi Abraham
> > You can use git grep -n "CONFIG_**" to find the files you need.
> >
> > Sincerely,
> > Nick
>
> Hello Nick,
>
> Thank you, I've just tried git grep, it seems convenient, however I
> still need to further script and fine-tune the output, in which case I
> think having a customizable walk algorithm is the way to start with.
>
> find/git & grep walks through the directory tree that could include
> build files and sources that are from an incompatible set of config
> options. Also, there are some Makefiles that end the line with a
> backslash '\' saying to process the next line too, but which won't have
> regex match.
>
> A custom algorithm can start from a Makefile (and Kbuild file?)_and
> walk directories only that are visible from there. This way I can
> enforce a horizon of config options that are meaningfully able to
> extend the kernel. E.g. starting with minimal config, seeing the
> available additional configs, then in subsequent calls adding configs
> one by one until I have a whole kernel (but without extra parts).
>
> Make menuconfig combined with git grep and a text editor could help,
> but it would require more manual handling to achieve the same.
>
> Sincerely,
> Abraham

Hi Abraham

Are you trying to find out which configs can be enabled? If so, I
suggest you check the description of each Kconfig to see if it=E2=80=99s wh=
at
you need, or if you have a clear idea of the functionality you want to
implement.

Is your main goal to build a Linux kernel?

Sincerely,
Nick
