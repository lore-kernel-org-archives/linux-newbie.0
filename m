Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C33F6A00E
	for <linux-newbie@vger.kernel.org>; Thu, 18 Apr 2024 19:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713467749; cv=none; b=SN+DI9SR+i6SjpG3poHq/xWh0LYDBxhqKaHgNCGBx9JQPv596es8ykupULdLSSnWUCnX6e8lwhMuX+7toPJKlWkTB6HqwofrbC34cGj9RWOlgK3gopcm7E+sd5hWc1pM88Xm3errZgsNgFfBiMtnvKfq/Hekd9IjLoHH+bMziP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713467749; c=relaxed/simple;
	bh=uON16zX31grVu07re6T+jXX1o30jZjaUO/DwjnRWJuM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jqTE+gydwGIQjLJuM7o5+n61kcGaDoGpggQDYQJeEku95S/etwx6LE+sZPwCceZjB7QLJ7o0Xi/Q6UTB5VrAqpsdqJYzG3u1s8FdRZSvdWEVBRHVG4ErBSNpcfHjt7vlQHtMfqUyvNE2o21764dCE42IaJq9hDBs0CuW07wbr74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QPZHC1iO; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QPZHC1iO"
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-343c2f5b50fso747548f8f.2
        for <linux-newbie@vger.kernel.org>; Thu, 18 Apr 2024 12:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713467746; x=1714072546; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pauvGU7fngVyFjyyeZtne4QJFq0XSr3hB26xDILu9uM=;
        b=QPZHC1iO0ng6U4poI92M+YfDWjLWTPYipJLFxMJ6enBl8Zv7D1uC8Ff/llPkEq7cD0
         eutkKUXqo1XhlBcj3k/2UsWmlRbQvW0Ilhv7yl2rAc7NAT77j+WGxJ9fRCRIriMvXcM2
         jlsw24exxtlY93NJWzQxgkfdCZDgNk+u64bCpVuwzEf0NEzUx/progrWA0Sv81aR+O0m
         ngXyZwreJlVMu4P641FhjGrp+wFsxDp/K+cX2LxkEI21Q62/1FTPpgTSlzsHuMK1K5yL
         4eQobOf/N3M61shwkQcGOMl1AKPcKLy9QXB3H1H7i0PbCEr/NO1zl8jsB+tNPZdAmg+Z
         Osvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713467746; x=1714072546;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pauvGU7fngVyFjyyeZtne4QJFq0XSr3hB26xDILu9uM=;
        b=iKqRpB6nNlnn19u3/vUcJ44wNlEMcWj/xWafcyAjDwdLZeqNUWkAngjQtfHqdjdK00
         woNNBdkvy3pUyHI5sDy+ApbrG6saer/3DUDo0TeZ0FDjED6gNP1ZMeu0IYakV/UrePFN
         z1G/jteuwXydli/15MVLiBm09KStcTUa2FI9Qk7Br+w4EA1bBniLNinZDLl6d9qAonWy
         atUzlo1HW6+Xma2mvY6XI0Teq/awywuo4AAJ7/jAFqSwxxTxID3j7PjBMRkfZExo3lWm
         CS2Z2hkb3vx1d9LJEyYtNHq2xlGyouhEEHLRHjq2aIzOuwJcp3hrDt3JJbnhut46AnwK
         Gs6Q==
X-Gm-Message-State: AOJu0YyxaRuLSfHPzuKSlbyp9nG348p1FPDVxINru9VWzy7B05s48R7K
	rUvI3cQviQqE0f7iZzzd0qI1/akIyHwMzu2f5OfFmu5CI1J8FJr2m+yT7HbE0CNFpKgBzPHCtIG
	2FDBrzu9hitPvVUOs2sFwZvQSOFyQmupE
X-Google-Smtp-Source: AGHT+IHFAZtMTR69m4ZqYNPNw5H3MMREpGfHlojPV00VBfDVMPTrk4eoGeqP+wFHQlOGDSlWZRdswTX1fZpjNRbisLk=
X-Received: by 2002:adf:f7ce:0:b0:347:b501:477b with SMTP id
 a14-20020adff7ce000000b00347b501477bmr2442366wrq.33.1713467745538; Thu, 18
 Apr 2024 12:15:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAFkJGRcWdHpbxjBrynncOb3apWO7d5+WP82WqcHeq=hsc65MAA@mail.gmail.com>
 <Zh6RguShFVeDdbNw@archbtw> <CAFkJGRc824vYEufG=6ZVPAW2iVpd0NDThJadZVrUk_ZND_qJag@mail.gmail.com>
 <Zh6Xbqijp8rRGo1H@archbtw> <CAFkJGRe+UpNPSnSL623o6G+NCkK_uGPx-NCNLQx0vSGpMo98eg@mail.gmail.com>
 <CAPzh0z8RySn429XYQHoP_c9UA+pb6SLHGhH40vQDhc3P2xiysQ@mail.gmail.com>
 <CAFkJGRfK=1f8tfWO8G0v8SOmCwCgK7P5y7g2My47VG6Obb1DNw@mail.gmail.com> <ZiE9ydgMtpKOBLDk@archbtw>
