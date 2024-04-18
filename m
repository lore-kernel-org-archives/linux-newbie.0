Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5928516C685
	for <linux-newbie@vger.kernel.org>; Thu, 18 Apr 2024 19:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713468459; cv=none; b=EtcLJ9+4XwL6vivCLxszKzYLVyL1LKUITDgAijqs83RIHD4bPXv+PQPbntO0LeF/mrU/GCjIU14WkkknERhtzG6ebkaYbHdS7NpV1GKnl7NFBfnDLR7WDyFgF/aKzm8LWkMOAC2/F2q9VZUmTGa1benJv0NsnDjdc9j8bEOeLqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713468459; c=relaxed/simple;
	bh=p6/AWmCP8EA51q3Y9eUG39UkLIxZSPGVp3VIX/TixWk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ab7+0ZdRTYPlrSkDwpMSK8EdLGRKr2tpedWCBCW9da7y+u29O+Vw9VIe2HJT/yt0sRxwIg9qRULk9AlObBCLjA1FUCLvPRURZp+qunyb8Alfc2ZvWj8lcbHZAy08yiDdXW3ILZfmbFWvJs8IUIvKzcemrYdwd5v5/Go7JMxoZoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jX1LUcAB; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jX1LUcAB"
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-349bf9d46acso682233f8f.0
        for <linux-newbie@vger.kernel.org>; Thu, 18 Apr 2024 12:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713468456; x=1714073256; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1qRMp1kiNBWOkTjxYnaBNgBp5Bbe9A3x46iTLAV9l+0=;
        b=jX1LUcABveFUNrebqhVthSRvo9Z0QKoc5YzHeaa4makeBLkC1nx/EAXFDKegXtwqqQ
         NK0P8nhbW2exGG+hrJWbJ7vmOqGAGU6H44S/KbieUMfisEUPTa7V0vbE7DUSYG8CGWUM
         I+xjd9QpGGCy9ZFIZUV51ImjlUSDXXE1i/ITV1RrDEvE9PRY3z4KZWTungajPe761WE0
         QctJBYEX4YeDMU2rLOhOIGQJBDdI56DlvUcWIuL/cep2jIRYO0bzVZ1cZQqr2gILz4TW
         0Gu36tKyeCAwxuVKIcJevXrIx0xLSg1V4s2mmwp8ZDQTDVIEeSm9Do6NcypELUjDPJyO
         bbtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713468456; x=1714073256;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1qRMp1kiNBWOkTjxYnaBNgBp5Bbe9A3x46iTLAV9l+0=;
        b=vk1rOHoWQJMiy8OcggBySbb33xEg9HoaEdlPcr9NEwAnq1oHrwElKEuyIDe6ccxm2o
         jGM2lB68PI8a3yu5YGYrZWQg8F4IMhp2kO0LlD4KAKyC3yQy28QQxqen8/Y1whxTVdBT
         LArwE7loz1LYtYRp0+i7StIBuE8Hj0j6eYIdDa3TWij/XkTgJK3Dh9gRwpSCXfI+QzDF
         YadiNixSJT+WDjMaaVBljag04i8tcAdWaFwOaAJzQxYd5/PhS5Fn4R0Bi9eajoaudWxU
         Cyzp4hnAJvz2rHRRP+jdSoZXhut8qcvvinn5qg+Q3NFxuhY93NedvgjmzHWbcbLhHx00
         cm/A==
X-Gm-Message-State: AOJu0YxGRdJCgTNVzVGMcxpmeaPPKRK09EUSz9Y085UDvhjGQFiTYyio
	KSJ1YtMHQePh6UAfS/EAaf5RerIKt7Ou7Mq1sMWLzCyodZAl+nqe3ujDKFAM5uF/4Nx8njZhrtB
	0PylOzlwKKGe1+6C+/EJbbwIlKWpxMHJW
X-Google-Smtp-Source: AGHT+IE8/rQpLRGixl0NbmpAk1S0wqErV/ui+FiKWa4czY6VJKX59pFUSyDrIwVSzpZLO9r98wbj+OwVC5Gsx9s4bXY=
X-Received: by 2002:adf:e6c9:0:b0:346:bca2:1a30 with SMTP id
 y9-20020adfe6c9000000b00346bca21a30mr2239432wrm.56.1713468455512; Thu, 18 Apr
 2024 12:27:35 -0700 (PDT)
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
 <CAFkJGRfK=1f8tfWO8G0v8SOmCwCgK7P5y7g2My47VG6Obb1DNw@mail.gmail.com>
 <ZiE9ydgMtpKOBLDk@archbtw> <CAFkJGRddGHK0j4CcQUoRKiD3afniLY=rRV5npY5wpauqqY0XZg@mail.gmail.com>
In-Reply-To: <CAFkJGRddGHK0j4CcQUoRKiD3afniLY=rRV5npY5wpauqqY0XZg@mail.gmail.com>
From: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Date: Thu, 18 Apr 2024 15:27:24 -0400
Message-ID: <CAFkJGRdFuMoO4_mR-cR1NWjKQJnopN0v1R11-jSnLn+FKcOCdg@mail.gmail.com>
Subject: Re: Feedback on my development setup
To: ngn <ngn@ngn.tf>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There's a type already.  Term 1 should be:

