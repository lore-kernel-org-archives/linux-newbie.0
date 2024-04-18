Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94CDD6D1C7
	for <linux-newbie@vger.kernel.org>; Thu, 18 Apr 2024 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713476435; cv=none; b=GrREmFKCarLep1VkJZceXbtI0F0FqJC7qKNyNY8L1yxxVlbi19Pd+mgchzHHvDULwiqOSe3fEZhWdB2lowzLIEgx7vNbtVjHK6uyNasQHBznT1eyKwFf7IWpQdjoxBSW9jWYuBEH9aoiAsbGjV/cdWxon83uf7nsD1PkfuR5x7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713476435; c=relaxed/simple;
	bh=LWjYRErAOclRuyS/oZYF4OLfZpRmF9zGh4hT9xKjOFE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZSzRv3tYaj4VVBDiDTUy5F65hRHFHqchFyF2pJOK2rhV+7BSqaQFeduXnoK61jevZnsrOoPe3+V7jpr3J+d43bMrIbRNfaCIvX0a7j/QUZ12b7KV+jnoQwkTX3rhBnx3hVgWFMrTiAuhVPXg6t5WiwONc8xfJAUi+Rnf2dgKBj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PL2spVMT; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PL2spVMT"
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-34a4772d5easo311306f8f.0
        for <linux-newbie@vger.kernel.org>; Thu, 18 Apr 2024 14:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713476432; x=1714081232; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xINNfUZnWl7ZMsN7ylumw4cdcXe/JbjYG717/UkYtHQ=;
        b=PL2spVMT6D9eVkLmcnGC5S56NwACG+BqrhuWw9vOUEgv+zDeJtxCXGjmgV05Z7FZdr
         WAwaF1Wy3pQUppTEW3m2VXOGDNV46v3s8Cj3i3kPkxvooSy5JjHTNnAJspWrp7MEi670
         iu7J2k1drQIoKZoco+CGIZHF/jdl6KZmd9jqAsAFtmtAjvAGDudfGQpxi36J8Lrv3Gpo
         ktkLqQFs2IwcgOk53jQ2Cds3lbEFD2zG8ET3kE+l2m3UeQkwMQccwZ84hZKR4vtKD9Of
         +y1Ub6KRlj1CLXCTD4DDCVnL8zkgN52V9eFs+VUgzv5H+/0I8qHAOiPlChKfF9FtKDx1
         ygUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713476432; x=1714081232;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xINNfUZnWl7ZMsN7ylumw4cdcXe/JbjYG717/UkYtHQ=;
        b=HZ1HUnmuUHi3AWy4TWPro1l3r/Dq50ioYGlkrxvEBIEvxbSUOT+x3tswpYNt083FHz
         o2W/GnM1EnkZZNPwOMBluuTTTpQeX5t/zIca7ZagkjL35t8cC33FxaAv+0D2NN5iJ5ub
         rGQo3rO9Gy0Ga58eX9Mij0Z/yhoGeWgk1KAErOJfYro5w6K6nx8vkzIIzo3Lb9UoeH32
         Af1Pj1qCVP2JeU6vGHsByXKCCAXXLQEDYoGRuDG7dKgMrjTkN0594mSuKSov18lr/tiI
         o5Ljbb4FVcCpqartPD5OGgDwzzWBjyBxadeqQHL73DhPMLrJ4Y2CRHgahYUVRBGHsXDD
         rYiA==
X-Gm-Message-State: AOJu0YwrHhxa1I5jSalQUyvPIvBm4nQ3SvzJ0Ed5052QoIY8Ihmb8t2l
	eSH0zXpqKAKTOX/d34HU9nvXjrxGqk27woSV9TcTcsQUkBkRNWU2udnXpuVsgqAE/SGefP0tUn/
	LILjlX6CUCwha5v41Qi7SqVZ2lNZIwi2N
