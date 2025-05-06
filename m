Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A998E28B7DB
	for <linux-newbie@vger.kernel.org>; Tue,  6 May 2025 05:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746509678; cv=none; b=h1xSJybUFwkkXlXZvzej2lxLN622CdQJcTgJcZas0IWuSVoT/X1XVSMCB0fkeC/m0rgQzq1ZGJh4m2UEZoQ1j4IMu9XluEi8r9E+2bBGhveKDQI6TFNGuuRdrY5Gk73ctQ/1mMWo6Gph38lnyXa3caFx9MRDr3xj55ZKKwJOUJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746509678; c=relaxed/simple;
	bh=ncN0A59KRgG+4V/9fwlMI76SRzqyk4YuSWuFyAJgfaU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZkayOY/CH1zgMlzBsQOxgZOv0lvny0ey8A4+2oU4tmWMro6VGCLYBgP3O+fTnw3u3iFg5XiVEuu9ud4Mq05fWPQHU+jqBEQFp+zWa5xQEC8qetZNOrC4MCDHUzAOatvL04PdffgsQTLawo7kIagQN9O0jHn3O2QRrzhcv0e/r1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com; spf=pass smtp.mailfrom=fastmail.com; dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b=bd4wVFQq; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=GTNxABOW; arc=none smtp.client-ip=202.12.124.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="bd4wVFQq";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="GTNxABOW"
Received: from phl-compute-01.internal (phl-compute-01.phl.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id A5B2211401F6;
	Tue,  6 May 2025 01:34:35 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Tue, 06 May 2025 01:34:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1746509675;
	 x=1746596075; bh=eJyBvUyVyt/LY55+1hDQugUZsMKccw2udrBjXVpTgnA=; b=
	bd4wVFQqVEKZU9WkEBvEtAlWhweKdW4yWF0UdO/kmSsCmISFDfs4kR7x2h5vL5r3
	SkUtpQy6pmIGLkFFNo9d75TnqLYpE49UqG4rPBZ9ngqaIBLC8uWkJC05yFbyWpuA
	3zi/QR9A0fq52dAeTh7yhtTRJ5Xi/HIaoYDxtcGhvxrwYKaaxVz7qtMOqYa2wnK7
	Nf0u0Sxco83WgpVSW1MbKZbyMw5eTCoUwkf7qaWFc3LZyb7cGWSk/+R7V9HNHPqN
	NEMaof/pp+3qEAKu2YdJPgDYo1CjuMuF+HSLnLQ63xiRO9m2L0NzI1Bkm6oCAiGh
	eacgHC30s4g8XWfTmmvIBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746509675; x=
	1746596075; bh=eJyBvUyVyt/LY55+1hDQugUZsMKccw2udrBjXVpTgnA=; b=G
	TNxABOWSXavxZ9LKzGU0Etdul5NeAKN7b0G7HWaKVwFjAnY7hM9mdOD7jT34R9aB
	oP2EN2kjiHngAqlDqhqL2QR6g5lN4gwKJR8mmtmKjsDRc4/icSLcKstukOhNFvm7
	Kgpqr3JfHL9P1iIoqHe/jYWmIq6ZA9szVHb2uCGWIHElKWp+PRCr5PmrxDw5wqLI
	yQr6R1Xtie1TB2HcGO7k47sfm4rt+SIJiMLrY5c+IuTtX33pggJhNIAD2vfyg5Uv
	vBdhocOLw7Eq9w6w56RqYTs921klCHTmdBCNznI+Ijyo4NKURqbBcdWH8EJmKE+Z
	CTaW0VVhPFrdrEVy+hO3w==
X-ME-Sender: <xms:a58ZaK_1uitPW5ajKKDhLKsFnsxwVeKcbfffrDIpOMo1ndE3yLb3ag>
    <xme:a58ZaKvxnx7PyyoKD3cvt8iQrbGcUMgGMvSfiR7ussg45u-WvZwMtL87b7HcA41BE
    NNhTfnC9sadmwy0p_g>
X-ME-Received: <xmr:a58ZaADgPciY6zdYwgDmBm7F-oAUXhVz9L0zuJH1OPKvYjTrEPd-CnBW-GizcbpJI7v9W3ZgmNJr9n-sPR7d4LgS2N5u-HvS0TF-bh5MwNdBd0zsUyjRqok0Sfzg950>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvkeefudeiucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucgoteeftdduqddtud
    culdduhedmnecujfgurhephffvvefufffkofgjfhggtgfgsehtkeertdertdejnecuhfhr
    ohhmpefthigrnhcuofgrthhthhgvfihsuceorhihrghnmhgrthhthhgvfihssehfrghsth
    hmrghilhdrtghomheqnecuggftrfgrthhtvghrnhepkeejuddvheejgfehtdevffekgfdu
    fffhheffgeehhfdtuefgudevtedttdehjeeunecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomheprhihrghnmhgrthhthhgvfihssehfrghsthhmrghi
    lhdrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpth
    htoheprhihrghnmhgrthhthhgvfihssehfrghsthhmrghilhdrtghomhdprhgtphhtthho
    pehlihhnuhigqdhnvgifsghivgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:a58ZaCfMe57WMhqwwuLjkvvFHcbdS0XD6bEyHsTxZTrVPvs6wvQA7w>
    <xmx:a58ZaPO6WPZoYwVTv0A8eDZSbg31H63SI5cqZ8ByDSXWFCU1iHvBbg>
    <xmx:a58ZaMmHqC7E4a6yjX9ii0E3iOBbMQiEvxKcEtbemjpJQ7V06HDqcA>
    <xmx:a58ZaBv4qTVQit08R9Bnq1on5CNCOynjkKyNst610kZZh9iHVoOT-g>
    <xmx:a58ZaG-TX7mrfrn0Aprs6MxJTPMmMpziqWvHx9JLRaP9GMkkliQhEHsN>
Feedback-ID: i179149b7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 May 2025 01:34:35 -0400 (EDT)
From: Ryan Matthews <ryanmatthews@fastmail.com>
To: Ryan Matthews <ryanmatthews@fastmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: [PATCH 6.1 0/1] PCI: imx6: Fix i.MX7D controller_id backport regression
Date: Tue,  6 May 2025 01:34:30 -0400
Message-ID: <20250506053431.4743-1-ryanmatthews@fastmail.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <5d4bc837-20a9-4ace-a033-ea55067c93a5@app.fastmail.com>
References: <5d4bc837-20a9-4ace-a033-ea55067c93a5@app.fastmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On Sun, May 04, 2025 at 03:13:54PM -0400, Ryan Matthews wrote:
> One conflict resolution is needed to apply the redo patch back to versions
> 6.1 -> 5.15 -> 5.10. One more resolution to apply back to -> 5.4. Patches
> against those other versions aren't included here.

On Mon, May 5, 2025, at 05:23, Greg Kroah-Hartman wrote:
> If you want to submit patches for those branches, I'll gladly take them,
> thanks!

This patch applies to versions 6.1, 5.15, and 5.10.

On these versions I build tested but didn't run test. I have practical
access to relevant hardware which runs 6.6 but not the others.

 -- Ryan

Richard Zhu (1):
  PCI: imx6: Skip controller_id generation logic for i.MX7D

 drivers/pci/controller/dwc/pci-imx6.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)


base-commit: b6736e03756f42186840724eb38cb412dfb547be
-- 
2.47.2

