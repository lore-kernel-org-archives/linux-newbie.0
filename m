Received: from smtp02.rackhost.hu (smtp02.rackhost.hu [91.227.138.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F9AE3C17
	for <linux-newbie@vger.kernel.org>; Sat, 29 Nov 2025 17:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.227.138.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764436457; cv=none; b=aqEaXKE1jCcX0ZdsdTF+/i29Sne1Jewr3/ZB88/g8tzokg+mOLaLawwEuc16q1NhrQr30cDgRXkqMG2R6JJxM3U0xAHRr+/sZXKu4KeXlrlpCQONyf7dq9Zlu+IWi08sBRji0S+qFI2LfxzMMwejlFka7OHiKOZKmNi9R9I1fJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764436457; c=relaxed/simple;
	bh=VzDj/qgAj+0qmYLOeAq7dTO3I5kwk2xTTE5snCXA1zs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ceJ3lLsMrylLow/sgAYzU/RiobrIxdiQsFtmdqHMNxE8vY9xfmJ2b1ctCf219Dp3TzBSYHN7zTXvBp7AJpqr3FjUTbSvmkFZVHA2HOn4F4Dq+WUTrfLYw3QgWrPCO/w9UavdL9e6UZ/O1sQWDFgPeIGVKv17wFRC2LP9qrp+aso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu; spf=pass smtp.mailfrom=nazs.hu; dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b=Tih3Ewos; arc=none smtp.client-ip=91.227.138.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nazs.hu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b="Tih3Ewos"
Received: from localhost (localhost [127.0.0.1])
	by smtp02.rackhost.hu (Postfix) with ESMTP id F254D202A5;
	Sat, 29 Nov 2025 18:14:04 +0100 (CET)
X-Virus-Scanned: Debian amavis at smtp02.rackhost.hu
Received: from smtp02.rackhost.hu ([127.0.0.1])
 by localhost (smtp02.rackhost.hu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id IrA8kJSBC40L; Sat, 29 Nov 2025 18:14:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nazs.hu;
	s=smtp0220251106; t=1764436444;
	bh=VzDj/qgAj+0qmYLOeAq7dTO3I5kwk2xTTE5snCXA1zs=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Tih3EwosBRoiAa9xn+4DTaYU7tFiDNHVog1oPxiqBhwtWj09+gy99IKhZ43RU6nGr
	 b823rTQwPYzymFAOC8Lv4SduhwiQ8ikQj+DNRfpznaSkiFiY2kmJYjCGePG2lj+hIZ
	 izHRyXPqdZAopoZMtdIoSSZqI86gP4Afnsawih67qeNoK5JX1Ge0CZ70maLK8FxMzO
	 DYk5OzysB4CnLrvgmek7jtYFW3v7ftSR9Lk+ZkRsKC76262jF5ree5duEFAg3qAquR
	 95vC/arrc8qhtVpG9sPZWgx1j0KWiPfUI4JYl07HaGDjJJY6OdR/KmHjwbBTRoYpI2
	 XwD0zPyHHbgSQ==
Received: from [10.10.10.88] (catv-80-98-148-72.catv.fixed.one.hu [80.98.148.72])
	by smtp02.rackhost.hu (Postfix) with ESMTPSA id 6BE66200F8;
	Sat, 29 Nov 2025 18:14:04 +0100 (CET)
Message-ID: <415fe5eb56047a9930d9e28b47cc37c462fa7f6c.camel@nazs.hu>
Subject: Re: Kbuilds and Makefiles in building the kernel
From: Nagy =?ISO-8859-1?Q?=C1brah=E1m?= Zsombor <nagyabraham@nazs.hu>
To: Nick Huang <sef1548@gmail.com>
Cc: linux-newbie@vger.kernel.org
Date: Sat, 29 Nov 2025 18:13:23 +0100
In-Reply-To: <CABZAGRErVVOT+0PP0_-QCi6Q0UT0kd7SUGWkUe_q27WQ3PVzPA@mail.gmail.com>
References: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu>
	 <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com>
	 <d5ffb46e5f000c75343b4689956445ca4df03575.camel@nazs.hu>
	 <CABZAGREHMZwvxC3KizedrDUgTpvPbTmTDX-xde_uWzmSz7GdCA@mail.gmail.com>
	 <ba1aa77d759f79db11f69bed4707a0502f65e53d.camel@nazs.hu>
	 <CABZAGRE7jbjUbE8kbGmAe_pY=YiXhKr1woFNgwba68DENUBXoA@mail.gmail.com>
	 <4dfc904f7e11e5d29e65a11959ae751bcb179d52.camel@nazs.hu>
	 <CABZAGRErVVOT+0PP0_-QCi6Q0UT0kd7SUGWkUe_q27WQ3PVzPA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2025-11-29 at 21:59 +0800, Nick Huang wrote:
> Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=
=B411=E6=9C=8829=E6=97=A5=E9=80=B1=E5=85=AD =E4=B8=8B=E5=8D=889:22=E5=AF=AB=
=E9=81=93=EF=BC=9A
> >=20
> > On Sat, 2025-11-29 at 12:09 +0800, Nick Huang wrote:
> > > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=
=E5=B9=B411=E6=9C=8828=E6=97=A5=E9=80=B1=E4=BA=94
> > > =E4=B8=8B=E5=8D=884:18=E5=AF=AB=E9=81=93=EF=BC=9A
> > > >=20
> > > > On Fri, 2025-11-28 at 08:12 +0800, Nick Huang wrote:
> > > > > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 20=
25=E5=B9=B411=E6=9C=8828=E6=97=A5 =E9=80=B1=E4=BA=94
> > > > > =E4=B8=8A=E5=8D=881:37=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > > >=20
> > > > > > On Thu, 2025-11-27 at 19:26 +0800, Nick Huang wrote:
> > > > > > > Abraham Zsombor Nagy <nagyabraham@nazs.hu> =E6=96=BC
> > > > > > > 2025=E5=B9=B411=E6=9C=8827=E6=97=A5=E9=80=B1=E5=9B=9B
> > > > > > > =E4=B8=8B=E5=8D=886:43=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > > > > >=20
> > > > > > > > Hello,
> > > > > > > >=20
> > > > > > > > https://docs.kernel.org/kbuild/makefiles.html#the-kbuild-fi=
les
> > > > > > > > stat
> > > > > > > > es
> > > > > > > > that when a directory contains a Kbuild file, the
> > > > > > > > Makefile
> > > > > > > > is
> > > > > > > > skipped in
> > > > > > > > that directory.
> > > > > > > >=20
> > > > > > > > It feels to me that both files are in use e.g. under
> > > > > > > > arch/x86/
> > > > > > > > directory.
> > > > > > > >=20
> > > > > > > > I'm trying to see what files are the core of the kernel
> > > > > > > > and
> > > > > > > > what
> > > > > > > > files
> > > > > > > > can be configured for x86 by partially parsing the
> > > > > > > > Makefiles
> > > > > > > > and
> > > > > > > > the
> > > > > > > > Kbuild files. Would it be sufficient to parse them as:
> > > > > > > >=20
> > > > > > > > if file =3D=3D "Makefile" or file =3D=3D "Kbuild":
> > > > > > > >=20
> > > > > > > > =C2=A0> parse(file)
> > > > > > > >=20
> > > > > > > > or it should prefer the Kbuild file when present, or it
> > > > > > > > is
> > > > > > > > using
> > > > > > > > some
> > > > > > > > other logic?
> > > > > > > >=20
> > > > > > > > Sincerely,
> > > > > > > >=20
> > > > > > > > Abraham Nagy
> > > > > > > >=20
> > > > > > > >=20
> > > > > > >=20
> > > > > > > Hi=C2=A0 Abraham Zsombor Nagy
> > > > > > > What functionality are you trying to add that would
> > > > > > > require
> > > > > > > modifying
> > > > > > > the Makefile or Kbuild?
> > > > > > >=20
> > > > > > > Sincerely,
> > > > > > > Nick Huang
> > > > > >=20
> > > > > > Hi Nick,
> > > > > >=20
> > > > > > I'm not modifying the build files, only writing a script
> > > > > > that
> > > > > > walks
> > > > > > through the source tree and parses Makefiles and Kbuild
> > > > > > files
> > > > > > to
> > > > > > list
> > > > > > what source files are linked to the kernel by default and
> > > > > > by
> > > > > > CONFIG_*
> > > > > > options. This is to see what to read through to get a basic
> > > > > > understanding of the kernel at a given config.
> > > > > >=20
> > > > > > As I understand the documentation linked above, I should
> > > > > > skip
> > > > > > Makefiles
> > > > > > when Kbuild files are present in a directory, but Makefiles
> > > > > > feels
> > > > > > to
> > > > > > have important lines too.
> > > > > >=20
> > > > > > The approach is something like to extract object files and
> > > > > > subdirectories from lines that start with python regex
> > > > > > "^\S+-y"
> > > > > > or
> > > > > > "^\S+-\$\(CONFIG.*\)".
> > > > > >=20
> > > > > > Sincerely,
> > > > > > Abraham
> > > > > >=20
> > > > > >=20
> > > > >=20
> > > > > Hi Abraham
> > > > > You can use git grep -n "CONFIG_**" to find the files you
> > > > > need.
> > > > >=20
> > > > > Sincerely,
> > > > > Nick
> > > >=20
> > > > Hello Nick,
> > > >=20
> > > > Thank you, I've just tried git grep, it seems convenient,
> > > > however I
> > > > still need to further script and fine-tune the output, in which
> > > > case I
> > > > think having a customizable walk algorithm is the way to start
> > > > with.
> > > >=20
> > > > find/git & grep walks through the directory tree that could
> > > > include
> > > > build files and sources that are from an incompatible set of
> > > > config
> > > > options. Also, there are some Makefiles that end the line with
> > > > a
> > > > backslash '\' saying to process the next line too, but which
> > > > won't
> > > > have
> > > > regex match.
> > > >=20
> > > > A custom algorithm can start from a Makefile (and Kbuild
> > > > file?)_and
> > > > walk directories only that are visible from there. This way I
> > > > can
> > > > enforce a horizon of config options that are meaningfully able
> > > > to
> > > > extend the kernel. E.g. starting with minimal config, seeing
> > > > the
> > > > available additional configs, then in subsequent calls adding
> > > > configs
> > > > one by one until I have a whole kernel (but without extra
> > > > parts).
> > > >=20
> > > > Make menuconfig combined with git grep and a text editor could
> > > > help,
> > > > but it would require more manual handling to achieve the same.
> > > >=20
> > > > Sincerely,
> > > > Abraham
> > >=20
> > > Hi Abraham
> > >=20
> > > Are you trying to find out which configs can be enabled? If so, I
> > > suggest you check the description of each Kconfig to see if it=E2=80=
=99s
> > > what
> > > you need, or if you have a clear idea of the functionality you
> > > want
> > > to
> > > implement.
> > >=20
> > > Is your main goal to build a Linux kernel?
> > >=20
> > > Sincerely,
> > > Nick
> >=20
> > Hi Nick,
> >=20
> > Yes, my main goal is to build a Linux kernel that is configured
> > specifically for my laptop and usage. Slowly, I would like to learn
> > the
> > build process too and to get familiar with the source roughly.
> >=20
> > I see that Kconfig has the config dependencies and feature
> > description,
> > but yet I would need a script to find the corresponding sources
> > that
> > parses Kconfig files. If I understand well, it is for composing a
> > meaningful .config file that then passed to the kernel build
> > system.
> >=20
> > My approach would start with the build files, list the included
> > object
> > files and visible config options that include additional object
> > files.
> > I would continue this listing with build files in mentioned
> > subdirectories, then grep the corresponding source files for the
> > rest
> > of the configs. Then, I would browse the source based on this
> > overview.
> >=20
> > To see how Makefiles and Kbuild files are used, I would need to
> > check
> > the build system, but I'm hoping I can get some guidance.
> >=20
> > Sincerely,
> > Abraham
> Hi Abraham
>=20
> Do I only need to build the kernel without modifying any code?
>=20
> Sincerely,
> Nick

Hi Nick,

I will only modify it a little, e.g default boot params, in case I want
to use EFI_STUB (until I find in my UEFI how to pass them without a
bootloader).

Sincerely,
Abraham