X-Google-Smtp-Source: AGHT+IHw5zp3R4Dqr2aKXffOGmyCCf4MapdpkYdHrB1RTJ074ja36+ikRC5eYxd8cCsvhmHadyGTEIovv9DQc7hi+Ys=
X-Received: by 2002:adf:f08e:0:b0:349:fef8:73b3 with SMTP id
 n14-20020adff08e000000b00349fef873b3mr112752wro.14.1713476431682; Thu, 18 Apr
 2024 14:40:31 -0700 (PDT)
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
 <CAFkJGRdFuMoO4_mR-cR1NWjKQJnopN0v1R11-jSnLn+FKcOCdg@mail.gmail.com> <CAFkJGRcg+ThJ-xUve0=WorChW=-6PreLHXeM8YwtwzwpkHTu8g@mail.gmail.com>
In-Reply-To: <CAFkJGRcg+ThJ-xUve0=WorChW=-6PreLHXeM8YwtwzwpkHTu8g@mail.gmail.com>
From: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Date: Thu, 18 Apr 2024 17:40:20 -0400
Message-ID: <CAFkJGRcgJA4qe1AVi23ZQVPr_UEzkTBPH8f30g=OsKmii7QzQw@mail.gmail.com>
Subject: Re: Feedback on my development setup
To: ngn <ngn@ngn.tf>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Looks like breakpoints aren't working?  https://paste.debian.net/1314501/

On Thu, Apr 18, 2024 at 3:52=E2=80=AFPM Josh Marshall
<joshua.r.marshall.1991@gmail.com> wrote:
>
> Looks like there are some fiddly bits about configuring the kernel.
> Practically speaking, configuration needs to first be done within the
> VM, then everything can be moved and compiled outside of it.
>
> How do I submit a final writeup to put somewhere?
>
> On Thu, Apr 18, 2024 at 3:27=E2=80=AFPM Josh Marshall
> <joshua.r.marshall.1991@gmail.com> wrote:
> >
> > There's a type already.  Term 1 should be:
> >
> > qemu-system-x86_64 -s -cpu host -nographic -accel kvm -m 1G -kernel
> > arch/x86/boot/bzImage -append "root=3D/dev/sdb3 rw
> > console=3DttyS0,115200n8" -drive
> > format=3Dqcow2,file=3D$HOME/Downloads/Arch-Linux-x86_64-basic.qcow2
> >
> > However, the kernel panics because it can't mount the root FS on an
> > unknown block.  I don't know what the cause is.  However, the UUIDs
> > are scrambled from what are in GRUB.  Is there some sort of security
> > going on here?
> >
> > On Thu, Apr 18, 2024 at 3:15=E2=80=AFPM Josh Marshall
> > <joshua.r.marshall.1991@gmail.com> wrote:
> > >
> > > So the final outline would look like the following?
> > >
> > > Source:
> > > https://github.com/archlinux/arch-boxes
> > >
> > > setup:
> > >
> > > git clone $LINUX_REPO &
> > > wget https://geo.mirror.pkgbuild.com/images/latest/Arch-Linux-x86_64-=
basic.qcow2
> > >
> > > echo add-auto-load-safe-path
> > > =E2=80=9C$LINUX_REPO_PATH/scripts/gdb/vmlinux-gdb.py=E2=80=9D >>
> > > "$HOME/.config/gdb/gdbinit"
> > >
> > > echo =E2=80=98export LIBGUESTFS_DEBUG=3D1 LIBGUESTFS_TRACE=3D1=E2=80=
=99 >> $HOME/.bashrc
> > > echo =E2=80=98export USERCFLAGS=3D" -ggdb "=E2=80=99 >> $HOME/.bashrc
> > >
> > > push $LINUX_REPO_PATH
> > >
> > > echo =E2=80=9CCONFIG_SATA_AHCI=3Dy=E2=80=9D >> .config
> > > echo =E2=80=9CCONFIG_DEBUG_INFO=3Dy=E2=80=9D >> .config
> > > echo =E2=80=9CCONFIG_DEBUG_INFO_DWARF5=3Dy=E2=80=9D >> .config
> > > echo =E2=80=9CCONFIG_GDB_SCRIPTS=3Dy=E2=80=9D >> .config
> > > echo =E2=80=9CCONFIG_GDB_INFO_REDUCED=3Dn=E2=80=9D >> .config
> > > echo =E2=80=9CCONFIG_KGDB=3Dy=E2=80=9D >> .config
> > > echo =E2=80=9CCONFIG_FRAME_POINTER=3Dy=E2=80=9D >> .config
> > > echo =E2=80=9CCONFIG_KVM_GUEST=3Dy=E2=80=9D >> .config
> > > echo =E2=80=9CCONFIG_RANDOMIZE_BASE=3Dn=E2=80=9D >> .config
> > >
> > > make localyesconfig
> > > pop
> > >
> > > source $HOME/.bashrc
> > > mkdir -p $HOME/mnt/arch
> > >
> > > Iterate:
> > > guestmount  -w -a $HOME/Downloads/Arch-Linux-x86_64-basic.qcow2 -m
> > > /dev/sda3 ~/mnt/arch/
> > > <copy sources, files, perform compilation steps, etc as needed to
> > > inside the VM image as needed each development iteration>
> > > umount ~/mnt/arch
> > >
> > > Term 1:
> > > qemu-system-x86_64 -s -cpu host -nographic -accel kvm -m 1G -kernel
> > > vmlinux2 -append "root=3D/dev/sda3 rw console=3DttyS0,115200n8 nokasl=
r
> > > " -drive format=3Dqcow2,file=3D$HOME/Downloads/Arch-Linux-x86_64-basi=
c.qcow2
> > >
> > > Term 2:
> > > gdb $LINUX_REPO_PATH/vmlinux
> > > : target remote:1234
> > > <set break points>
> > > : continue
> > >
> > > On Thu, Apr 18, 2024 at 11:36=E2=80=AFAM ngn <ngn@ngn.tf> wrote:
> > > >
> > > > On Wed, Apr 17, 2024 at 05:18:34PM -0400, Josh Marshall wrote:
> > > > > One issue I'm seeing is that gdb isn't seeing debugging symbols. =
 I'm
