Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B3610E9
	for <linux-newbie@vger.kernel.org>; Fri, 11 Jul 2025 02:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752202564; cv=none; b=j2t16zEHAbPGoBhfbf+xtRTD4m7vKN4I+VuZg1TbDnFvTBbFQxGnUeqaQ/Z6ZJAccJBrlI/6EApeykOENh3joHTdNllEinxzAPhc1muT7ARs7FcM+bSonqZukze28nUKzr/Su63s2MHKYrx7g4ri0DTn7Ru0yOqBIs0B0+RxJqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752202564; c=relaxed/simple;
	bh=E1W8J+zsy6J6sqvxl3vy3AK4b8g7XHi9Ahy6ggpOYtQ=;
	h=MIME-Version:Date:From:To:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=GwfPRBHjhOGcNZ0Wr5TJl6ALx1Td5dG98jFhR4/5fwzvigUb/CADXa4AdS785Zi9wawPRQpZxXysHuR0Kkd0X/FTJQ/GrpW+pqOcFx+3htgCVhYtD0L96TocHySvSwIMtgpU+Up6seqd6zuJJc9BLI7NT4J0wrOr6pjeOy9QiBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com; spf=pass smtp.mailfrom=fastmail.com; dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b=imMpAMX/; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=LihfkK2T; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="imMpAMX/";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="LihfkK2T"
Received: from phl-compute-06.internal (phl-compute-06.phl.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id BFD181D0010E;
	Thu, 10 Jul 2025 22:56:00 -0400 (EDT)
Received: from phl-imap-03 ([10.202.2.93])
  by phl-compute-06.internal (MEProxy); Thu, 10 Jul 2025 22:56:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1752202560;
	 x=1752288960; bh=E1W8J+zsy6J6sqvxl3vy3AK4b8g7XHi9Ahy6ggpOYtQ=; b=
	imMpAMX/NN0Go2KEB0Oau3kNZN4HzO3e526DUOfQtylcUmhTt52fOHlsyaP8kTzJ
	Slsp5Is5ZAQsQC6e4/zyj41zFHNG2fb8LNGKd2MqsyefqjjHiEnwHN4Ju2udarmQ
	C8TVkPCG96crq29JnE/2u0ifXyxM5MKDimy31wc9jOU23AyI4a3EoWemgTnes2hw
	A8k2pz15WqWfLcI9jRaWkHnxAdpElsgPZCyN0sukRZgEpN7keD5rhr/YlU4eZjkO
	FA+9fDfLwDPatplXQ1dvWROV9e+c5QFw9tuIk75rrxgrQM3zY7YvRWq08XtavUep
	q72p47RZ3uPrqYQrmrFr6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1752202560; x=1752288960; bh=E
	1W8J+zsy6J6sqvxl3vy3AK4b8g7XHi9Ahy6ggpOYtQ=; b=LihfkK2TIBGkEcQOO
	pRfm3BsfC0IYh0halZnh2hOYWv1rSOA6INQ7RR3LEkcIhNKQGbFm6+rJAe19l8lt
	tZh9U4xZpXp/ohWgr91aMwAst49y9kaHkUrT48b2kPaP1fFCvw8Su37W0PpqlVUo
	OYgriO1BXOnmBI5gxTVexNekGxD6akkSE87HvqMUEOcZuvjKrbc+EIdFR6uxoy/J
	srkW46UjhEmvm9pHYR24vA4srUlQ8TqCFEnrbFqfXxxQSq/DMglwSUqIWu/flU4w
	Em1gLBodM7ud6+XcjNIuRmHXSPQeMQYXpHqPAcpS+ZooRMpnHkOfXKjMni6wKA5G
	cQFOA==
X-ME-Sender: <xms:QH1waGMRWQZ8JB-jby0Ww9gWy_gAjUYv_VBcZ3x-zCa2xVAQget_Jw>
    <xme:QH1waE91xeIULB-cB1klpRHboedCGejL3JfJ8WW3EzLr0pfE69jztGO8njsszPHIe
    KH3DaZh7iUl-OTPn1M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdegvddukecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefoggffhffvkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedftfihrghnucfo
    rghtthhhvgifshdfuceorhihrghnmhgrthhthhgvfihssehfrghsthhmrghilhdrtghomh
    eqnecuggftrfgrthhtvghrnhepffelveelteegffdugfeljeeggeejueejieeigfetgeeu
    gfehudevfffgteejjeevnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
    hilhhfrhhomheprhihrghnmhgrthhthhgvfihssehfrghsthhmrghilhdrtghomhdpnhgs
    pghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepsggvnhhjrg
    hmihhnrdhkihgvfhhlsehrrgguohhnmhgrihhlrdhnvghtpdhrtghpthhtoheplhhinhhu
    gidqnhgvfigsihgvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:QH1waGSVCfuvxsUZifunwxux1okIEt0rBri06oG8ICs8kl-EsWaoow>
    <xmx:QH1waEvxQtnEloIzCtvPSW9Nie3xlCDkD83iLNBrpwFBIxHXXsfrdg>
    <xmx:QH1waFwKBr8pz69-Llxhz3wClKd5stx7ylI4611J9-dxVxu9PGZYIQ>
    <xmx:QH1waO7DRfN_PoL0wklLWEpvS-fUFLqsjw882heqeHkhIEO2fwGAeg>
    <xmx:QH1waCTNSZjCuMal-bSGV3peBZcmvjOqt_z6LfFsNz0AmtHJoNkDa46U>
Feedback-ID: i179149b7:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 596D218E0063; Thu, 10 Jul 2025 22:56:00 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: T1b64360518536257
Date: Thu, 10 Jul 2025 22:55:40 -0400
From: "Ryan Matthews" <ryanmatthews@fastmail.com>
To: "Benjamin Kiefl" <benjamin.kiefl@radonmail.net>,
 linux-newbie@vger.kernel.org
Message-Id: <0198dc5a-9f33-4ae2-87c5-1242216c6620@app.fastmail.com>
In-Reply-To: <aHAmupSx4yKNpQUw@home>
References: <aHAmupSx4yKNpQUw@home>
Subject: Re: "Abuse" of this ML for mail-setup-test
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

On Thu, Jul 10, 2025, at 16:46, Benjamin Kiefl wrote:
> Hello, I hope this is not completely out of line.

> Cheers, looking forward to contributing to Linux

I think it's acceptable or encouraged given your purpose.

I sent a couple test patches here a few weeks ago because I arrived at the
same conclusions. Just don't overdo it?

 -- Ryan