qemu-system-x86_64 -s -cpu host -nographic -accel kvm -m 1G -kernel
arch/x86/boot/bzImage -append "root=3D/dev/sdb3 rw
console=3DttyS0,115200n8" -drive
format=3Dqcow2,file=3D$HOME/Downloads/Arch-Linux-x86_64-basic.qcow2

However, the kernel panics because it can't mount the root FS on an
unknown block.  I don't know what the cause is.  However, the UUIDs
are scrambled from what are in GRUB.  Is there some sort of security
going on here?

On Thu, Apr 18, 2024 at 3:15=E2=80=AFPM Josh Marshall
<joshua.r.marshall.1991@gmail.com> wrote:
>
> So the final outline would look like the following?
>
> Source:
> https://github.com/archlinux/arch-boxes
>
> setup:
>
> git clone $LINUX_REPO &
> wget https://geo.mirror.pkgbuild.com/images/latest/Arch-Linux-x86_64-basi=
c.qcow2
>
> echo add-auto-load-safe-path
> =E2=80=9C$LINUX_REPO_PATH/scripts/gdb/vmlinux-gdb.py=E2=80=9D >>
> "$HOME/.config/gdb/gdbinit"
>
> echo =E2=80=98export LIBGUESTFS_DEBUG=3D1 LIBGUESTFS_TRACE=3D1=E2=80=99 >=
> $HOME/.bashrc
> echo =E2=80=98export USERCFLAGS=3D" -ggdb "=E2=80=99 >> $HOME/.bashrc
>
> push $LINUX_REPO_PATH
>
> echo =E2=80=9CCONFIG_SATA_AHCI=3Dy=E2=80=9D >> .config
> echo =E2=80=9CCONFIG_DEBUG_INFO=3Dy=E2=80=9D >> .config
> echo =E2=80=9CCONFIG_DEBUG_INFO_DWARF5=3Dy=E2=80=9D >> .config
> echo =E2=80=9CCONFIG_GDB_SCRIPTS=3Dy=E2=80=9D >> .config
> echo =E2=80=9CCONFIG_GDB_INFO_REDUCED=3Dn=E2=80=9D >> .config
> echo =E2=80=9CCONFIG_KGDB=3Dy=E2=80=9D >> .config
> echo =E2=80=9CCONFIG_FRAME_POINTER=3Dy=E2=80=9D >> .config
> echo =E2=80=9CCONFIG_KVM_GUEST=3Dy=E2=80=9D >> .config
> echo =E2=80=9CCONFIG_RANDOMIZE_BASE=3Dn=E2=80=9D >> .config
>
> make localyesconfig
> pop
>
> source $HOME/.bashrc
> mkdir -p $HOME/mnt/arch
>
> Iterate:
> guestmount  -w -a $HOME/Downloads/Arch-Linux-x86_64-basic.qcow2 -m
> /dev/sda3 ~/mnt/arch/
> <copy sources, files, perform compilation steps, etc as needed to
> inside the VM image as needed each development iteration>
> umount ~/mnt/arch
>
> Term 1:
> qemu-system-x86_64 -s -cpu host -nographic -accel kvm -m 1G -kernel
> vmlinux2 -append "root=3D/dev/sda3 rw console=3DttyS0,115200n8 nokaslr
> " -drive format=3Dqcow2,file=3D$HOME/Downloads/Arch-Linux-x86_64-basic.qc=
ow2
>
> Term 2:
> gdb $LINUX_REPO_PATH/vmlinux
> : target remote:1234
> <set break points>
> : continue
>
> On Thu, Apr 18, 2024 at 11:36=E2=80=AFAM ngn <ngn@ngn.tf> wrote:
> >
> > On Wed, Apr 17, 2024 at 05:18:34PM -0400, Josh Marshall wrote:
> > > One issue I'm seeing is that gdb isn't seeing debugging symbols.  I'm
> > > getting the following output with the config linked.
> > >
> > > https://pastebin.com/tjq7QtQk
> > >
> > > ```
> > > anadon@botamon:~/Documents/code/linux$ gdb arch/x86/boot/bzImage
> > > GNU gdb (Ubuntu 15.0.50.20240403-0ubuntu1) 15.0.50.20240403-git
> > > Copyright (C) 2024 Free Software Foundation, Inc.
> > > License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/g=
pl.html>
> > > This is free software: you are free to change and redistribute it.
> > > There is NO WARRANTY, to the extent permitted by law.
> > > Type "show copying" and "show warranty" for details.
> > > This GDB was configured as "x86_64-linux-gnu".
> > > Type "show configuration" for configuration details.
> > > For bug reporting instructions, please see:
> > > <https://www.gnu.org/software/gdb/bugs/>.
> > > Find the GDB manual and other documentation resources online at:
> > >     <http://www.gnu.org/software/gdb/documentation/>.
> > >
> > > For help, type "help".
> > > Type "apropos word" to search for commands related to "word"...
> > > Reading symbols from arch/x86/boot/bzImage...
> > > (No debugging symbols found in arch/x86/boot/bzImage)
> > > ```
> > >
> >
> > You should load vmlinux to the gdb, not the bzImage. bzImage is a
> > compressed version of the kernel and its used boot, vmlinux is the
> > static ELF binary that contains the debugging symbols.