> > > > > getting the following output with the config linked.
> > > > >
> > > > > https://pastebin.com/tjq7QtQk
> > > > >
> > > > > ```
> > > > > anadon@botamon:~/Documents/code/linux$ gdb arch/x86/boot/bzImage
> > > > > GNU gdb (Ubuntu 15.0.50.20240403-0ubuntu1) 15.0.50.20240403-git
> > > > > Copyright (C) 2024 Free Software Foundation, Inc.
> > > > > License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licens=
es/gpl.html>
> > > > > This is free software: you are free to change and redistribute it=
.
> > > > > There is NO WARRANTY, to the extent permitted by law.
> > > > > Type "show copying" and "show warranty" for details.
> > > > > This GDB was configured as "x86_64-linux-gnu".
> > > > > Type "show configuration" for configuration details.
> > > > > For bug reporting instructions, please see:
> > > > > <https://www.gnu.org/software/gdb/bugs/>.
> > > > > Find the GDB manual and other documentation resources online at:
> > > > >     <http://www.gnu.org/software/gdb/documentation/>.
> > > > >
> > > > > For help, type "help".
> > > > > Type "apropos word" to search for commands related to "word"...
> > > > > Reading symbols from arch/x86/boot/bzImage...
> > > > > (No debugging symbols found in arch/x86/boot/bzImage)
> > > > > ```
> > > > >
> > > >
> > > > You should load vmlinux to the gdb, not the bzImage. bzImage is a
> > > > compressed version of the kernel and its used boot, vmlinux is the
> > > > static ELF binary that contains the debugging symbols.
