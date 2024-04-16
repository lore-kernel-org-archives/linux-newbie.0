Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969FA12E1E4
	for <linux-newbie@vger.kernel.org>; Tue, 16 Apr 2024 15:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713279850; cv=none; b=Ug9Y2kcYz2+CweaaACKFeRzC8MS0Hifjs8XFrTR+0zJHjttv4qLHqUXDO1DY+Lzd+MgEr0DFt1SJf0mZMZPkqfc+sRZKMtyLfjidbY4NJ1V+1hBuXQ1w7NI+KXar5GsOEP+8tpmgUpAVUmIdmzLbtF+2+Ff2qrQPiJy5P+D9ctc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713279850; c=relaxed/simple;
	bh=iF7tDPC8bJ89ZqenkqtHyYB78pufvC4JgpPKbb1AZCk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GL9i5s9XX5sqp83nsl1Yr8U3slG2bqGZR6NBHI7Zz0oOI9qPjhP5/SwA72XrveX+B0trIIhLxEQfkIEr2nHS0LPgkm/P/2ewXngOlErOwHYxhOGppW0jACWgeRmYowKaXFGpJJ2jVoA9GywGX61KNrTDZBHMLrS1lo1BIFn0Ajc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rmpg5q+w; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rmpg5q+w"
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-344047ac7e4so3331637f8f.0
        for <linux-newbie@vger.kernel.org>; Tue, 16 Apr 2024 08:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713279844; x=1713884644; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wPX0yJRzghDLWjvpnkORGsIK5FM8GPTBAmYj2PLF35E=;
        b=Rmpg5q+wLJtwXPLvxdlGXOqjOozSCeoDoC0G98eyrNysJyQsStsHu5ttbdNz0qq/sy
         vAhymiJVdxisiDLQIam27Y2mbVMitJUnK4BecipnDQgQDburG7fCKEsAtYU2wvNRU3By
         OI1PBL16k44oPzMCcSFEV649hIvynWi/myQHhsvWHSucPYztG0kI4MUD85gXzb8IVVY6
         d/34IeSXMCzVNuQv+Y9f80HdsHbSt+m1cCKc+ZV9KFZ0252LOkxuLjCcH0ZnPhiGJWBn
         0ShvGFQE4cG8OpkC8zyLEQ96/g2n6ctQyXmpDvOltaDb9wkkBc7RV+uYoyKRFol2pOJ4
         WpCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713279844; x=1713884644;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wPX0yJRzghDLWjvpnkORGsIK5FM8GPTBAmYj2PLF35E=;
        b=GdASTp9aGYp4fZVUVMtK82Yf1oXgVd0OCuwqdZuyKHW+qlwvcOASQM2Drt9MLaSTQI
         OOBzb8pledtPFb6Y63p8FD3hQ+71wpbbPOCbHTomvTimf4wh+QqoPDUfy5uhxXiUQIew
         8uiJfyW1C7WqQTPq6FCIbgA6FKkiequ9oU9HTQ7tuQHt1ypqXXhSxWGfWhkiq4kmKttD
         PHt/Cn51xP0Vuw1sho3z2gowftU+dcgWXneTecBQwSWwdJapmmLxOlSW8g6CNmndYTJ+
         dGxR1hk77Nb1e3S8Gu31T8SRf1UyjZI1LgKip7dDaZAP5fERf5mc8OgUlLIpVIfP/BnY
         mUzg==
X-Gm-Message-State: AOJu0Yz1i5na6xbkiB/X41UiQQxrPI8JQnZCMQTLIvNPhUgVm1HA5pAm
	BAliTjZb7Ks3oefwbyjrl6FlyLqkngDrR0PdO37Awiqu7vHfeXVy/3Rd+RGgURKdW47+8rbZ5Nt
	dda/QMwmSalTr3y3g7qJVRfqHV7s=
