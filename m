Received: from smtp03.rackhost.hu (smtp03.rackhost.hu [91.227.138.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A864207A0B
	for <linux-newbie@vger.kernel.org>; Sat, 29 Nov 2025 13:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.227.138.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764422562; cv=none; b=SvkLtGMHvICAW4mB0oYoIleXOQm+nFX5WnrGLeXx325u3KnmYBgEzKbWAf4fGS/YMLNQRFSEo2cgILUgxzRNCDq5F6mo8opQoG5MKrOT11om2M+V3ZrBiL7Inr+Q5GHR1ZxxR0o8TppdmXCFJEBolWVzPq4REmAF3Dd3DPhKZB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764422562; c=relaxed/simple;
	bh=qAIBnvUxk/OSF4E9moqYFtnxS/YJ3PnIROQB3L5r3qQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CE6GBM6lszYw2XzoQf1rFvKPuvpsB7epGCCz4ssqPAfDH300TcFcSCWUdQd/taBCm/Atc772pzmygcw2gSwt5gEm9iqmrxdZeVhP2VujVTq+dJoJyxfYMW8ofivu3GXgKpLzZIcK1POwHdsQX/HS2a7JV6iBTAoHxJS09mifXbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu; spf=pass smtp.mailfrom=nazs.hu; dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b=Evrst+Uv; arc=none smtp.client-ip=91.227.138.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nazs.hu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b="Evrst+Uv"
Received: from localhost (localhost [127.0.0.1])
	by smtp03.rackhost.hu (Postfix) with ESMTP id 0613B2297D;
	Sat, 29 Nov 2025 14:22:30 +0100 (CET)
X-Virus-Scanned: Debian amavis at smtp03.rackhost.hu
Received: from smtp03.rackhost.hu ([127.0.0.1])
 by localhost (smtp03.rackhost.hu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id u5Jt_cq8Mc81; Sat, 29 Nov 2025 14:22:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nazs.hu;
	s=smtp0320251106; t=1764422549;
	bh=qAIBnvUxk/OSF4E9moqYFtnxS/YJ3PnIROQB3L5r3qQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Evrst+UvvesXWLWDiTmP9rkiauBXHsBlrhj8QHs/sisd93R4ZJB9OPpsB9q452PR2
	 jY6CM/MYlnKJUD7ieSO0BoVSjhTa6bynrnqD9pJ6fRVk63zd1nsGk5/5SXVTD/RnJk
	 xizLbeenib6r+9ouatLC/dSomwvlAe1uk8GgdVPKirmHxsMaNgKhh006QhyFfRVJUl
	 YHzHrRwJZv3mUAE+/a1yOd+E+KftY4O8bSebYv3x9QOOrdk3IrReX/0e7MQM7m+aku
	 U9htDGA1CPGIM6+Bn+Uzj/wUVzMNozvH8GZPgT0KhZKRYBf+i15ITlXiMOPqYEYYyV
	 vyLJ3mD8+Ue0A==
Received: from per.lan (catv-80-98-148-72.catv.fixed.one.hu [80.98.148.72])
	by smtp03.rackhost.hu (Postfix) with ESMTPSA id 7357222975;
	Sat, 29 Nov 2025 14:22:29 +0100 (CET)
Message-ID: <4dfc904f7e11e5d29e65a11959ae751bcb179d52.camel@nazs.hu>
Subject: Re: Kbuilds and Makefiles in building the kernel
From: Nagy =?ISO-8859-1?Q?=C1brah=E1m?= Zsombor <nagyabraham@nazs.hu>
To: Nick Huang <sef1548@gmail.com>
Cc: linux-newbie@vger.kernel.org
Date: Sat, 29 Nov 2025 14:22:02 +0100
In-Reply-To: <CABZAGRE7jbjUbE8kbGmAe_pY=YiXhKr1woFNgwba68DENUBXoA@mail.gmail.com>
References: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu>
	 <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com>
	 <d5ffb46e5f000c75343b4689956445ca4df03575.camel@nazs.hu>
	 <CABZAGREHMZwvxC3KizedrDUgTpvPbTmTDX-xde_uWzmSz7GdCA@mail.gmail.com>
	 <ba1aa77d759f79db11f69bed4707a0502f65e53d.camel@nazs.hu>
	 <CABZAGRE7jbjUbE8kbGmAe_pY=YiXhKr1woFNgwba68DENUBXoA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2025-11-29 at 12:09 +0800, Nick Huang wrote:
> Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=
=B411=E6=9C=8828=E6=97=A5=E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=884:18=E5=AF=AB=
=E9=81=93=EF=BC=9A
> >=20
> > On Fri, 2025-11-28 at 08:12 +0800, Nick Huang wrote:
> > > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=
=E5=B9=B411=E6=9C=8828=E6=97=A5 =E9=80=B1=E4=BA=94
> > > =E4=B8=8A=E5=8D=881:37=E5=AF=AB=E9=81=93=EF=BC=9A
> > > >=20
> > > > On Thu, 2025-11-27 at 19:26 +0800, Nick Huang wrote:
> > > > > Abraham Zsombor Nagy <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=
=B411=E6=9C=8827=E6=97=A5=E9=80=B1=E5=9B=9B
> > > > > =E4=B8=8B=E5=8D=886:43=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > > >=20
> > > > > > Hello,
> > > > > >=20
> > > > > > https://docs.kernel.org/kbuild/makefiles.html#the-kbuild-files
> > > > > > stat
> > > > > > es
> > > > > > that when a directory contains a Kbuild file, the Makefile
> > > > > > is
> > > > > > skipped in
> > > > > > that directory.
> > > > > >=20
> > > > > > It feels to me that both files are in use e.g. under
> > > > > > arch/x86/
> > > > > > directory.
> > > > > >=20
> > > > > > I'm trying to see what files are the core of the kernel and
> > > > > > what
> > > > > > files
> > > > > > can be configured for x86 by partially parsing the
> > > > > > Makefiles
> > > > > > and
> > > > > > the
> > > > > > Kbuild files. Would it be sufficient to parse them as:
> > > > > >=20
> > > > > > if file =3D=3D "Makefile" or file =3D=3D "Kbuild":
> > > > > >=20
> > > > > > =C2=A0> parse(file)
> > > > > >=20
> > > > > > or it should prefer the Kbuild file when present, or it is
> > > > > > using
> > > > > > some
> > > > > > other logic?
> > > > > >=20
> > > > > > Sincerely,
> > > > > >=20
> > > > > > Abraham Nagy
> > > > > >=20
> > > > > >=20
> > > > >=20
> > > > > Hi=C2=A0 Abraham Zsombor Nagy
> > > > > What functionality are you trying to add that would require
> > > > > modifying
> > > > > the Makefile or Kbuild?
> > > > >=20
> > > > > Sincerely,
> > > > > Nick Huang
> > > >=20
> > > > Hi Nick,
> > > >=20
> > > > I'm not modifying the build files, only writing a script that
> > > > walks
> > > > through the source tree and parses Makefiles and Kbuild files
> > > > to
> > > > list
> > > > what source files are linked to the kernel by default and by
> > > > CONFIG_*
> > > > options. This is to see what to read through to get a basic
> > > > understanding of the kernel at a given config.
> > > >=20
> > > > As I understand the documentation linked above, I should skip
> > > > Makefiles
> > > > when Kbuild files are present in a directory, but Makefiles
> > > > feels
> > > > to
> > > > have important lines too.
> > > >=20
> > > > The approach is something like to extract object files and
> > > > subdirectories from lines that start with python regex "^\S+-y"
> > > > or
> > > > "^\S+-\$\(CONFIG.*\)".
> > > >=20
> > > > Sincerely,
> > > > Abraham
> > > >=20
> > > >=20
> > >=20
> > > Hi Abraham
> > > You can use git grep -n "CONFIG_**" to find the files you need.
> > >=20
> > > Sincerely,
> > > Nick
> >=20
> > Hello Nick,
> >=20
> > Thank you, I've just tried git grep, it seems convenient, however I
> > still need to further script and fine-tune the output, in which
> > case I
> > think having a customizable walk algorithm is the way to start
> > with.
> >=20
> > find/git & grep walks through the directory tree that could include
> > build files and sources that are from an incompatible set of config
> > options. Also, there are some Makefiles that end the line with a
> > backslash '\' saying to process the next line too, but which won't
> > have
> > regex match.
> >=20
> > A custom algorithm can start from a Makefile (and Kbuild file?)_and
> > walk directories only that are visible from there. This way I can
> > enforce a horizon of config options that are meaningfully able to
> > extend the kernel. E.g. starting with minimal config, seeing the
> > available additional configs, then in subsequent calls adding
> > configs
> > one by one until I have a whole kernel (but without extra parts).
> >=20
> > Make menuconfig combined with git grep and a text editor could
> > help,
> > but it would require more manual handling to achieve the same.
> >=20
> > Sincerely,
> > Abraham
>=20
> Hi Abraham
>=20
> Are you trying to find out which configs can be enabled? If so, I
> suggest you check the description of each Kconfig to see if it=E2=80=99s =
what
> you need, or if you have a clear idea of the functionality you want
> to
> implement.
>=20
> Is your main goal to build a Linux kernel?
>=20
> Sincerely,
> Nick

Hi Nick,

Yes, my main goal is to build a Linux kernel that is configured
specifically for my laptop and usage. Slowly, I would like to learn the
build process too and to get familiar with the source roughly.

I see that Kconfig has the config dependencies and feature description,
but yet I would need a script to find the corresponding sources that
parses Kconfig files. If I understand well, it is for composing a
meaningful .config file that then passed to the kernel build system.

My approach would start with the build files, list the included object
files and visible config options that include additional object files.
I would continue this listing with build files in mentioned
subdirectories, then grep the corresponding source files for the rest
of the configs. Then, I would browse the source based on this overview.

To see how Makefiles and Kbuild files are used, I would need to check
the build system, but I'm hoping I can get some guidance.

Sincerely,
Abraham
