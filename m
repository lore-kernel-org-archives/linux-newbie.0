Received: from mail.ngn.tf (ngn.tf [193.106.196.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6987E12F589
	for <linux-newbie@vger.kernel.org>; Tue, 16 Apr 2024 15:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.106.196.85
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713279954; cv=none; b=tTipLP8mQ3s6l2UIFW57A5duyMShAMP46mjsb7eS1i3F/X8a2Ds1LGfrInV4SPbMaQQ7rSnt2sS+FWpaSZ1XCyZxZvQlGaN6bfBJBxMQ4FV5MPHfa/RdsoLV9j3BU+er4rSdZXJDM2sbdJcJ/zDN5N9DXXwdOEq9hyqw7B7mbCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713279954; c=relaxed/simple;
	bh=Z62LSi1x+JMXytutU6bBsARoh/92ruXevN5FUE0WnvM=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZBd1FeMKhzf4vdzSyeMNk0yIqFfuv4FFPUoZVHs0J9SJX3HAR7YRNbi/UfeI8HHLnB4/vS2oLixbVRYNPD0I2i0yKpaAo+j8yDVueWwcc+poeIHG5SZeuRAYxkQc/wSmihH87ppjcAoEMx2BI/AFBG8Dno3fajl3qrLaMlopSFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ngn.tf; spf=pass smtp.mailfrom=ngn.tf; dkim=pass (2048-bit key) header.d=ngn.tf header.i=@ngn.tf header.b=WFwp06G8; arc=none smtp.client-ip=193.106.196.85
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ngn.tf
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ngn.tf
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ngn.tf header.i=@ngn.tf header.b="WFwp06G8"
Date: Tue, 16 Apr 2024 17:56:02 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ngn.tf; s=mail;
	t=1713279413; bh=Z62LSi1x+JMXytutU6bBsARoh/92ruXevN5FUE0WnvM=;
	h=From:To:Subject:References:In-Reply-To;
	b=WFwp06G8XkpC3pf8UFuy9pE5hngh3GBzFShGO0EKPNCkuKQyoZ8o+4pD/GZAQpWty
	 cuVDIssTaZ3pEsFNMZZlJfo/mMKnn2/SiGXy4f9xhtioMfninx/badLwAT2JwfTRxT
	 ZK+Uv8u1B9qQ+WQeQLalnUXTYEW1VzBmnBjC+4A6zEMEtRo/q++Br4YJxfU2IPzEyl
	 F5EPTwhtEfU4AWSlNzILwdTHpzDF6PdjQRNuAYzpReSr09QQsTmwken6oJ0yCcjybG
	 Brxlf0FvMLaonoaaK+3DgOfVwV5TDnS4B4iG/18PJWvzbYAWo70ea9bbN0/yTj76m5
	 OZq9YKkDuVTlQ==
From: ngn <ngn@ngn.tf>
To: Josh Marshall <joshua.r.marshall.1991@gmail.com>,
	linux-newbie@vger.kernel.org
Subject: Re: Feedback on my development setup
Message-ID: <Zh6RguShFVeDdbNw@archbtw>
References: <CAFkJGRcWdHpbxjBrynncOb3apWO7d5+WP82WqcHeq=hsc65MAA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFkJGRcWdHpbxjBrynncOb3apWO7d5+WP82WqcHeq=hsc65MAA@mail.gmail.com>

On Tue, Apr 16, 2024 at 08:38:54AM -0400, Josh Marshall wrote:
> Hello all,
> 
> I am trying to work on and improve some aspects of the "fanotify"
> parts of the VFS subsystem with Amir Goldstein being the person I
> brought these to.  Amir has me doing some work to see what is going on
> since I have observed some unexpected behaviors.  In doing so, I have
> cobbled together the following iteration pattern which I would like
> feedback on.  It doesn't feel like it is as concise as it should be in
> practice and I am hoping someone can offer pointers on how to improve
> it.  By the end of this, I would like to have a fully documented and
> replicable script to share for certain kinds of non-hardware kernel
> development like I am doing here.  As a word of warning, I haven't
> gotten to fully test this either.  It feels like I'm trying to cut
> down a hydra with everything new I need to account for.
> 
> ```
> Source:
> https://github.com/archlinux/arch-boxes
> 
> Term 1:
> guestmount -w -a ~/Downloads/Arch-Linux-x86_64-basic.qcow2 -m
> /dev/sda3 ~/mnt/arch/
> <copy sources, files, perform compilation steps, etc as needed to
> inside the VM image as needed each development iteration>
> cp ~/mnt/ arch/home/arch/linux/boot/x86/vmlinux .
> umount ~/mnt/arch
> 
> Term 2:
> kvm -s -cpu host -display gtk -vga qxl -accel kvm -drive
> format=qcow2,file=$HOME/Downloads/Arch-Linux-x86_64-basic.qcow2 -m 1G
> -smp 2 -S
> 
> Term 3:
> gdb vmlinux
> : target remote:1234
> <set break points>
> : continue
> 
> Qemu:
> <time sensitive, boot into the right kernel if available>
> <perform development tasks>
> ```
> 

Hello,

You don't have to mount and copy over the vmlinux file, QEMU/KVM has the -kernel option, 
which you can use to specify the kernel image:

kvm -s cpu host                                   \
    -display gtk                                  \
    -vga qxl                                      \
    -accel kvm                                    \
    -m 1G                                         \
    -kernel arch/home/arch/linux/boot/x86/vmlinux \
    -drive format=qcow2,file=$HOME/Downloads/Arch-Linux-x86_64-basic.qcow2

However you will need mount and copy any modules you build to the /lib/modules
directory or you won't be able to load them.
