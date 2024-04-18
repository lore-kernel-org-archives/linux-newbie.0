Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776EF1A0AED
	for <linux-newbie@vger.kernel.org>; Thu, 18 Apr 2024 19:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713469948; cv=none; b=AmROOwolGdQiJF99XVYUptrKriP+mMQfW7xBhpVoBtasQqp5SJz2nPme8wQisNBNRkpIuaS1mciBusYgnhEu4qyGG8vLJJzUQ2gPL1nn863w9tcDDBj/gfq9OTRh5HeAimzYpIBqZWsn1MizWbJOeZV0rcaYwF27lyRmjdNCXkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713469948; c=relaxed/simple;
	bh=prg8kM8e1QENrve9aggnklDHURacQFaq3qZLGgTNXxw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kiuu8wOLTvActI/LmFt/4rfAAb0qvHf27CPIiweWCYje2+WH7MkWJYn/mV3ebA/Mug7Q2CDgFWeF0R2nDUD6Apt1j3rONRdEtxz5ozG6VLeq36z/yabFJjCsZPCmz2rk5VvItJoVEfFHrXW/pnx/5AKptahc+C85+9qBjZ3KeEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O34cNKId; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O34cNKId"
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-61ad5f2c231so14794577b3.2
        for <linux-newbie@vger.kernel.org>; Thu, 18 Apr 2024 12:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713469945; x=1714074745; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X1ph7dE8D7LGpO9FsWS/Nji8NzlWqF9FeEX65jbHLNQ=;
        b=O34cNKIdSFzsYbynSZSpwFPa4adfmC4ZC4PrRbE6R/bt7P0tEqtflapkFnq7nGKCy+
         0qYahaswHPNDEN5uJGZl8gCmH/nKTHwQcz14un01NuSlAwK7bvKqzlOYHfRLtOvAytOr
         hgHcThQuLFqi1cpYgU/15BCXLyk4zvIW+01XnXT2nNUsojxEq6+CNUO1iOxeqJgfq5KX
         GLJ3YdFAzVIPt1zCgxNi+vtVPTRv6rMh7sMNJ9rKKG4YL4g9VW4569Jnx/uF9O2fQNiG
         3S04pk8vwE6Y8zZ94od/jiJPWEO8idoFzJwAaeq/wOmgm1i9Mi6xgELkYDiTaRFvop5f
         LQJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713469945; x=1714074745;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X1ph7dE8D7LGpO9FsWS/Nji8NzlWqF9FeEX65jbHLNQ=;
        b=OlS/i6gScBFJFN59G+sPCU7qEwVqX8gJc5tf9ib5sjnO4o8Xxy+pH2ZYojSfwYMsnj
         +/acPioKZ6vUyDr33+cPgdhcYJVDroHNiDBXwIiHfkcCp8ZJP9uc+XAQ5oPyjBLgViI7
         6CKrInmdAPsdNK1JmFh5JKLC6/M81nRIwj7OjHvm8/ePibFOEZ2+vXyno4iiylxpQfFj
         MLIrP3T4OcB0S0y7mVzmUA4G89BjmAx0ZZAQQIWGkOx70/O89P8Prht2qhhM0J+0WHRq
         YivknBG4a7NeDcUiXtHlxm9fkipyYdpt5FFMqbLNRJOL0sFxs1osenmuQkfU2oxy22pd
         /87A==
X-Gm-Message-State: AOJu0YyoqquPUvI3gUYWZvF3l6C0xTgMQcQtTarwPah/44H3b7zF7DYZ
	XLWEgZmhZpYW6HTMvuDNPqeLsdMbMChvBqLAAynsOc4UF7wuuhhA2Oo2fbwIOG61W17/dAxhQ6k
	APbbAcAB8JuQLnIgPCU535AOVToWUZw==
X-Google-Smtp-Source: AGHT+IHGMk8zUsl30+JKwFQ81RrA1rxx8azkjA5eqVskADCHBroDUSPCV+53JHGyC/qLCWmP7xBjNa8PDAs6szR0/4g=
X-Received: by 2002:a25:187:0:b0:de4:5c7d:2855 with SMTP id
 129-20020a250187000000b00de45c7d2855mr3022500ybb.37.1713469945366; Thu, 18
 Apr 2024 12:52:25 -0700 (PDT)
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
 <CAFkJGRdFuMoO4_mR-cR1NWjKQJnopN0v1R11-jSnLn+FKcOCdg@mail.gmail.com>
In-Reply-To: <CAFkJGRdFuMoO4_mR-cR1NWjKQJnopN0v1R11-jSnLn+FKcOCdg@mail.gmail.com>
From: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Date: Thu, 18 Apr 2024 15:52:13 -0400
Message-ID: <CAFkJGRcg+ThJ-xUve0=WorChW=-6PreLHXeM8YwtwzwpkHTu8g@mail.gmail.com>
Subject: Re: Feedback on my development setup
To: ngn <ngn@ngn.tf>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Looks like there are some fiddly bits about configuring the kernel.
Practically speaking, configuration needs to first be done within the
VM, then everything can be moved and compiled outside of it.

How do I submit a final writeup to put somewhere?

