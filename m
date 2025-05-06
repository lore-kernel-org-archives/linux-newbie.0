Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED6E2868B8
	for <linux-newbie@vger.kernel.org>; Tue,  6 May 2025 05:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746509473; cv=none; b=TXxep5PeMssowAuAU/x1lzw1TJXXuJ8RIpW6rhkijq7DulCsp/wxIOWgED+xAPW5bpT9uz0A5b0YTB9q2U6ArYpz8saQOdJaSBmBIQ+ks6kLTqyrg1Vmn0lqTORGxHgqCXwq9GtO4JF221MS+vPCRZcFsa5+V6vuN2bJf0ghryc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746509473; c=relaxed/simple;
	bh=I+YM0piTC/nMKHx89ShsmNPvXut6jl/E8pNDRWfLqvU=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=GpdFX5YBq1vFpoTFbm/N8D0wcgn9BoEWUGepqure9N2b0iug1F+PGeW6dhlrDxIptpiboxFeDiqYeyvcaI2quY6DFNHHVP2eD+l5nBYSe6VVNt0AaR1QLDhC1fquhbknecH6Rt94sVf6bskDo7i20TAquoekQJEb4Vq5+cdYnBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com; spf=pass smtp.mailfrom=fastmail.com; dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b=HFV6D1yp; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=nP21HXyD; arc=none smtp.client-ip=202.12.124.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="HFV6D1yp";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="nP21HXyD"
Received: from phl-compute-06.internal (phl-compute-06.phl.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id A63C811400AB;
	Tue,  6 May 2025 01:31:10 -0400 (EDT)
Received: from phl-imap-03 ([10.202.2.93])
  by phl-compute-06.internal (MEProxy); Tue, 06 May 2025 01:31:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1746509470;
	 x=1746595870; bh=I+YM0piTC/nMKHx89ShsmNPvXut6jl/E8pNDRWfLqvU=; b=
	HFV6D1ypkoZj8prNx3SODpImGLRVVMYnISG5WnkDvP40ZKHC05R0daqnaei+jXBl
	VCTaMKGQ1bsjP0Lgf3g+SpHNyVHEpkx09FUoJODdZahAABXKbNch1aS6ihxEuXkX
	lhw3LbUY6Fj49gQO4f90K8oJjCwYnBcZcdgh9xpASCAnA/VD/xl4PtRaFA2YMfrL
	Ya/QL07hvNDGz8rtbt72jzcH3+KyI4Z8CXYrVPIk4VyfjDrPGnojg4SmrSejyhjp
	ps6TtUgemLQ7ZrmLi7ju4JGneWNEIkxYjwfLvOeoCzi1ANorjMr+ns4PbE5IRV11
	KsXrg1Y9WHFm2W50DFFDWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746509470; x=
	1746595870; bh=I+YM0piTC/nMKHx89ShsmNPvXut6jl/E8pNDRWfLqvU=; b=n
	P21HXyDQQeqM+8QK22sE/zCwJ4n9sd0UIfV7iXkGKdtk8IvOuQhZGgzJSATCimeB
	stGkVk98K5vEttGwK8pWxijKPP8E29oBw0x0rOms1F8D2qKfV/UJ48b5/KmevM5Z
	HRwUB/0+GPqeQXMcnD+htAnOn4CNpwOsYDo1LjKIEXUBMScJ2Eb9hy+3DbqICrbX
	vFWCu+CzyEr9MJahoFPBdOufRhrIcERiRRrbZ7JBpC9Bpi0CICeNEwhE8prSQQKJ
	seeeB3jsF1IBT9IWvotebZnbyKmjhF9Hi85AwS7Q3j20TiMJVXqmfFYxKlJ/VqTS
	Zh5+LrrzHwJmS1icLTi7Q==
X-ME-Sender: <xms:np4ZaPIfLLwTiF_gaiBtvuJySiS947uhYmLTegfnreS-UMD_rS4kMg>
    <xme:np4ZaDIii1po6-aYIViCq3TgN_5-gNT_9HxUhgnlLgaV2SXrl6R7eA2Kv1rCoNYNL
    dn8Kf4PV3KMRAiCS44>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvkeefudehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucgoteeftdduqddtud
    culdduhedmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddtnecuhfhr
    ohhmpedftfihrghnucforghtthhhvgifshdfuceorhihrghnmhgrthhthhgvfihssehfrg
    hsthhmrghilhdrtghomheqnecuggftrfgrthhtvghrnheptdetfffgkefhkeekleevtdeh
    geehgeeikeethfehgffggeeiheejjeffuefgheegnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomheprhihrghnmhgrthhthhgvfihssehfrghsthhm
    rghilhdrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtg
    hpthhtoheprhihrghnmhgrthhthhgvfihssehfrghsthhmrghilhdrtghomhdprhgtphht
    thhopehlihhnuhigqdhnvgifsghivgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:np4ZaHvTbmeXWDlP387tSPfzSka6yo6bgUnZRVC2qt8HKV6a30AUTQ>
    <xmx:np4ZaIb5d4A1vxVDH7SKjW6TnL-jnOqGMqepzzPzevZJro3hMW571A>
    <xmx:np4ZaGZmD_UDkYxbSJtvfSK_c5YUOyiu5DxrfglRvebTEN6SUpOAdA>
    <xmx:np4ZaMDZfIhTKVfjfITrluZDk0Fq8-rvsitcsJsQofY9GZ8y8RDB-Q>
    <xmx:np4ZaIxVUYq-hXRg8GzM93h4Bd2gY5LGjuYlQfR4TqMHkkq9ZgQz2XWW>
Feedback-ID: i179149b7:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 4B68F17E0071; Tue,  6 May 2025 01:31:10 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: T3020fe31353c17c0
Date: Tue, 06 May 2025 01:30:49 -0400
From: "Ryan Matthews" <ryanmatthews@fastmail.com>
To: "Ryan Matthews" <ryanmatthews@fastmail.com>
Cc: linux-newbie@vger.kernel.org
Message-Id: <5d4bc837-20a9-4ace-a033-ea55067c93a5@app.fastmail.com>
In-Reply-To: <20250504180431.15349-1-ryanmatthews@fastmail.com>
References: <20250504180431.15349-1-ryanmatthews@fastmail.com>
Subject: Re: [PATCH 6.6 0/2] PCI: imx6: Fix i.MX7D controller_id backport regression
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

On Sun, May 4, 2025, at 14:04, Ryan Matthews wrote:
> Hello newbies,
>
> This is a test drive.

This is a maintainer response.
