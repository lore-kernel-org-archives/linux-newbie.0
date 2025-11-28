Received: from smtp02.rackhost.hu (smtp02.rackhost.hu [91.227.138.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532AF28CF6F
	for <linux-newbie@vger.kernel.org>; Fri, 28 Nov 2025 08:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.227.138.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764317926; cv=none; b=XtD15/O3M6C6GqcjCg8aC8YMv/iCfO2+htJLwbx7dlhc2G5ub9Y+rOG69C18oxue/fSGRZKUW9d2BYVqml3ExWM+u0Aa+/LigOw+sPpQw4t4yuEBh+70E4L+FPM5/YgxqyA8uQhZjAfT+YbLDf4HjDX5wxvNQxLZelsfbdE7fQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764317926; c=relaxed/simple;
	bh=pqgKOm0DTMMqK8Kq9y1xya8sC/9QGxxEGW7+vZYqsrQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=nJRBexq/GHelH0YLhUK07HfHwbEujdsKk/889JJwjHTLY34LSSNC1eboDboeOG13ISMop7248MFG92sW10PDj9fPrWQUnHfyX02kwhLCJBnnb+vgQb50G2VTFRrGBpcW3c/2WYr17nkiNsF2S8vSu9oDO/uHmxW2st4qtNhti4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu; spf=pass smtp.mailfrom=nazs.hu; dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b=ghx91MbS; arc=none smtp.client-ip=91.227.138.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nazs.hu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b="ghx91MbS"
Received: from localhost (localhost [127.0.0.1])
	by smtp02.rackhost.hu (Postfix) with ESMTP id 1A72E20BD2;
	Fri, 28 Nov 2025 09:18:41 +0100 (CET)
X-Virus-Scanned: Debian amavis at smtp02.rackhost.hu
Received: from smtp02.rackhost.hu ([127.0.0.1])
 by localhost (smtp02.rackhost.hu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id Y8F9Fh0A0p2n; Fri, 28 Nov 2025 09:18:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nazs.hu;
	s=smtp0220251106; t=1764317920;
	bh=pqgKOm0DTMMqK8Kq9y1xya8sC/9QGxxEGW7+vZYqsrQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=ghx91MbSQA0Tc03fBqFKN08vel1+pGLnsmitQaqUaLl+aA1zEyL7A0/kh+KL66Lkc
	 iDU7CWE4ERq4aGNFZdomTeEPOyt0ioXUanG3UHO7cfprRGgmnLyDFh38/oFguwp3B9
	 jICZ7ztItXUAQ+msbAFd6GPPGvgqOoLNOqW06zchX/R1yybkGYw+dwfeqqxuJfoqQ+
	 EwrTXh7sRVBg3sWN/LWyEEPION/Av/Vm3rs1xZg4qoui42pf6T1DEghggt1tQG4Jrk
	 TUuS3Lc7A5+pClTMMWt9uyyvsUbzgqdtsMzL73wzfAcxouRd6G4SpiPm/uHDlge5Jj
	 QAfGvwnOlTxMA==
Received: from [10.10.10.88] (catv-80-98-148-72.catv.fixed.one.hu [80.98.148.72])
	by smtp02.rackhost.hu (Postfix) with ESMTPSA id A3FF820BC3;
	Fri, 28 Nov 2025 09:18:40 +0100 (CET)
Message-ID: <ba1aa77d759f79db11f69bed4707a0502f65e53d.camel@nazs.hu>
Subject: Re: Kbuilds and Makefiles in building the kernel
From: Nagy =?ISO-8859-1?Q?=C1brah=E1m?= Zsombor <nagyabraham@nazs.hu>
To: Nick Huang <sef1548@gmail.com>
Cc: linux-newbie@vger.kernel.org
Date: Fri, 28 Nov 2025 09:18:40 +0100
In-Reply-To: <CABZAGREHMZwvxC3KizedrDUgTpvPbTmTDX-xde_uWzmSz7GdCA@mail.gmail.com>
References: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu>
	 <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com>
	 <d5ffb46e5f000c75343b4689956445ca4df03575.camel@nazs.hu>
	 <CABZAGREHMZwvxC3KizedrDUgTpvPbTmTDX-xde_uWzmSz7GdCA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-11-28 at 08:12 +0800, Nick Huang wrote:
> Nagy =C3=81brah=C3=A1m Zsombor <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=
=B411=E6=9C=8828=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8A=E5=8D=881:37=E5=AF=
=AB=E9=81=93=EF=BC=9A
> >=20
> > On Thu, 2025-11-27 at 19:26 +0800, Nick Huang wrote:
> > > Abraham Zsombor Nagy <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=B411=
=E6=9C=8827=E6=97=A5=E9=80=B1=E5=9B=9B
> > > =E4=B8=8B=E5=8D=886:43=E5=AF=AB=E9=81=93=EF=BC=9A
> > > >=20
> > > > Hello,
> > > >=20
> > > > https://docs.kernel.org/kbuild/makefiles.html#the-kbuild-files=C2=
=A0
> > > > stat
> > > > es
> > > > that when a directory contains a Kbuild file, the Makefile is
> > > > skipped in
> > > > that directory.
> > > >=20
> > > > It feels to me that both files are in use e.g. under arch/x86/
> > > > directory.
> > > >=20
> > > > I'm trying to see what files are the core of the kernel and
> > > > what
> > > > files
> > > > can be configured for x86 by partially parsing the Makefiles
> > > > and
> > > > the
> > > > Kbuild files. Would it be sufficient to parse them as:
> > > >=20
> > > > if file =3D=3D "Makefile" or file =3D=3D "Kbuild":
> > > >=20
> > > > =C2=A0> parse(file)
> > > >=20
> > > > or it should prefer the Kbuild file when present, or it is
> > > > using
> > > > some
> > > > other logic?
> > > >=20
> > > > Sincerely,
> > > >=20
> > > > Abraham Nagy
> > > >=20
> > > >=20
> > >=20
> > > Hi=C2=A0 Abraham Zsombor Nagy
> > > What functionality are you trying to add that would require
> > > modifying
> > > the Makefile or Kbuild?
> > >=20
> > > Sincerely,
> > > Nick Huang
> >=20
> > Hi Nick,
> >=20
> > I'm not modifying the build files, only writing a script that walks
> > through the source tree and parses Makefiles and Kbuild files to
> > list
> > what source files are linked to the kernel by default and by
> > CONFIG_*
> > options. This is to see what to read through to get a basic
> > understanding of the kernel at a given config.
> >=20
> > As I understand the documentation linked above, I should skip
> > Makefiles
> > when Kbuild files are present in a directory, but Makefiles feels
> > to
> > have important lines too.
> >=20
> > The approach is something like to extract object files and
> > subdirectories from lines that start with python regex "^\S+-y" or
> > "^\S+-\$\(CONFIG.*\)".
> >=20
> > Sincerely,
> > Abraham
> >=20
> >=20
>=20
> Hi Abraham
> You can use git grep -n "CONFIG_**" to find the files you need.
>=20
> Sincerely,
> Nick

Hello Nick,

Thank you, I've just tried git grep, it seems convenient, however I
still need to further script and fine-tune the output, in which case I
think having a customizable walk algorithm is the way to start with.

find/git & grep walks through the directory tree that could include
build files and sources that are from an incompatible set of config
options. Also, there are some Makefiles that end the line with a
backslash '\' saying to process the next line too, but which won't have
regex match.

A custom algorithm can start from a Makefile (and Kbuild file?)_and
walk directories only that are visible from there. This way I can
enforce a horizon of config options that are meaningfully able to
extend the kernel. E.g. starting with minimal config, seeing the
available additional configs, then in subsequent calls adding configs
one by one until I have a whole kernel (but without extra parts).

Make menuconfig combined with git grep and a text editor could help,
but it would require more manual handling to achieve the same.

Sincerely,
Abraham
