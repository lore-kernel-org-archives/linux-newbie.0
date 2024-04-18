Received: from mail.ngn.tf (ngn.tf [193.106.196.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D653016C69F
	for <linux-newbie@vger.kernel.org>; Thu, 18 Apr 2024 15:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.106.196.85
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713454607; cv=none; b=L3xyMyz6Js8cywc+HpDg1VhC19HIWO8FgGgnxGg1vacMbubkIe0Cy+o6B48dZuFet4R6kgMUn63z7a8Gpdmd74N/v482pho2TkpJPTe8VM5B9uBbbJBKpxd7FKnbLo5e7hZxdoyVFLqAcnxRI5C1fhFKkJEKpfebbjktyjbwnEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713454607; c=relaxed/simple;
	bh=z7rJPfzCjnsA32DwYvzOB5BNyLk/JxxHACAmo0mf5Pw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jl/jkvx1t4nW4ht4wYljcaexijSTEUpoX6ZxmgIMcKx7FmJol7QUo0IOZdBxZeZlyLD0zprb5oxNB7cy/pVdhnQNHCNBzfRkCxHX/S4h1RgRFHN2bsZwdS3Lk57PiJUBATRqUj2zbYqzQe3BQxZQ4IezyiQXiRa5T2EzbEI+5qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ngn.tf; spf=pass smtp.mailfrom=ngn.tf; dkim=pass (2048-bit key) header.d=ngn.tf header.i=@ngn.tf header.b=JPHfWC3k; arc=none smtp.client-ip=193.106.196.85
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ngn.tf
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ngn.tf
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ngn.tf header.i=@ngn.tf header.b="JPHfWC3k"
Date: Thu, 18 Apr 2024 18:35:37 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ngn.tf; s=mail;
	t=1713454594; bh=z7rJPfzCjnsA32DwYvzOB5BNyLk/JxxHACAmo0mf5Pw=;
	h=From:To:Cc:Subject:References:In-Reply-To;
	b=JPHfWC3kw3ebIBr2vbUp8w/yLz57R8jttUdS6zMiG4Kid6WefcxBSJjULnd6p9Fls
	 SFL8eHkIPWaiuO0GJKjum50+v1pmE4HeAhLe4ZN9RaqPYgA44VXONNUBAA2QWf3KxN
	 OAX2553T50Nj0cFpMBbIIRBO0C9ZITSwaAWVmbbNZg3INxolxep2vzpzQpMj5IhM2T
	 IGgJB71giVGmxNseF4z1jOWeYGgUj7zqZuSH9pBhQSPts6Uo2YoyfFabu/ArdWp0tE
	 he7RK0j5jcB2usEmkYRehJnSTkncmMwHRWzei0FDNuJxFYix/cjBkxt5+37EF8BIfE
	 3BhYCIPXCX+ZA==
From: ngn <ngn@ngn.tf>
To: Josh Marshall <joshua.r.marshall.1991@gmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: Re: Feedback on my development setup
Message-ID: <ZiE9ydgMtpKOBLDk@archbtw>
References: <CAFkJGRcWdHpbxjBrynncOb3apWO7d5+WP82WqcHeq=hsc65MAA@mail.gmail.com>
 <Zh6RguShFVeDdbNw@archbtw>
 <CAFkJGRc824vYEufG=6ZVPAW2iVpd0NDThJadZVrUk_ZND_qJag@mail.gmail.com>
 <Zh6Xbqijp8rRGo1H@archbtw>
 <CAFkJGRe+UpNPSnSL623o6G+NCkK_uGPx-NCNLQx0vSGpMo98eg@mail.gmail.com>
 <CAPzh0z8RySn429XYQHoP_c9UA+pb6SLHGhH40vQDhc3P2xiysQ@mail.gmail.com>
 <CAFkJGRfK=1f8tfWO8G0v8SOmCwCgK7P5y7g2My47VG6Obb1DNw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFkJGRfK=1f8tfWO8G0v8SOmCwCgK7P5y7g2My47VG6Obb1DNw@mail.gmail.com>

On Wed, Apr 17, 2024 at 05:18:34PM -0400, Josh Marshall wrote:
> One issue I'm seeing is that gdb isn't seeing debugging symbols.  I'm
> getting the following output with the config linked.
> 
> https://pastebin.com/tjq7QtQk
> 
> ```
> anadon@botamon:~/Documents/code/linux$ gdb arch/x86/boot/bzImage
> GNU gdb (Ubuntu 15.0.50.20240403-0ubuntu1) 15.0.50.20240403-git
> Copyright (C) 2024 Free Software Foundation, Inc.
> License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
> This is free software: you are free to change and redistribute it.
> There is NO WARRANTY, to the extent permitted by law.
> Type "show copying" and "show warranty" for details.
> This GDB was configured as "x86_64-linux-gnu".
> Type "show configuration" for configuration details.
> For bug reporting instructions, please see:
> <https://www.gnu.org/software/gdb/bugs/>.
> Find the GDB manual and other documentation resources online at:
>     <http://www.gnu.org/software/gdb/documentation/>.
> 
> For help, type "help".
> Type "apropos word" to search for commands related to "word"...
> Reading symbols from arch/x86/boot/bzImage...
> (No debugging symbols found in arch/x86/boot/bzImage)
> ```
> 

You should load vmlinux to the gdb, not the bzImage. bzImage is a
compressed version of the kernel and its used boot, vmlinux is the
static ELF binary that contains the debugging symbols.
