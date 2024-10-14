Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34695158DD8
	for <linux-newbie@vger.kernel.org>; Mon, 14 Oct 2024 10:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728902207; cv=none; b=i3iVtQPikrH3uvm5lrZQh4W3aTmj31PBhkkoH5fT/NVKWppzwNIxsRVnHnRtisXqqZrnXF2SVNTAL+n6Pp2R1n+9L+scwPSDbXKQoI94zm+4iBnhwjGgwdWJAIrj9mhYspELJnk/uYmzmJI3Bj3yTB9i9+e5Sh1ktBXVSvGTRDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728902207; c=relaxed/simple;
	bh=WhDyfTRjdHhiECOrnWMKnYpaTc//VDik3ULegFlNTaI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=Eani+DC8CXp6YajAGAlxqMJxU6/pB2C7gnI991mXD+YKidEPsLfw4HUUZb33D/GvUXeWCxyMx2WWTNm0gbygVlwRMcJabnkU/Gx+iI3koyOf0W0KO6mpHJndpi07uPvsrvF+WooB9xiv7oWlIJ3+veRy0aFOM272x9R6DcbBd4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c0MuQPbj; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c0MuQPbj"
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2e2bb1efe78so2768173a91.1
        for <linux-newbie@vger.kernel.org>; Mon, 14 Oct 2024 03:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728902205; x=1729507005; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AWWwDH82oJMReDPEBGrwZ6eQwvp6vhmDAyPgW2sjeXc=;
        b=c0MuQPbjv08xYHGZ6x3CbnW+OE0dBB+WhTCFZvtoH7C1MN6QEuytEAX2imrKCbitH7
         Mc8rp+7W2JgQv8qZNG7S0q62mSZjli7hJGhFUKcGghssAwIdR3Nhzf99TFMr7k8q4BN5
         u8L28TrguYiTlq9hluFaUQMsRZh4YfZyuiaUb+TJJLmTB7M6hKuz+Kb4qsHQu1sFKCJ+
         YdID6bSTVBcT8gyfMkWHtrRyZizkvWdsedBW4p4kvizyN+Vac00KNaNEZewB58PvvrM7
         l9phejHxazAQnFv4Ta7BaZgxg0xahTLl58pfJfdtKFC6K6Q4BZFwMoCcfMXY89eVSjlV
         appA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728902205; x=1729507005;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AWWwDH82oJMReDPEBGrwZ6eQwvp6vhmDAyPgW2sjeXc=;
        b=hTKain0U+bGj2MBhjEuoZk6kQy0sVJg0hjf9uOH1CTjJ41nzzBjHbWVD/SF3PGV/LB
         GDgEqd8PuurtryjaqDdhHULRel0oyb3eemGsF8LbJnppZuO1C3517JeVaCyoVWIHlndK
         maY1kZRFq06TfD12eLO+YMBjtOy8gvEF7oLf87dSfuq8qg0pfRdE5jhXUn9VT7H8CgFi
         KVsVhvooAOGfbWu3pr8kCu/3PyF8JUzda/6sEAcYX0R85ixQQzJgUESZvE2Svc0bT1vY
         VxJhFgYvs14PIuOptc8pSVGs+kO8ezrb/oZSYPl5opobqnfZL/McIChnxGztbV/lD+Vs
         mpiw==
X-Gm-Message-State: AOJu0YzQ40KwW2ZqFQWccKFkzjIqnQrjtQ21qTcrkljs23eoyFMe6Ocu
	z4i09FbX4ZuEeA6zTkzJ+FVmrNpWqmRnOALzvUVgGz12PQx7stMX9ELOnLzHpYax+6oOSEnuWaw
	LRHi+14NkSB48/Hvj9C5gu84zNqP14dzX
X-Google-Smtp-Source: AGHT+IGdU10RnhipxrcoZWUD8QEMw20SddZwtjAyFbSkjHQ+jGMKjfgQvUn06ReXw+XYGMu6cmNEpJ0kyrbHRl/ib5E=
X-Received: by 2002:a17:90a:a00b:b0:2e2:a96b:2ccb with SMTP id
 98e67ed59e1d1-2e2c802a7b1mr21715617a91.7.1728902205160; Mon, 14 Oct 2024
 03:36:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAO6a-9_aPLCx2CqecQBGbK78_=+-tT44RepPkrBjpkWSvjj4Tg@mail.gmail.com>
In-Reply-To: <CAO6a-9_aPLCx2CqecQBGbK78_=+-tT44RepPkrBjpkWSvjj4Tg@mail.gmail.com>
From: Vivek yadav <linux.ninja23@gmail.com>
Date: Mon, 14 Oct 2024 16:06:34 +0530
Message-ID: <CAO6a-98cdSvyd7jgAyGNmsC2nxmRSyr3GppxvZU9yHU1xqwz3g@mail.gmail.com>
Subject: Fwd: ARM64: CPUIdle driver is not select any Idle state other then WFI
To: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
From: Vivek yadav <linux.ninja23@gmail.com>
Date: Fri, Oct 11, 2024 at 3:14=E2=80=AFPM
Subject: ARM64: CPUIdle driver is not select any Idle state other then WFI
To: <linux-pm@vger.kernel.org>


Hi @all,

I am working on one custom SoC. Where I add one CPUIdle state for
``arm,cortex-a55`` processor.

idle-states {
      entry-method =3D "psci";
       cpu_ret_l: cpu-retention-l {
         compatible =3D "arm,idle-state";
         arm,psci-suspend-param =3D <0x00010001>;
         local-timer-stop;
         entry-latency-us =3D <55>;
          exit-latency-us =3D <140>;
          min-residency-us =3D <780>;
    };
};

I am using ``Menu governor`` with the ``psci_idle driver`` in its original =
form.
After booting Linux I find out that the CPUIdle core is never going
inside the ``cpu-retention`` state.
To check time spent by CPU in any state. I am using the below command.

``cat /sys/devices/system/cpu/cpu*/cpuidle/state*/time``

OUTPUT:
0 =3D=3D=3D>CPU0 state0 (WFI)
0 =3D=3D=3D>CPU0 state1 (cpu-retention)

increasing some time value =3D=3D=3D>CPU1 state0 (WFI)
0 =3D=3D=3D>CPU1 state1 (cpu-retention)

increasing some time value
0

increasing some time value
0

What am I doing wrong? Why does ``cpu-retention`` state time not increase?
Any pointer will be helpful.

Regards,
Vivek
