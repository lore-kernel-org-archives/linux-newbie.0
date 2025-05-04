Received: from fout-b6-smtp.messagingengine.com (fout-b6-smtp.messagingengine.com [202.12.124.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E853B1CAA62
	for <linux-newbie@vger.kernel.org>; Sun,  4 May 2025 18:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746381876; cv=none; b=HK4KDG6jFwU/OrOt/5W+/xi2YqQVx2WYfcIcbTlynY0ciArXZd56nLvpq4V4vpK/5RWza/2PzWO7IK6BgNgwbIUBFXimI/4Sta9vGLxW9GXwax0T+mAACaaoqoN07N+jtTEYA1ZI2zWN0bFmHTm7cmeBae6EbpHvPsw0M9XhPOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746381876; c=relaxed/simple;
	bh=/xqiZZeXxvP4T9gLCUBQikPZZ0wIuD3/zN7SeBmtIQc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ZPbikzMAJD5qtVn9XNrdsQGvVbBibt5foLaWbp7Z9mq0/Yp5fgGsH7gQw+ekCRfWjhdkOjsWrNumdH2TU0kEbRbGh3ZYyZsShAq5CYAKy0SLoL0pEg8xQ7MS3rum4PY8EJMS7aSzsRGTCcV9ewdSIBKsirtc1d5qDUyUcPjfkN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com; spf=pass smtp.mailfrom=fastmail.com; dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b=Oomkp2OL; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=KPvKl7rf; arc=none smtp.client-ip=202.12.124.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="Oomkp2OL";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="KPvKl7rf"
Received: from phl-compute-01.internal (phl-compute-01.phl.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id C521511401C7;
	Sun,  4 May 2025 14:04:32 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Sun, 04 May 2025 14:04:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm3; t=1746381872; x=1746468272; bh=LS
	Y5tq5S+GDfy45J/Dk1m4wMGS9W4hFuGo3hR9LqC0U=; b=Oomkp2OLVFukQLP+yF
	2nhUv+InFM4CqXVLULE94mP2ndWhZQ1atcU0GDLNZQVzvQuq305NItGlwr77XUTa
	08naqD4H6b58/c3oSlspUZYEW2i99XLqGXscTIixXt16zxXJVFP/HhzwEKdrmna+
	9hUA+ofUhW54Qp38Y8E5/cxz1R5lTYFqszeK5XQ+fD8iBD9siJ961mBcURRhoswC
	lbY6jkLSRizmvmHaoqYqmz6c75OoJM4H4U9dNlkSzSCPdz8UeOMicW9/OgPPPBez
	fsHafgOjF2sbOsVHP+QgUk+N/vEKSbL8lHDiqrT3d8jxjBBuDz0m4ZpDfE/Vp//I
	YSaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1746381872; x=1746468272; bh=LSY5tq5S+GDfy45J/Dk1m4wMGS9W
	4hFuGo3hR9LqC0U=; b=KPvKl7rftVo9jDdBJLE94H4deyq6SXmVHkuLKOOEPNRN
	1odj5k6E/uZqhcd7TPnAI4I4XKo2v+t5YsF4Yc7+wQGfoCUoKoUOaAQpXuGV5Aku
	rbgNlhQOsoc3ZVUg9a9UssPFPmALejZdmaw8QVDndyALlckGWKeqTwLBNSsplPXy
	YcLDQ23UF1cmkid6RIn4X/4o/w+10SoH+WNxoWh17DQpMIM5wD9+vBBlHVGiclJK
	5YVgkv9+id/5lJ5wigphBCbtT5nyyzp/AdSyj/35ObsxOpZdfvT5IlIP0zr9r1BL
	Zp6n7WCfycahmzp9RIYK6tnwHe92njRXF3OCihsz3A==
X-ME-Sender: <xms:MKwXaIZN9-_QtlCb25lDDVHldQ13AXp-OQw-fjCexyMOUpSSpGetKQ>
    <xme:MKwXaDaCcE-EEXoRf8lG6UqshpsBvG9GuczXlOrhxlDBS9xoR97rIwbGMGfU91O65
    bd-hWxqIQ9R2QS8GH8>
X-ME-Received: <xmr:MKwXaC9NDL1Pn_DWgI28NR6hJkRSEu0-GYkj8Dv7OcvxpZBoNXyOGRUxlgQQ84QADn3TrX6qWmpTO0P_xF26x2TAgLKXZKTcoPT4KGrAmTzJfB_3_ORVde4FE082H9M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvjeekkeekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucgoteeftdduqddtud
    culdduhedmnecujfgurhephffvvefufffkofggtgfgsehtkeertdertdejnecuhfhrohhm
    pefthigrnhcuofgrthhthhgvfihsuceorhihrghnmhgrthhthhgvfihssehfrghsthhmrg
    hilhdrtghomheqnecuggftrfgrthhtvghrnhephfefgfefgfelgfethfejgffgkeettdeu
    hedtkeegtedujeevudffteejvdeguefgnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomheprhihrghnmhgrthhthhgvfihssehfrghsthhmrghilhdr
    tghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoh
    eprhihrghnmhgrthhthhgvfihssehfrghsthhmrghilhdrtghomhdprhgtphhtthhopehl
    ihhnuhigqdhnvgifsghivgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:MKwXaCqDzLk1X-UDCPhvXnb5ay95ZazCZNlk15uFLYHdIgE4UA7E2w>
    <xmx:MKwXaDpZ52wgnPeTtyQLUAGqtGmjzdWc1ygIejJMhadZ59ZSDC_ZwA>
    <xmx:MKwXaAS2CUc1RSRHvn00hOBVdC_piteii8ZuIjJChSL7jR_S5bWcrA>
    <xmx:MKwXaDqp9654AUrvLy9CjvTgGa_NZc-YbeWZ_CQj00Bu6uk4_HcxpQ>
    <xmx:MKwXaMair0qmBwJG3UI2ut_UYuFPkBRwGLsNRWJkh6H_hI0d4UuFJt_F>
Feedback-ID: i179149b7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 May 2025 14:04:32 -0400 (EDT)
From: Ryan Matthews <ryanmatthews@fastmail.com>
To: Ryan Matthews <ryanmatthews@fastmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: [PATCH 6.6 0/2] PCI: imx6: Fix i.MX7D controller_id backport regression
Date: Sun,  4 May 2025 14:04:29 -0400
Message-ID: <20250504180431.15349-1-ryanmatthews@fastmail.com>
X-Mailer: git-send-email 2.45.3
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello newbies,

This is a test drive.

Hello,

This fixes an i.Mx 7D SoC PCIe regression caused by a backport mistake.

The regression is broken PCIe initialization and for me a boot hang.

I don't know how to organize this. I think a revert and redo best captures
what's happening.

To complicate things, it looks like the redo patch could also be applied to
5.4, 5.10, 5.15, and 6.1. But those versions don't have the original
backport commit. Version 6.12 matches master and needs no change.

One conflict resolution is needed to apply the redo patch back to versions
6.1 -> 5.15 -> 5.10. One more resolution to apply back to -> 5.4. Patches
against those other versions aren't included here.

 -- Ryan

Richard Zhu (1):
  PCI: imx6: Skip controller_id generation logic for i.MX7D

Ryan Matthews (1):
  Revert "PCI: imx6: Skip controller_id generation logic for i.MX7D"

 drivers/pci/controller/dwc/pci-imx6.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)


base-commit: 814637ca257f4faf57a73fd4e38888cce88b5911
-- 
2.47.2

