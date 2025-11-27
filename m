Received: from smtp02.rackhost.hu (smtp02.rackhost.hu [91.227.138.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6540C2D6E5C
	for <linux-newbie@vger.kernel.org>; Thu, 27 Nov 2025 17:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.227.138.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764265639; cv=none; b=Sx/aZGOIxhRbnpLIZcGK+3riJHsLTmDwLOogml8ipiuxuX04+ZHomKjQuFMVv9aFlKpb5gRGWLZaGU6bWWWxZyYMjbkUAxqquntUt2J4Z2jeDSgopWAxFU4Oqm1px1fE0PbIJ14cnEjuM9+cGLOhBeEnKca6h6iv8jYUJYyjQyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764265639; c=relaxed/simple;
	bh=VU4izVipSePPr26Ou01oAs1W1XpZId5fJk52X51CWUs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lw47RU/K4V84nu7/dJ3XU4fMMVdQyNpULLEMvlvVtk5MUsgbBqt3ncsnhRcL9VSj0/l7appiHaVz77qEnVDrUt2cYod9kGKDmJ/+0Ij5uzI+ocPUYhAL2lck4dLoocZRPXqsLcmlXP1/2cgLyFKDllY0QGoDA6n4TJODQx2zA7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu; spf=pass smtp.mailfrom=nazs.hu; dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b=AbszBdIp; arc=none smtp.client-ip=91.227.138.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nazs.hu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b="AbszBdIp"
Received: from localhost (localhost [127.0.0.1])
	by smtp02.rackhost.hu (Postfix) with ESMTP id 466A5202C4;
	Thu, 27 Nov 2025 18:37:22 +0100 (CET)
X-Virus-Scanned: Debian amavis at smtp02.rackhost.hu
Received: from smtp02.rackhost.hu ([127.0.0.1])
 by localhost (smtp02.rackhost.hu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id w-PAjmzUOOFi; Thu, 27 Nov 2025 18:37:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nazs.hu;
	s=smtp0220251106; t=1764265041;
	bh=VU4izVipSePPr26Ou01oAs1W1XpZId5fJk52X51CWUs=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=AbszBdIptLONTiop0W61dQUkGr3gO+GFEBRjaQhbwDUZjVvBD03/b9sy364IrPhwU
	 SL1lf4wZ0ZOepY1chlwmPRfExqYXOozTkZ+rehchNYe4K9TUEhyRcaKhNTr7LBH0GJ
	 94dGSubJkcgdS//46UgNfcWbtTFY8Ex6DvrwctSA22lyQ7ROaNMCVYJQN6m8bjzYM7
	 f0dizgZyOMGYtaWKEBmwpwV74r/l2oBJyO2uRfDTjjBEqeG5VnVqkP9beUqkgfqXZx
	 FifhO8st4qdTqk7sLYqOMfQ63o20OU7ijATYo/ChKAxpC/SUWxz/y6NRiwSL13xBV0
	 tAhGOZ094lu6A==
Received: from [10.102.89.181] (mobB9069E83.pool.netfone.hu [185.6.158.131])
	by smtp02.rackhost.hu (Postfix) with ESMTPSA id B54FA20113;
	Thu, 27 Nov 2025 18:37:21 +0100 (CET)
Message-ID: <d5ffb46e5f000c75343b4689956445ca4df03575.camel@nazs.hu>
Subject: Re: Kbuilds and Makefiles in building the kernel
From: Nagy =?ISO-8859-1?Q?=C1brah=E1m?= Zsombor <nagyabraham@nazs.hu>
To: Nick Huang <sef1548@gmail.com>
Cc: linux-newbie@vger.kernel.org
Date: Thu, 27 Nov 2025 18:36:31 +0100
In-Reply-To: <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com>
References: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu>
	 <CABZAGRH_78O_sWNK9w0rE04wD=NtLVVYfEsyFRGZGTqP3CVMnw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-11-27 at 19:26 +0800, Nick Huang wrote:
> Abraham Zsombor Nagy <nagyabraham@nazs.hu> =E6=96=BC 2025=E5=B9=B411=E6=
=9C=8827=E6=97=A5=E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=886:43=E5=AF=AB=E9=81=
=93=EF=BC=9A
> >=20
> > Hello,
> >=20
> > https://docs.kernel.org/kbuild/makefiles.html#the-kbuild-files=C2=A0sta=
t
> > es
> > that when a directory contains a Kbuild file, the Makefile is
> > skipped in
> > that directory.
> >=20
> > It feels to me that both files are in use e.g. under arch/x86/
> > directory.
> >=20
> > I'm trying to see what files are the core of the kernel and what
> > files
> > can be configured for x86 by partially parsing the Makefiles and
> > the
> > Kbuild files. Would it be sufficient to parse them as:
> >=20
> > if file =3D=3D "Makefile" or file =3D=3D "Kbuild":
> >=20
> > =C2=A0> parse(file)
> >=20
> > or it should prefer the Kbuild file when present, or it is using
> > some
> > other logic?
> >=20
> > Sincerely,
> >=20
> > Abraham Nagy
> >=20
> >=20
>=20
> Hi=C2=A0 Abraham Zsombor Nagy
> What functionality are you trying to add that would require modifying
> the Makefile or Kbuild?
>=20
> Sincerely,
> Nick Huang

Hi Nick,

I'm not modifying the build files, only writing a script that walks
through the source tree and parses Makefiles and Kbuild files to list
what source files are linked to the kernel by default and by CONFIG_*
options. This is to see what to read through to get a basic
understanding of the kernel at a given config.

As I understand the documentation linked above, I should skip Makefiles
when Kbuild files are present in a directory, but Makefiles feels to
have important lines too.

The approach is something like to extract object files and
subdirectories from lines that start with python regex "^\S+-y" or
"^\S+-\$\(CONFIG.*\)".

Sincerely,
Abraham


