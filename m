Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE495D90B
	for <linux-newbie@vger.kernel.org>; Wed, 17 Apr 2024 21:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713388728; cv=none; b=b/+aXyA2f3KN+OsU4tSjew3KyrrghN9YwwG6DqKqW+2IKrVCxkM+qscYFraNy0QwaMoY3asXHPFA2iHhcgETACSQ6kDu04pE8h5njgzpHtgkPygONVJiktueJd1Wm779v+czN7JhgHWQ/ld81RKoBnHox5F1IQ3jhHA2UuaeUi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713388728; c=relaxed/simple;
	bh=JNAvneESnkyep/cG90jeHNT96UWvnkXEFHs7r9krBtI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UiHLIDBp5NVxjJx5vG6ChGy4A5RCkPnWkqNRPicG9sdB55iCnBcRiPQkcYwBn76WVbJbwRdQ+fNp6VeHcWJ7Mz8XsQzafTz2O/qdvtV28CiXT3jtOiL5s0hh9rajV+lEYuAiXt7X8tERl0v3VVWM08qUBQ6hLPphdVGDutObR0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B7B9KsuT; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B7B9KsuT"
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-346b96f1483so110164f8f.1
        for <linux-newbie@vger.kernel.org>; Wed, 17 Apr 2024 14:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713388726; x=1713993526; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8OaHrbttzdYNaIiTqTnHG/dgBPvE15EekSLDgyhiBmc=;
        b=B7B9KsuTZgdJFj66Fm/rei1Ls5XdBvLFZtnv/rcRk7GUin2Uw+XJoLUu90NahU48pA
         aa2vFVAy6/OwOSSPFp3w8Iek/l8KX13a6NBSKFaoFSHOxYWUaQ90ZL8sdAyg2TJ1/Z7s
         byMaqrBAqANh/9knHAB9LYCM04bzJNi74S3Wil3yuQShw8hcFONcTqEpFD0OYE2VG9DK
         HCSY7y9Z5XPWDpNdG+BbxOFI6NTLnuudiZkgO3gftbeN9wQhQt3P0vPAdjO+LyodGbWg
         wNoBOpAStYk32buk5eTWg/lJX0eUqCFBTXKJQTQi0EMihrKvXzg62sSS/+M7vhUgm6YV
         Nu9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713388726; x=1713993526;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8OaHrbttzdYNaIiTqTnHG/dgBPvE15EekSLDgyhiBmc=;
        b=GV39Xx4eR9MiFlYt5e5BqbOLNWgqU+y0yUdEoKNLZunM2Hh/5KYp6FdECsGsYnjovJ
         LIhh0XEPNvCOWy7UQAzaI4YxpT0B8Leg0Jy4JB+RdFiKSZ3odF2WWB3/+FRF8PCWqinT
         vMWZHCtK5pV1QQCmHCn8CgVr8o1aOOrHa22IpXkOKb3nWm+JtJA/v/Jhd/lV4UiHrdQr
         OK3hUazg4NRWO7WhnWsbr4yJ2aMDQ6KRhnhjJ8aVT7UwJiNqWPdWTausEXIqW+5/hbuR
         tetH3GbogS2sA+O8YBTkghb/nPTp/sbnNh4XN6Vx0s62MN1KVu6UpbhC3mVA/K4M0YR9
         la/g==
X-Gm-Message-State: AOJu0YzEhOAvNXXIivOoBfFqfdMT2rLnkLdGX1A5e0dCqW9E7ZGzkCHn
	uVj4JxApNn+Au+dFIKVJMn/oxenzMFlQwf/hQg7xxn0dehtsyEhbESarpr6jmgn8jC9LWti/ZNK
	0TdusoOk2olptx8GPMa5peF827L7gYaQS
X-Google-Smtp-Source: AGHT+IEH1+MfwBeBKVarIlKtpJ9M9UyUoHiFPtE1ZeMcqZ+rAx1RZKH+scy9VFKMGAI9p8XVluopR1zdWA2USuZVUFY=
X-Received: by 2002:a05:6000:e51:b0:343:c997:35f3 with SMTP id
 dy17-20020a0560000e5100b00343c99735f3mr204555wrb.21.1713388725670; Wed, 17
 Apr 2024 14:18:45 -0700 (PDT)
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
In-Reply-To: <CAPzh0z8RySn429XYQHoP_c9UA+pb6SLHGhH40vQDhc3P2xiysQ@mail.gmail.com>
From: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Date: Wed, 17 Apr 2024 17:18:34 -0400
Message-ID: <CAFkJGRfK=1f8tfWO8G0v8SOmCwCgK7P5y7g2My47VG6Obb1DNw@mail.gmail.com>
Subject: Re: Feedback on my development setup
To: Samantha Miyamoto <samantha.miyamoto10@gmail.com>
Cc: linux-newbie@vger.kernel.org, ngn <ngn@ngn.tf>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One issue I'm seeing is that gdb isn't seeing debugging symbols.  I'm
getting the following output with the config linked.

https://pastebin.com/tjq7QtQk

```
anadon@botamon:~/Documents/code/linux$ gdb arch/x86/boot/bzImage
GNU gdb (Ubuntu 15.0.50.20240403-0ubuntu1) 15.0.50.20240403-git
Copyright (C) 2024 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.htm=
l>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
Type "show copying" and "show warranty" for details.
This GDB was configured as "x86_64-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<https://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
    <http://www.gnu.org/software/gdb/documentation/>.

For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from arch/x86/boot/bzImage...
(No debugging symbols found in arch/x86/boot/bzImage)
```

On Wed, Apr 17, 2024 at 1:28=E2=80=AFPM Samantha Miyamoto
<samantha.miyamoto10@gmail.com> wrote:
>
> Hi Josh and admins,
>
> I would appreciate reading the docs - I=E2=80=99m pretty new and have dre=
ams of tinkering sometime. Thank you for the work you do.
>
> Sam
>
> On Wed, Apr 17, 2024 at 9:22=E2=80=AFAM Josh Marshall <joshua.r.marshall.=
1991@gmail.com> wrote:
>>
>> Further tweaking to use sda3 for the root partition in the disk, I get
>> the following: success!
>>
>> This is a pretty good setup now but it could use an automation harness
>> and documentation.  I'm willing to make the script and write-up.
>> Where should I post it?  My inclination would be to submit it
>> somewhere near https://docs.kernel.org/kernel-hacking/hacking.html .
>>
>> On Tue, Apr 16, 2024 at 11:22=E2=80=AFAM ngn <ngn@ngn.tf> wrote:
>> >
>> > On Tue, Apr 16, 2024 at 11:03:52AM -0400, Josh Marshall wrote:
>> > > I tried that, but there was some non-descript error with code -2 (an=
y
>> > > major error) about launching the init process for [init,
>> > > rdinit]=3D/lib/systemd and /usr/bin/bash.  Can you provide a working
>> > > sample?  Sorry if I'm being difficult.  I am really tired of dead en=
ds
>> > > and trying them alone.
>> > >
>> >
>> > If the kernel fails to start the init, try adding the -append "root=3D=
/dev/sda rw" option:
>> >
>> > qemu-system-x86_64 -s -cpu host                   \
>> >     -display gtk                                  \
>> >     -vga qxl                                      \
>> >     -accel kvm                                    \
>> >     -m 1G                                         \
>> >     -kernel arch/home/arch/linux/boot/x86/vmlinux \
>> >     -append "root=3D/dev/sda rw"                    \
>> >     -drive format=3Dqcow2,file=3D$HOME/Downloads/Arch-Linux-x86_64-bas=
ic.qcow
>>
