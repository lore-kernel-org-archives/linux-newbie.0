Received: from smtp01.rackhost.hu (smtp01.rackhost.hu [91.227.138.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D371F03DE
	for <linux-newbie@vger.kernel.org>; Sun, 30 Nov 2025 15:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.227.138.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764517300; cv=none; b=kPEN9F6IpNFNP1oHoNulQG+MIP5aGO2tgmwg07Rf1rM/Rb/b+9bq0Kh/MKf+OPHM8tYq6OsEX9nBUFkBenmuNCXV9bS4XKdR+UWwuKg58s3nSE6FTUbpyVif3h62AR34fnfjh6SNjcbu8zHKZZrzeJRL7dTEFfTl0wbIdzc7AYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764517300; c=relaxed/simple;
	bh=d+C+B3/TAYD1sGOIS917KEJCnN1rZ9IrGrH/Ptk2A8Q=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=POYhUTY/aTcsbEKdKktMqDvrmq+rXUqQuIAhmQhDNwQLbzMYAaqSkUq04d/ZCfRXOQ48nh54p5SXGEo/N+TqwodQxdW453jy7E5wH7ZaP47jk1tEWl2B/0t9F7eFNiAsY7FcK/Sth1JRWq1pj3HW0XCHfFUDu/uQ35T5UqjvHPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu; spf=pass smtp.mailfrom=nazs.hu; dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b=nw6foqf0; arc=none smtp.client-ip=91.227.138.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nazs.hu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b="nw6foqf0"
Received: from localhost (localhost [127.0.0.1])
	by smtp01.rackhost.hu (Postfix) with ESMTP id 351CA9459;
	Sun, 30 Nov 2025 16:41:27 +0100 (CET)
X-Virus-Scanned: Debian amavis at smtp01.rackhost.hu
Received: from smtp01.rackhost.hu ([127.0.0.1])
 by localhost (smtp01.rackhost.hu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id W6vzdKdFSu8P; Sun, 30 Nov 2025 16:41:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nazs.hu;
	s=smtp20251106; t=1764517286;
	bh=d+C+B3/TAYD1sGOIS917KEJCnN1rZ9IrGrH/Ptk2A8Q=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=nw6foqf0ScxD62lMb62VmBJXja6HHc0kQU/MysYId93IqI7M5Ka35BMzDn44DE++Z
	 RSBwcN9AS++Vi6p3b86pXjT4t2XPKlKcy1uyJN4iBIHA38EyBAMDDFx1Khg9yAP9fN
	 nyvowq1ZHk/rkjTkJuLYuHx2KsZw0oRceXd2k5UVBjOMb8zORog+oYE/xB6GOP/KJS
	 m4stjI4Hbb/lelTtLOyQnda33a0NRa9D5zZyz68kQBMDxGkEqua5nvDYlwUNTyOrIG
	 /7IwgH4wW4UJ8PQRI5EL3g5oO9LcxB8TqIlOQAPLqVFI0tWu1OXlI2oGUPxpWIVA97
	 vtnjQb9nHB8EQ==
Received: from [10.10.10.88] (catv-80-98-148-72.catv.fixed.one.hu [80.98.148.72])
	by smtp01.rackhost.hu (Postfix) with ESMTPSA id 857E25C8E;
	Sun, 30 Nov 2025 16:41:26 +0100 (CET)
Message-ID: <ce5eae85a6fd1b49de4477c9e5eb22a9d975fb47.camel@nazs.hu>
Subject: Re: Kbuilds and Makefiles in building the kernel
From: Nagy =?ISO-8859-1?Q?=C1brah=E1m?= Zsombor <nagyabraham@nazs.hu>
To: Nick Huang <sef1548@gmail.com>
Cc: linux-newbie@vger.kernel.org
Date: Sun, 30 Nov 2025 16:40:00 +0100
In-Reply-To: <CABZAGRG6W61Vr+V7c7ND2axJKPjDBS674gPCXy_pSReQZ+9wog@mail.gmail.com>
References: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu>
	 <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com>
	 <d5ffb46e5f000c75343b4689956445ca4df03575.camel@nazs.hu>
	 <CABZAGREHMZwvxC3KizedrDUgTpvPbTmTDX-xde_uWzmSz7GdCA@mail.gmail.com>
	 <ba1aa77d759f79db11f69bed4707a0502f65e53d.camel@nazs.hu>
	 <CABZAGRE7jbjUbE8kbGmAe_pY=YiXhKr1woFNgwba68DENUBXoA@mail.gmail.com>
	 <4dfc904f7e11e5d29e65a11959ae751bcb179d52.camel@nazs.hu>
	 <CABZAGRErVVOT+0PP0_-QCi6Q0UT0kd7SUGWkUe_q27WQ3PVzPA@mail.gmail.com>
	 <415fe5eb56047a9930d9e28b47cc37c462fa7f6c.camel@nazs.hu>
	 <CABZAGRG6W61Vr+V7c7ND2axJKPjDBS674gPCXy_pSReQZ+9wog@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sun, 2025-11-30 at 06:25 +0800, Nick Huang wrote:
> Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=
=B411=E6=9C=8830=E6=97=A5=E9=80=B1=E6=97=A5 =E4=B8=8A=E5=8D=881:14=E5=AF=AB=
=E9=81=93=EF=BC=9A
> >=20
> > On Sat, 2025-11-29 at 21:59 +0800, Nick Huang wrote:
> > > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=
=E5=B9=B411=E6=9C=8829=E6=97=A5=E9=80=B1=E5=85=AD
> > > =E4=B8=8B=E5=8D=889:22=E5=AF=AB=E9=81=93=EF=BC=9A
> > > >=20
> > > > On Sat, 2025-11-29 at 12:09 +0800, Nick Huang wrote:
> > > > > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 20=
25=E5=B9=B411=E6=9C=8828=E6=97=A5=E9=80=B1=E4=BA=94
> > > > > =E4=B8=8B=E5=8D=884:18=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > > >=20
> > > > > > On Fri, 2025-11-28 at 08:12 +0800, Nick Huang wrote:
> > > > > > > Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=
=BC 2025=E5=B9=B411=E6=9C=8828=E6=97=A5
> > > > > > > =E9=80=B1=E4=BA=94
> > > > > > > =E4=B8=8A=E5=8D=881:37=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > > > > >=20
> > > > > > > > On Thu, 2025-11-27 at 19:26 +0800, Nick Huang wrote:
> > > > > > > > > Abraham Zsombor Nagy <nagyabraham@nazs.hu> =E6=96=BC
> > > > > > > > > 2025=E5=B9=B411=E6=9C=8827=E6=97=A5=E9=80=B1=E5=9B=9B
> > > > > > > > > =E4=B8=8B=E5=8D=886:43=E5=AF=AB=E9=81=93=EF=BC=9A
> > > > > > > > > >=20
> > > > > > > > > > Hello,
> > > > > > > > > >=20
> > > > > > > > > > https://docs.kernel.org/kbuild/makefiles.html#the-kbuil=
d-files
> > > > > > > > > > stat
> > > > > > > > > > es
> > > > > > > > > > that when a directory contains a Kbuild file, the
> > > > > > > > > > Makefile
> > > > > > > > > > is
> > > > > > > > > > skipped in
> > > > > > > > > > that directory.
> > > > > > > > > >=20
> > > > > > > > > > It feels to me that both files are in use e.g.
> > > > > > > > > > under
> > > > > > > > > > arch/x86/
> > > > > > > > > > directory.
> > > > > > > > > >=20
> > > > > > > > > > I'm trying to see what files are the core of the
> > > > > > > > > > kernel
> > > > > > > > > > and
> > > > > > > > > > what
> > > > > > > > > > files
> > > > > > > > > > can be configured for x86 by partially parsing the
> > > > > > > > > > Makefiles
> > > > > > > > > > and
> > > > > > > > > > the
> > > > > > > > > > Kbuild files. Would it be sufficient to parse them
> > > > > > > > > > as:
> > > > > > > > > >=20
> > > > > > > > > > if file =3D=3D "Makefile" or file =3D=3D "Kbuild":
> > > > > > > > > >=20
> > > > > > > > > > =C2=A0> parse(file)
> > > > > > > > > >=20
> > > > > > > > > > or it should prefer the Kbuild file when present,
> > > > > > > > > > or it
> > > > > > > > > > is
> > > > > > > > > > using
> > > > > > > > > > some
> > > > > > > > > > other logic?
> > > > > > > > > >=20
> > > > > > > > > > Sincerely,
> > > > > > > > > >=20
> > > > > > > > > > Abraham Nagy
> > > > > > > > > >=20
> > > > > > > > > >=20
> > > > > > > > >=20
> > > > > > > > > Hi=C2=A0 Abraham Zsombor Nagy
> > > > > > > > > What functionality are you trying to add that would
> > > > > > > > > require
> > > > > > > > > modifying
> > > > > > > > > the Makefile or Kbuild?
> > > > > > > > >=20
> > > > > > > > > Sincerely,
> > > > > > > > > Nick Huang
> > > > > > > >=20
> > > > > > > > Hi Nick,
> > > > > > > >=20
> > > > > > > > I'm not modifying the build files, only writing a
> > > > > > > > script
> > > > > > > > that
> > > > > > > > walks
> > > > > > > > through the source tree and parses Makefiles and Kbuild
> > > > > > > > files
> > > > > > > > to
> > > > > > > > list
> > > > > > > > what source files are linked to the kernel by default
> > > > > > > > and
> > > > > > > > by
> > > > > > > > CONFIG_*
> > > > > > > > options. This is to see what to read through to get a
> > > > > > > > basic
> > > > > > > > understanding of the kernel at a given config.
> > > > > > > >=20
> > > > > > > > As I understand the documentation linked above, I
> > > > > > > > should
> > > > > > > > skip
> > > > > > > > Makefiles
> > > > > > > > when Kbuild files are present in a directory, but
> > > > > > > > Makefiles
> > > > > > > > feels
> > > > > > > > to
> > > > > > > > have important lines too.
> > > > > > > >=20
> > > > > > > > The approach is something like to extract object files
> > > > > > > > and
> > > > > > > > subdirectories from lines that start with python regex
> > > > > > > > "^\S+-y"
> > > > > > > > or
> > > > > > > > "^\S+-\$\(CONFIG.*\)".
> > > > > > > >=20
> > > > > > > > Sincerely,
> > > > > > > > Abraham
> > > > > > > >=20
> > > > > > > >=20
> > > > > > >=20
> > > > > > > Hi Abraham
> > > > > > > You can use git grep -n "CONFIG_**" to find the files you
> > > > > > > need.
> > > > > > >=20
> > > > > > > Sincerely,
> > > > > > > Nick
> > > > > >=20
> > > > > > Hello Nick,
> > > > > >=20
> > > > > > Thank you, I've just tried git grep, it seems convenient,
> > > > > > however I
> > > > > > still need to further script and fine-tune the output, in
> > > > > > which
> > > > > > case I
> > > > > > think having a customizable walk algorithm is the way to
> > > > > > start
> > > > > > with.
> > > > > >=20
> > > > > > find/git & grep walks through the directory tree that could
> > > > > > include
> > > > > > build files and sources that are from an incompatible set
> > > > > > of
> > > > > > config
> > > > > > options. Also, there are some Makefiles that end the line
> > > > > > with
> > > > > > a
> > > > > > backslash '\' saying to process the next line too, but
> > > > > > which
> > > > > > won't
> > > > > > have
> > > > > > regex match.
> > > > > >=20
> > > > > > A custom algorithm can start from a Makefile (and Kbuild
> > > > > > file?)_and
> > > > > > walk directories only that are visible from there. This way
> > > > > > I
> > > > > > can
> > > > > > enforce a horizon of config options that are meaningfully
> > > > > > able
> > > > > > to
> > > > > > extend the kernel. E.g. starting with minimal config,
> > > > > > seeing
> > > > > > the
> > > > > > available additional configs, then in subsequent calls
> > > > > > adding
> > > > > > configs
> > > > > > one by one until I have a whole kernel (but without extra
> > > > > > parts).
> > > > > >=20
> > > > > > Make menuconfig combined with git grep and a text editor
> > > > > > could
> > > > > > help,
> > > > > > but it would require more manual handling to achieve the
> > > > > > same.
> > > > > >=20
> > > > > > Sincerely,
> > > > > > Abraham
> > > > >=20
> > > > > Hi Abraham
> > > > >=20
> > > > > Are you trying to find out which configs can be enabled? If
> > > > > so, I
> > > > > suggest you check the description of each Kconfig to see if
> > > > > it=E2=80=99s
> > > > > what
> > > > > you need, or if you have a clear idea of the functionality
> > > > > you
> > > > > want
> > > > > to
> > > > > implement.
> > > > >=20
> > > > > Is your main goal to build a Linux kernel?
> > > > >=20
> > > > > Sincerely,
> > > > > Nick
> > > >=20
> > > > Hi Nick,
> > > >=20
> > > > Yes, my main goal is to build a Linux kernel that is configured
> > > > specifically for my laptop and usage. Slowly, I would like to
> > > > learn
> > > > the
> > > > build process too and to get familiar with the source roughly.
> > > >=20
> > > > I see that Kconfig has the config dependencies and feature
> > > > description,
> > > > but yet I would need a script to find the corresponding sources
> > > > that
> > > > parses Kconfig files. If I understand well, it is for composing
> > > > a
> > > > meaningful .config file that then passed to the kernel build
> > > > system.
> > > >=20
> > > > My approach would start with the build files, list the included
> > > > object
> > > > files and visible config options that include additional object
> > > > files.
> > > > I would continue this listing with build files in mentioned
> > > > subdirectories, then grep the corresponding source files for
> > > > the
> > > > rest
> > > > of the configs. Then, I would browse the source based on this
> > > > overview.
> > > >=20
> > > > To see how Makefiles and Kbuild files are used, I would need to
> > > > check
> > > > the build system, but I'm hoping I can get some guidance.
> > > >=20
> > > > Sincerely,
> > > > Abraham
> > > Hi Abraham
> > >=20
> > > Do I only need to build the kernel without modifying any code?
> > >=20
> > > Sincerely,
> > > Nick
> >=20
> > Hi Nick,
> >=20
> > I will only modify it a little, e.g default boot params, in case I
> > want
> > to use EFI_STUB (until I find in my UEFI how to pass them without a
> > bootloader).
> >=20
> > Sincerely,
> > Abraham
>=20
> Hi Abraham
> Are you planning to develop a Linux kernel driver, or do you only
> need
> to build the Linux kernel source code?
>=20
> Sincerely,
> Nick


Hi Nick,

I'm planning mainly to build the kernel, but I would try out minor
modifications.

At the moment, my script walks via the Makefiles, then the same happens
with the Kbuild files. I'm fixing things as I encounter them. Example:

$ ./walk-x86.py
...
obj-y
...
arch/x86/kernel/setup.c
arch/x86/kernel/x86_init.c
arch/x86/kernel/i8259.c
arch/x86/kernel/irqinit.c
arch/x86/kernel/probe_roms.c
arch/x86/kernel/bootflag.c
...
obj-$(CONFIG_PCI_BIOS)
arch/x86/pci/pcbios.c
...

Sincerely,
Abraham