In-Reply-To: <ZiE9ydgMtpKOBLDk@archbtw>
From: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Date: Thu, 18 Apr 2024 15:15:34 -0400
Message-ID: <CAFkJGRddGHK0j4CcQUoRKiD3afniLY=rRV5npY5wpauqqY0XZg@mail.gmail.com>
Subject: Re: Feedback on my development setup
To: ngn <ngn@ngn.tf>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So the final outline would look like the following?

Source:
https://github.com/archlinux/arch-boxes

setup:

git clone $LINUX_REPO &
wget https://geo.mirror.pkgbuild.com/images/latest/Arch-Linux-x86_64-basic.=
qcow2

echo add-auto-load-safe-path
=E2=80=9C$LINUX_REPO_PATH/scripts/gdb/vmlinux-gdb.py=E2=80=9D >>
"$HOME/.config/gdb/gdbinit"

echo =E2=80=98export LIBGUESTFS_DEBUG=3D1 LIBGUESTFS_TRACE=3D1=E2=80=99 >> =
$HOME/.bashrc
echo =E2=80=98export USERCFLAGS=3D" -ggdb "=E2=80=99 >> $HOME/.bashrc

push $LINUX_REPO_PATH

echo =E2=80=9CCONFIG_SATA_AHCI=3Dy=E2=80=9D >> .config
echo =E2=80=9CCONFIG_DEBUG_INFO=3Dy=E2=80=9D >> .config
echo =E2=80=9CCONFIG_DEBUG_INFO_DWARF5=3Dy=E2=80=9D >> .config
echo =E2=80=9CCONFIG_GDB_SCRIPTS=3Dy=E2=80=9D >> .config
echo =E2=80=9CCONFIG_GDB_INFO_REDUCED=3Dn=E2=80=9D >> .config
echo =E2=80=9CCONFIG_KGDB=3Dy=E2=80=9D >> .config
echo =E2=80=9CCONFIG_FRAME_POINTER=3Dy=E2=80=9D >> .config
echo =E2=80=9CCONFIG_KVM_GUEST=3Dy=E2=80=9D >> .config
echo =E2=80=9CCONFIG_RANDOMIZE_BASE=3Dn=E2=80=9D >> .config

make localyesconfig
pop

source $HOME/.bashrc
mkdir -p $HOME/mnt/arch

Iterate:
guestmount  -w -a $HOME/Downloads/Arch-Linux-x86_64-basic.qcow2 -m
/dev/sda3 ~/mnt/arch/
<copy sources, files, perform compilation steps, etc as needed to
inside the VM image as needed each development iteration>
umount ~/mnt/arch

Term 1:
qemu-system-x86_64 -s -cpu host -nographic -accel kvm -m 1G -kernel
vmlinux2 -append "root=3D/dev/sda3 rw console=3DttyS0,115200n8 nokaslr
" -drive format=3Dqcow2,file=3D$HOME/Downloads/Arch-Linux-x86_64-basic.qcow=
2

Term 2:
gdb $LINUX_REPO_PATH/vmlinux
: target remote:1234
<set break points>
: continue

On Thu, Apr 18, 2024 at 11:36=E2=80=AFAM ngn <ngn@ngn.tf> wrote:
>
> On Wed, Apr 17, 2024 at 05:18:34PM -0400, Josh Marshall wrote:
> > One issue I'm seeing is that gdb isn't seeing debugging symbols.  I'm
> > getting the following output with the config linked.
> >
> > https://pastebin.com/tjq7QtQk
> >
> > ```
> > anadon@botamon:~/Documents/code/linux$ gdb arch/x86/boot/bzImage
> > GNU gdb (Ubuntu 15.0.50.20240403-0ubuntu1) 15.0.50.20240403-git
> > Copyright (C) 2024 Free Software Foundation, Inc.
> > License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl=
.html>
> > This is free software: you are free to change and redistribute it.
> > There is NO WARRANTY, to the extent permitted by law.
> > Type "show copying" and "show warranty" for details.
> > This GDB was configured as "x86_64-linux-gnu".
> > Type "show configuration" for configuration details.
> > For bug reporting instructions, please see:
> > <https://www.gnu.org/software/gdb/bugs/>.
> > Find the GDB manual and other documentation resources online at:
> >     <http://www.gnu.org/software/gdb/documentation/>.
> >
> > For help, type "help".
> > Type "apropos word" to search for commands related to "word"...
> > Reading symbols from arch/x86/boot/bzImage...
> > (No debugging symbols found in arch/x86/boot/bzImage)
> > ```
> >
>
> You should load vmlinux to the gdb, not the bzImage. bzImage is a
> compressed version of the kernel and its used boot, vmlinux is the
> static ELF binary that contains the debugging symbols.
