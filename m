Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48B617BA8
	for <linux-newbie@vger.kernel.org>; Tue, 23 Apr 2024 15:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713886491; cv=none; b=jxkcO2O1d6flNioTflBviRmFqlENt3OUarlUNPwhaakTgV6B5IHsFlLMVbdTIjGDZOvYL/ayb3FviDQcjN0J2lOxRd3Pxb5RKlBBRyyempgiMET15O7KdeGvG41Pee827hxY6PP7bl+vdWJ0vB2fiUqNyyDF2+f5BqlH58KRHwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713886491; c=relaxed/simple;
	bh=u18oXGknZXkJnVTpcPpowEm+6xXt7D/+jkhy2hqVTlU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r8vpf/OpCe6pvhffwhWrWWvoqTQ0aCotsMiKgblEY3s/0FGRBMt0Z50fneEumwyubhWGIC7fnrWilsfAFaU/Wf2Ot+NHdOYCEaNPchPvsI6ltYggLu7qkTrSgGfn0QgojGwQ70rhd+S+A4Qe/wxlqDcR9J5Lbo910IBBLgh92JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YsjHS/b2; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YsjHS/b2"
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-346b146199eso4488884f8f.0
        for <linux-newbie@vger.kernel.org>; Tue, 23 Apr 2024 08:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713886488; x=1714491288; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YepH1zr8ck9smVAMdU5XUrRs6eGhYHWlZ3+TO8t6ujc=;
        b=YsjHS/b2Ps9Joe02fMloa1jHtLYaHbMgAjSf5oR0fi9GT0eO67SY/ZlO4uqg26eWd0
         AMFbw13+0AQCMiVuI8sQXkDKxPK5XDkdWGEqc8Lpn8ltNM2l+KEoKxsTcUb0HqX4pSRm
         f1Ec6/bYWSgc9zyA9oqrCUlAsU13TrK6Q1R8WThvMyUn8kY46PWFN7OwTqKuE7byN0Xu
         dh+GcHSByTFn1bqSR6wI1FIYb4bWeBEsu7tOTAhtM1ctLfLmutJoPX00YRKjSzkp2hRu
         iZJ9YbjguQlz6MzP+uybKEQC8BwvVBb814G8+MeasxuTnRE5jOPBAa6P9Hn2Px/U0N/t
         NjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713886488; x=1714491288;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YepH1zr8ck9smVAMdU5XUrRs6eGhYHWlZ3+TO8t6ujc=;
        b=qR0WX0SgebFBXjm5/DQtycbOIcQyH1GLltNa+J0ZGnZHBDm3d21fhOBwR0TLGh8OJ9
         qdm1yMShdqoOW5SvwHKXE48YBU1VDo8YxdS/zl0fNoUpkYW/5RMjcS+iXsVAkvzw/WHe
         jsRWyCJUkOhGpqoXVdZoNCyZ8XX93JMncuorsvcMBdXJ1ObkDQsc9WVfKebcgepGfpE3
         SS4lPPxWrhbe360hTuCLAdBk5fqAT8So9pKAVJ9Hz0SF0f8N3xkd0UvFSgMFa3eYE7W9
         aO2hup7TEW/zKtj+YiQc6q66C8OjcLdgayVCyUcf8Rzh6oNnsbojOOJcUXmHgGDmScHb
         E+6g==
X-Gm-Message-State: AOJu0YxI1Y2zdoCxExNnbT1KCg+TC3PsJWSXh1fUyHL9pFAnHqs5NiYg
	wDQmare3cMNPZCM9HK7l8o9TaW8kBtCpZJkwN+hepznnQqpREbQDaITsxjBpRwVoGIPpdGKtNcN
	TF8cjAbUByFQxuAI43qWI4mI0dlLZovUO
X-Google-Smtp-Source: AGHT+IHut8CjFpxHG88Qs6buEx354YhSemL2MjaM/20EsqACFSnR+/uNlWVk/uW3EMqkAWTsV+ndQQUrArWEr+oREVo=
X-Received: by 2002:a5d:6245:0:b0:349:cafd:a779 with SMTP id
 m5-20020a5d6245000000b00349cafda779mr8968265wrv.68.1713886487907; Tue, 23 Apr
 2024 08:34:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAFkJGRc824vYEufG=6ZVPAW2iVpd0NDThJadZVrUk_ZND_qJag@mail.gmail.com>
 <Zh6Xbqijp8rRGo1H@archbtw> <CAFkJGRe+UpNPSnSL623o6G+NCkK_uGPx-NCNLQx0vSGpMo98eg@mail.gmail.com>
 <CAPzh0z8RySn429XYQHoP_c9UA+pb6SLHGhH40vQDhc3P2xiysQ@mail.gmail.com>
 <CAFkJGRfK=1f8tfWO8G0v8SOmCwCgK7P5y7g2My47VG6Obb1DNw@mail.gmail.com>
 <ZiE9ydgMtpKOBLDk@archbtw> <CAFkJGRddGHK0j4CcQUoRKiD3afniLY=rRV5npY5wpauqqY0XZg@mail.gmail.com>
 <CAFkJGRdFuMoO4_mR-cR1NWjKQJnopN0v1R11-jSnLn+FKcOCdg@mail.gmail.com>
 <CAFkJGRcg+ThJ-xUve0=WorChW=-6PreLHXeM8YwtwzwpkHTu8g@mail.gmail.com>
 <CAFkJGRcgJA4qe1AVi23ZQVPr_UEzkTBPH8f30g=OsKmii7QzQw@mail.gmail.com> <ZiKYXX-v0Eu-qCBt@archbtw>
In-Reply-To: <ZiKYXX-v0Eu-qCBt@archbtw>
From: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Date: Tue, 23 Apr 2024 11:34:36 -0400
Message-ID: <CAFkJGRdjvebW6u6pyyA_MeHsoecRgYjiVrxoWYWsREdYH9iOFQ@mail.gmail.com>
Subject: Re: Feedback on my development setup
To: ngn <ngn@ngn.tf>
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have a draft document which I would like broader review on, which
currently lives here:
https://gitlab.com/anadon/getting-started-on-kernel-dev-guide-workspace.
This document is to ease the setup of Kernel Development.  I intend to
send this in as a patch to the mainline doc tree once it gets by a
suitable number of reviewers.

On Fri, Apr 19, 2024 at 12:15=E2=80=AFPM ngn <ngn@ngn.tf> wrote:
>
> On Thu, Apr 18, 2024 at 05:40:20PM -0400, Josh Marshall wrote:
> > Looks like breakpoints aren't working?  https://paste.debian.net/131450=
1/
> >
>
> This maybe caused by Kernel Address Space Randomization (KASLR), try
> disabling it by adding nokaslr option to the boot options.