On Thu, Apr 18, 2024 at 3:27=E2=80=AFPM Josh Marshall
<joshua.r.marshall.1991@gmail.com> wrote:
>
> There's a type already.  Term 1 should be:
>
> qemu-system-x86_64 -s -cpu host -nographic -accel kvm -m 1G -kernel
> arch/x86/boot/bzImage -append "root=3D/dev/sdb3 rw
> console=3DttyS0,115200n8" -drive
> format=3Dqcow2,file=3D$HOME/Downloads/Arch-Linux-x86_64-basic.qcow2
>
> However, the kernel panics because it can't mount the root FS on an
> unknown block.  I don't know what the cause is.  However, the UUIDs
> are scrambled from what are in GRUB.  Is there some sort of security
> going on here?
>
> On Thu, Apr 18, 2024 at 3:15=E2=80=AFPM Josh Marshall
> <joshua.r.marshall.1991@gmail.com> wrote:
> >
> > So the final outline would look like the following?
> >
> > Source:
> > https://github.com/archlinux/arch-boxes
> >
> > setup:
> >
> > git clone $LINUX_REPO &
> > wget https://geo.mirror.pkgbuild.com/images/latest/Arch-Linux-x86_64-ba=
sic.qcow2
> >
> > echo add-auto-load-safe-path
> > =E2=80=9C$LINUX_REPO_PATH/scripts/gdb/vmlinux-gdb.py=E2=80=9D >>
> > "$HOME/.config/gdb/gdbinit"
> >
> > echo =E2=80=98export LIBGUESTFS_DEBUG=3D1 LIBGUESTFS_TRACE=3D1=E2=80=99=
 >> $HOME/.bashrc
> > echo =E2=80=98export USERCFLAGS=3D" -ggdb "=E2=80=99 >> $HOME/.bashrc
> >
> > push $LINUX_REPO_PATH
> >
> > echo =E2=80=9CCONFIG_SATA_AHCI=3Dy=E2=80=9D >> .config
> > echo =E2=80=9CCONFIG_DEBUG_INFO=3Dy=E2=80=9D >> .config
> > echo =E2=80=9CCONFIG_DEBUG_INFO_DWARF5=3Dy=E2=80=9D >> .config
> > echo =E2=80=9CCONFIG_GDB_SCRIPTS=3Dy=E2=80=9D >> .config
> > echo =E2=80=9CCONFIG_GDB_INFO_REDUCED=3Dn=E2=80=9D >> .config
> > echo =E2=80=9CCONFIG_KGDB=3Dy=E2=80=9D >> .config
> > echo =E2=80=9CCONFIG_FRAME_POINTER=3Dy=E2=80=9D >> .config
> > echo =E2=80=9CCONFIG_KVM_GUEST=3Dy=E2=80=9D >> .config
> > echo =E2=80=9CCONFIG_RANDOMIZE_BASE=3Dn=E2=80=9D >> .config
> >
> > make localyesconfig
> > pop
> >
> > source $HOME/.bashrc
> > mkdir -p $HOME/mnt/arch
> >
> > Iterate:
> > guestmount  -w -a $HOME/Downloads/Arch-Linux-x86_64-basic.qcow2 -m
> > /dev/sda3 ~/mnt/arch/
> > <copy sources, files, perform compilation steps, etc as needed to
> > inside the VM image as needed each development iteration>
> > umount ~/mnt/arch
> >
> > Term 1:
> > qemu-system-x86_64 -s -cpu host -nographic -accel kvm -m 1G -kernel
> > vmlinux2 -append "root=3D/dev/sda3 rw console=3DttyS0,115200n8 nokaslr
> > " -drive format=3Dqcow2,file=3D$HOME/Downloads/Arch-Linux-x86_64-basic.=
qcow2
> >
> > Term 2:
> > gdb $LINUX_REPO_PATH/vmlinux
> > : target remote:1234
> > <set break points>
> > : continue
> >
> > On Thu, Apr 18, 2024 at 11:36=E2=80=AFAM ngn <ngn@ngn.tf> wrote:
> > >
> > > On Wed, Apr 17, 2024 at 05:18:34PM -0400, Josh Marshall wrote:
> > > > One issue I'm seeing is that gdb isn't seeing debugging symbols.  I=
'm
> > > > getting the following output with the config linked.
> > > >
> > > > https://pastebin.com/tjq7QtQk
> > > >
> > > > ```
> > > > anadon@botamon:~/Documents/code/linux$ gdb arch/x86/boot/bzImage
> > > > GNU gdb (Ubuntu 15.0.50.20240403-0ubuntu1) 15.0.50.20240403-git
> > > > Copyright (C) 2024 Free Software Foundation, Inc.
> > > > License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses=
/gpl.html>
> > > > This is free software: you are free to change and redistribute it.
> > > > There is NO WARRANTY, to the extent permitted by law.
> > > > Type "show copying" and "show warranty" for details.
> > > > This GDB was configured as "x86_64-linux-gnu".
> > > > Type "show configuration" for configuration details.
> > > > For bug reporting instructions, please see:
> > > > <https://www.gnu.org/software/gdb/bugs/>.
> > > > Find the GDB manual and other documentation resources online at:
> > > >     <http://www.gnu.org/software/gdb/documentation/>.
> > > >
> > > > For help, type "help".
> > > > Type "apropos word" to search for commands related to "word"...
> > > > Reading symbols from arch/x86/boot/bzImage...
> > > > (No debugging symbols found in arch/x86/boot/bzImage)
> > > > ```
> > > >
> > >
> > > You should load vmlinux to the gdb, not the bzImage. bzImage is a
> > > compressed version of the kernel and its used boot, vmlinux is the
> > > static ELF binary that contains the debugging symbols.
