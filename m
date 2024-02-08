Received: from mail-4319.protonmail.ch (mail-4319.protonmail.ch [185.70.43.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A4E6BB43
	for <linux-newbie@vger.kernel.org>; Thu,  8 Feb 2024 12:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707396918; cv=none; b=lpQydNdEQ8VHozI9tlWcyKHZ9qWlt5tL5vNxCKfOvlmJS0CPgQGQ+A996WGnueOO/Mt9XVJgrvouOwoLIYHiKkWzVWdyTD1o1Kl1Shj7/cXnXdOFAug9fDRRmJtdu7pvsZ3yODb1FPQMDNfnObvjN+aBY/1SFPA/3p6i1hUN9wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707396918; c=relaxed/simple;
	bh=SaxlHESIDOfkky1oNiKhk/p70T+d9VxgLLQ/x1v/UWA=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=uPABlbpPsfYfvmi5XiO5kmzZ4UzrmisqEUWkvZBBckMenhZ1zzXMnE2DBUIWkzUX/KTt4RD9do9I3pGHOiu1fV0n/IBexgAvI9mvtVKaForjzHa31Plwzf7QkomaxtNVS93htaqR2volUbdMIdxNtgl2HhGdqvJvPLSxKw6I40Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=StumptbN; arc=none smtp.client-ip=185.70.43.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="StumptbN"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1707396912; x=1707656112;
	bh=SaxlHESIDOfkky1oNiKhk/p70T+d9VxgLLQ/x1v/UWA=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=StumptbNi3A8clbPX6xi/+jVMiL9ObjX7bzQF/nIuxWs3UV77bD4s/g09KLs/AqdO
	 pcZISWTQZ87uFT9UboMGD6qMDur9tj4H+UDRfB/lAfsHwRNuorqx6gklgYGgibeJdz
	 b5Sn1t1htBxrs4W1kofISmZc8NLvwwVFqI4vlVTU1SSgtdMnGz5+Q7ugkUYZP2tVXy
	 L5d3BZcZV5nIleuT4tnpAmnBWZDcyOFKZbWYTvxie3VQJEYYFlDsdRsx3/cf/ArzV7
	 uAGlPZmXfNcKrILm5JF0WLSPFCbxQYxCU2FxQbl1KdOBtGPGimRHzmS26mPHeTr3wp
	 pt5t6VkzMZa/w==
Date: Thu, 08 Feb 2024 12:55:01 +0000
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>
From: Turritopsis Dohrnii Teo En Ming <teo.en.ming@protonmail.com>
Cc: "ceo@teo-en-ming-corp.com" <ceo@teo-en-ming-corp.com>
Subject: [Linux Newbie] I can't catch up with Linux Kernel releases
Message-ID: <H0q1TqL1vn5O2AE6wnfjosvchWG48BrZEmGmE2nurw02T6IhxxLvUPyrYcLx4s2-SW0s8OW9NssUlnheB2NJ59Zhqvg8mI64e5meafWDnyI=@protonmail.com>
Feedback-ID: 39510961:user:proton
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Subject: [Linux Newbie] I can't catch up with Linux Kernel releases

Good day from Singapore,

Not too long ago, I installed Arch Linux with Kernel 6.6.7 on my refurbishe=
d Aftershock gaming laptop. The latest release is now 6.7.4.

Looks like I won't be able to keep up with the pace of Linux Kernel release=
s unless I stick to Arch Linux, a rolling release Linux distribution.

Regards,

Mr. Turritopsis Dohrnii Teo En Ming
Targeted Individual in Singapore
Blogs:
https://tdtemcerts.blogspot.com
https://tdtemcerts.wordpress.com
GIMP also stands for Government-Induced Medical Problems.