X-Google-Smtp-Source: AGHT+IFmNIV70SWgsYlsiCQMLIqxtgPzWwVEUkwO1rvn8affCTm4UtfKFKysMZsZnujXmpyQBvVy2q4612q3yydnPKw=
X-Received: by 2002:a5d:4152:0:b0:343:c52a:7fc5 with SMTP id
 c18-20020a5d4152000000b00343c52a7fc5mr2875135wrq.18.1713279843635; Tue, 16
 Apr 2024 08:04:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAFkJGRcWdHpbxjBrynncOb3apWO7d5+WP82WqcHeq=hsc65MAA@mail.gmail.com>
 <Zh6RguShFVeDdbNw@archbtw>
In-Reply-To: <Zh6RguShFVeDdbNw@archbtw>
From: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Date: Tue, 16 Apr 2024 11:03:52 -0400
Message-ID: <CAFkJGRc824vYEufG=6ZVPAW2iVpd0NDThJadZVrUk_ZND_qJag@mail.gmail.com>
Subject: Re: Feedback on my development setup
To: ngn <ngn@ngn.tf>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I tried that, but there was some non-descript error with code -2 (any
major error) about launching the init process for [init,
rdinit]=3D/lib/systemd and /usr/bin/bash.  Can you provide a working
sample?  Sorry if I'm being difficult.  I am really tired of dead ends
and trying them alone.

On Tue, Apr 16, 2024 at 10:56=E2=80=AFAM ngn <ngn@ngn.tf> wrote:
>
> On Tue, Apr 16, 2024 at 08:38:54AM -0400, Josh Marshall wrote:
> > Hello all,
> >
> > I am trying to work on and improve some aspects of the "fanotify"
> > parts of the VFS subsystem with Amir Goldstein being the person I
> > brought these to.  Amir has me doing some work to see what is going on
> > since I have observed some unexpected behaviors.  In doing so, I have
> > cobbled together the following iteration pattern which I would like
> > feedback on.  It doesn't feel like it is as concise as it should be in
> > practice and I am hoping someone can offer pointers on how to improve
> > it.  By the end of this, I would like to have a fully documented and
> > replicable script to share for certain kinds of non-hardware kernel
> > development like I am doing here.  As a word of warning, I haven't
> > gotten to fully test this either.  It feels like I'm trying to cut
> > down a hydra with everything new I need to account for.
> >
> > ```
> > Source:
> > https://github.com/archlinux/arch-boxes
> >
> > Term 1:
> > guestmount -w -a ~/Downloads/Arch-Linux-x86_64-basic.qcow2 -m
> > /dev/sda3 ~/mnt/arch/
> > <copy sources, files, perform compilation steps, etc as needed to
> > inside the VM image as needed each development iteration>
> > cp ~/mnt/ arch/home/arch/linux/boot/x86/vmlinux .
> > umount ~/mnt/arch
> >
> > Term 2:
> > kvm -s -cpu host -display gtk -vga qxl -accel kvm -drive
> > format=3Dqcow2,file=3D$HOME/Downloads/Arch-Linux-x86_64-basic.qcow2 -m =
1G
> > -smp 2 -S
> >
> > Term 3:
> > gdb vmlinux
> > : target remote:1234
> > <set break points>
> > : continue
> >
> > Qemu:
> > <time sensitive, boot into the right kernel if available>
> > <perform development tasks>
> > ```
> >
>
> Hello,
>
> You don't have to mount and copy over the vmlinux file, QEMU/KVM has the =
-kernel option,
> which you can use to specify the kernel image:
>
> kvm -s cpu host                                   \
>     -display gtk                                  \
>     -vga qxl                                      \
>     -accel kvm                                    \
>     -m 1G                                         \
>     -kernel arch/home/arch/linux/boot/x86/vmlinux \
>     -drive format=3Dqcow2,file=3D$HOME/Downloads/Arch-Linux-x86_64-basic.=
qcow2
>
> However you will need mount and copy any modules you build to the /lib/mo=
dules
> directory or you won't be able to load them.
