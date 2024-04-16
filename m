Received: from mail.ngn.tf (ngn.tf [193.106.196.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346EC130A65
	for <linux-newbie@vger.kernel.org>; Tue, 16 Apr 2024 15:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.106.196.85
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713280933; cv=none; b=Ors+ApTc9ECehesvfTMLGvqIhoedkI9PUVXznjAISSLetmg7qSYWOv1gl/9D+rfy2iyMoJmcBocZZTWKZjkNjFyzyxJWN6avqASLgzL1R5eP9fCmnBN4gaypsWlam5o2TWG87J3Y7ZBKqs0Ot7hc8CewQVMa4SrtBdtLo00+1vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713280933; c=relaxed/simple;
	bh=FOwAErsCw0Coy/kST0qbJvhmaYV3hzPgelmFO3P8kf4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o/1VP2gH6D0kjgNjvOZXZguq0NGPkFw0UyPXH9Lc3daTajjZtmfl7ca61X//1JDZRJnG2zTVU22cJJXGh0INp9GkHEuultgpXsm0aYLva2n6glLtUV+TCkrSwo8+NJEm1h3K9RNrDEdIaAvOiqjw3xoo7iTI8Kq7CV5NG1wGlZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ngn.tf; spf=pass smtp.mailfrom=ngn.tf; dkim=pass (2048-bit key) header.d=ngn.tf header.i=@ngn.tf header.b=gCdI0zjj; arc=none smtp.client-ip=193.106.196.85
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ngn.tf
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ngn.tf
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ngn.tf header.i=@ngn.tf header.b="gCdI0zjj"
Date: Tue, 16 Apr 2024 18:21:18 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ngn.tf; s=mail;
	t=1713280929; bh=FOwAErsCw0Coy/kST0qbJvhmaYV3hzPgelmFO3P8kf4=;
	h=From:To:Cc:Subject:References:In-Reply-To;
	b=gCdI0zjj4L6Uz+WTGl1KF4DmuyaBXqwP+KgUO1vwD5KUETNMwPq0M+N9KOxLtbVOP
	 ZwdF9m7Ig+k7i1d5BSQ4fB5Ni0a38DYGv6DiMn2yc4aXaS35zzJADTABDNj3PwaRZv
	 mMuekufq3IgPPiYHfK+Pq1is3qaT7QxrP6ia+5vQ1vooTntvAnn8adbd1cfAaT6jR/
	 0d70BZDwI6CTyk7JutZxIUMHMijENUhj9w7xr25RHFDaqVqfo0bV7OIjWqGHcs1n+p
	 HZl0zC6eepBO7+HbXnpcVUR1isDGW/gzXd6uGxNo2pKoPuSxNo+zU3rOtG8fwcq5p6
	 9rDKPG3GLjJzQ==
From: ngn <ngn@ngn.tf>
To: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: Re: Feedback on my development setup
Message-ID: <Zh6Xbqijp8rRGo1H@archbtw>
References: <CAFkJGRcWdHpbxjBrynncOb3apWO7d5+WP82WqcHeq=hsc65MAA@mail.gmail.com>
 <Zh6RguShFVeDdbNw@archbtw>
 <CAFkJGRc824vYEufG=6ZVPAW2iVpd0NDThJadZVrUk_ZND_qJag@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFkJGRc824vYEufG=6ZVPAW2iVpd0NDThJadZVrUk_ZND_qJag@mail.gmail.com>

On Tue, Apr 16, 2024 at 11:03:52AM -0400, Josh Marshall wrote:
> I tried that, but there was some non-descript error with code -2 (any
> major error) about launching the init process for [init,
> rdinit]=/lib/systemd and /usr/bin/bash.  Can you provide a working
> sample?  Sorry if I'm being difficult.  I am really tired of dead ends
> and trying them alone.
> 

If the kernel fails to start the init, try adding the -append "root=/dev/sda rw" option:

qemu-system-x86_64 -s -cpu host                   \
    -display gtk                                  \
    -vga qxl                                      \
    -accel kvm                                    \
    -m 1G                                         \
    -kernel arch/home/arch/linux/boot/x86/vmlinux \
    -append "root=/dev/sda rw"                    \
    -drive format=qcow2,file=$HOME/Downloads/Arch-Linux-x86_64-basic.qcow
