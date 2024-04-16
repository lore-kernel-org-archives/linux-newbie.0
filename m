Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B69412A17F
	for <linux-newbie@vger.kernel.org>; Tue, 16 Apr 2024 12:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713271148; cv=none; b=hEaS3DFAOxI3VdePpeYZluaStaMvOaZaXAiir0Olw2ernY1XTC2iOa+Us6yywAtAaGHDeifDH+ZNoI4eSfUuzeUqAwSf9wf3RMMA7rbCFNFd7k7OBpidNXGKT6ZlSmBqs93J0voTA9+JFf8qSzTMp1om924FyldQ0IuhJNe2CUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713271148; c=relaxed/simple;
	bh=lAfQ0m1tHQ2gazSOkMpxmBgDovSsSnWsSyjFJYklAI0=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=ntlrRO1bZoiPo+7ocKyKnDdDpH5CdKkJ3a3sNK7O0t0BQQ7jWlTdeHgVA9Zjld0Z1z1d6+YVG3nhajFOx1CWb7wKWV+IlVzAa68j5mk/hX5uTyliR4Iu4YNM4opYe1fEvRgDORxGVKu815RHLXMv+HlB+Y5s8atIptIAvjUznlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kIor/uh3; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kIor/uh3"
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-346b146199eso3113220f8f.0
        for <linux-newbie@vger.kernel.org>; Tue, 16 Apr 2024 05:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713271145; x=1713875945; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Uv/f7JCEkCFfv9nd3n1O6Keme2WoYBXqcmjT0SiARxg=;
        b=kIor/uh3jPGy+S3o2Q/93YzyO1TUUb3DSIBp+Th55OQwGNRRY9TR6ttSsOx0KyDIrw
         gKa2TPtWqUnkXwEmZLh3ozoamnH0nYoj71AbM/CqKRr08IRVfAVk5XN3kZ8FJiU2fulr
         BIucNbqaGooYpEx5rYVMsc3G4Ln9B1By7iCmkDaaObk7/PAmB4sSjTv40YL/lr41KGXd
         U8UlSLwlb6D8d/uW4fLeOddOkZnYN70ysW3duEYLPPlIbnMRo3ihXZHmtfMVB/9tUslm
         ZBl8y7L4q4zegte+qSrYMpuEZVdzbWjhvhNF5Pm6DE75/p+TLJeyAUztzl5c5wC1PEik
         SQBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713271145; x=1713875945;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Uv/f7JCEkCFfv9nd3n1O6Keme2WoYBXqcmjT0SiARxg=;
        b=s7tulfWFsEpRHZQLDCTtT7EKOcjg54Tg9EGOxM9jaGSkq998ghsESIfL4o9M/qR/U8
         /cY/HlNUPyquIWBrOJoLgVCZnMMMiEOLSxYM2myOMD93eYNN4Qso9GoRIZrM7IGdkSev
         nIVxqcJYcN0xwLRRC/9jyoz5UvR1s5NiB+UjgeQ3n8bcJts/sm8hz5zKlQsDlf3t5ttD
         aztwUZlh9AFHB2+MRUg4elmnBUhQxvdsa5XKRldk/UpALTzXg4oJJCLmw89NQzPT5xhK
         nTxKbJYE+PJ5pLWVpgLz8Sh3hTk+oHF4HvspHhqyyUvHwBGMpdD0pED2YYGKemcrJ1L+
         n4ew==
X-Gm-Message-State: AOJu0YxSq7qZdjPvyqhm7H0jDQARl6gnuI3GABfBp6xlRBie5OL3EFxX
	Nb4RZHtR0mtSF9RzYqDuyPzm6kZMg14LnHhTJfpG8y6ciFNvI3kxNTE870Ha/TBK1BbnSK2yxAl
	lIMxJaRjWnf6f+AweCvl0Nrp8byn5lQ/m
X-Google-Smtp-Source: AGHT+IEHBM+QtFe8wQjXH+Uv3iny7lYfOYJV8byOSshARNJbGWsdNsOXMQurv98bDAvDaQ+vABI9VGCN4mGzA5bZw24=
X-Received: by 2002:adf:fe90:0:b0:343:740c:5d14 with SMTP id
 l16-20020adffe90000000b00343740c5d14mr8939285wrr.31.1713271144947; Tue, 16
 Apr 2024 05:39:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Date: Tue, 16 Apr 2024 08:38:54 -0400
Message-ID: <CAFkJGRcWdHpbxjBrynncOb3apWO7d5+WP82WqcHeq=hsc65MAA@mail.gmail.com>
Subject: Feedback on my development setup
To: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hello all,

I am trying to work on and improve some aspects of the "fanotify"
parts of the VFS subsystem with Amir Goldstein being the person I
brought these to.  Amir has me doing some work to see what is going on
since I have observed some unexpected behaviors.  In doing so, I have
cobbled together the following iteration pattern which I would like
feedback on.  It doesn't feel like it is as concise as it should be in
practice and I am hoping someone can offer pointers on how to improve
it.  By the end of this, I would like to have a fully documented and
replicable script to share for certain kinds of non-hardware kernel
development like I am doing here.  As a word of warning, I haven't
gotten to fully test this either.  It feels like I'm trying to cut
down a hydra with everything new I need to account for.

```
Source:
https://github.com/archlinux/arch-boxes

Term 1:
guestmount -w -a ~/Downloads/Arch-Linux-x86_64-basic.qcow2 -m
/dev/sda3 ~/mnt/arch/
<copy sources, files, perform compilation steps, etc as needed to
inside the VM image as needed each development iteration>
cp ~/mnt/ arch/home/arch/linux/boot/x86/vmlinux .
umount ~/mnt/arch

Term 2:
kvm -s -cpu host -display gtk -vga qxl -accel kvm -drive
format=qcow2,file=$HOME/Downloads/Arch-Linux-x86_64-basic.qcow2 -m 1G
-smp 2 -S

Term 3:
gdb vmlinux
: target remote:1234
<set break points>
: continue

Qemu:
<time sensitive, boot into the right kernel if available>
<perform development tasks>
```
