Received: from fout-b6-smtp.messagingengine.com (fout-b6-smtp.messagingengine.com [202.12.124.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68750156F45
	for <linux-newbie@vger.kernel.org>; Sun,  4 May 2025 18:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746381877; cv=none; b=KpqljmdKzAO+e2/GFSfoQOLe281mHGYPXn2Ov8XlPUMdwYUWgMQUFKyfcxMkxfbCeAHCjja6RxtiqPHc6UfwBnGwsPkBAYUVyCx+QNAfSMrf2igZdR5VPkDLnGsMqPj+FF2SL0feCxdUfjXGW1tef8V4TtTMU/BMssVxCR/CC4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746381877; c=relaxed/simple;
	bh=wCekXqbY0Akt7yHdTHgLX1PhHKMtiY418Hrw89g0ZRc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Lfew5aKxXlEXjk27gpB1MDJGIDO3P/6wd6H1M+9eAw5MzGWbw3nyB2Vq8e6d5jWgiFK4lxN+5lOTm+/ImaRMEux9R73kNG96KoR2lRf+rWuB1gSsnxfrONicRqhEa7hP2gWsPsJk1StZxaZzRbn/iSWvOKgjoAZSSufoBbMHleI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com; spf=pass smtp.mailfrom=fastmail.com; dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b=09Q0oWD3; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=r1c2h3gz; arc=none smtp.client-ip=202.12.124.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="09Q0oWD3";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="r1c2h3gz"
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id 2AC2D11401E1;
	Sun,  4 May 2025 14:04:34 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Sun, 04 May 2025 14:04:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1746381874;
	 x=1746468274; bh=V8ewhzHFrNA1fM3QI109IbJqu79a9n0Vi02n10hE2c4=; b=
	09Q0oWD3k9RhKVsbtJdz0qddXubEaMKnmSuu1gLvwFx30ljn3dlRo4U5l8COAEIl
	XcWN5J8zmBCn691pFy2PKE7Qq9w32kxaSKnOahdoPUP91puVIrmF+md7v88jAgW1
	q2oGxdiF/h5g9ug9j//Cr3oB96T3/7MlLErw1MZymGrsXYZgcYsFhFpcicKhpLFR
	AZFiK38aWQCfL02FbJwZt+P/evMRZKpervf4qoaZiRS2q3hjGg12WQKUjZuZa8yU
	b64tY/LCrA4Oiqia0C/FeE4NIrAIZwijj/Fnokma7zS7NtVTzbJCeL8rsMEes05+
	2B/l/Ey5zdXuhwWPq/o60g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746381874; x=
	1746468274; bh=V8ewhzHFrNA1fM3QI109IbJqu79a9n0Vi02n10hE2c4=; b=r
	1c2h3gzi4HQst3lsVE7CFqGzIZwn3Hxe4XlBFfrpD+mOY7CnWbIg+BT+f38zmIBJ
	JsAG4ELjM/3CqAV9oXAYjqTlxunH4n6kN5y7LdjpO9qeBE5O5c1blrwgTqtrjj5F
	MuE2TqRKbiosa9Ax2MhWyhFtEQQwaa1lucDKXtso4AWlnYjFOWTJUcQP6JUIvCGT
	KsbkZC5z4CjuSzm9vVCC0GFLZ2eh0MZGgihYquwCWoHZ9rjBGQSuAYYJFfBPjmYz
	LI1Z12sR8odS4V66lSGZdSwNq1rb/3fJNDUhJ6Rb8+CLyJTlJihuOjz6bX/PZrlE
	1HmgEz5+jEwYO3W8rBBXQ==
X-ME-Sender: <xms:MawXaHhFvs1BU198cg9qrPf48KfOFfjIYEkpzlkU3yt4Cpll0uDRbA>
    <xme:MawXaECAA-81_xac1YM0uGcgV7Gj33rIm11F7zQQwY8u0mMgwe99TQkWqC93XpNl5
    PEOZF3ko0pLsCZISBI>
X-ME-Received: <xmr:MawXaHFzF5yPGevkFngA2LXdRCy3qjtEVEyA0PgV62YnkM9bpmpgxzzLjV1yqY4pTN6fxp9GR0jW0etb4i78CyiKPJh9FITDJjJiVymzNPSSYf6WkiE6A9bUiwGzUYE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvjeekkeekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucgoteeftdduqddtud
    culdduhedmnecujfgurhephffvvefufffkofgjfhggtgfgsehtkeertdertdejnecuhfhr
    ohhmpefthigrnhcuofgrthhthhgvfihsuceorhihrghnmhgrthhthhgvfihssehfrghsth
    hmrghilhdrtghomheqnecuggftrfgrthhtvghrnhephffhieeijeevfffgveelhefhvedu
    tdelkeeuvdelteefveekleekuedtgeehffejnecuffhomhgrihhnpehkvghrnhgvlhdroh
    hrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehr
    higrnhhmrghtthhhvgifshesfhgrshhtmhgrihhlrdgtohhmpdhnsggprhgtphhtthhope
    dvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehrhigrnhhmrghtthhhvgifshes
    fhgrshhtmhgrihhlrdgtohhmpdhrtghpthhtoheplhhinhhugidqnhgvfigsihgvsehvgh
    gvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:MawXaEQZwzZ90ooHV6ZQXwDQwhhwS6nULzP6eAjjfqcTwl0K6nZ99g>
    <xmx:MawXaEyeuBhoC9TOyIm5YAS9CqKtrVALBGfkp569bgP3E8SFLYv4ow>
    <xmx:MawXaK5Kyruflf4JTIEfsREB1x_2wmMCvmWglCj2WDOEYAlTdZZWJw>
    <xmx:MawXaJyxP-N3Q21ubNGTeOo-1JXaqr-7z9iDUKh6nFhw5IPQk-o5iA>
    <xmx:MqwXaLh7Wxa2jhklXOxyvch7fg54zwxaB84sUzxBtsd-PCgrrSRGhzaf>
Feedback-ID: i179149b7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 May 2025 14:04:33 -0400 (EDT)
From: Ryan Matthews <ryanmatthews@fastmail.com>
To: Ryan Matthews <ryanmatthews@fastmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: [PATCH 6.6 2/2] PCI: imx6: Skip controller_id generation logic for i.MX7D
Date: Sun,  4 May 2025 14:04:31 -0400
Message-ID: <20250504180431.15349-3-ryanmatthews@fastmail.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250504180431.15349-1-ryanmatthews@fastmail.com>
References: <20250504180431.15349-1-ryanmatthews@fastmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Richard Zhu <hongxing.zhu@nxp.com>

[ Upstream commit f068ffdd034c93f0c768acdc87d4d2d7023c1379 ]

The i.MX7D only has one PCIe controller, so controller_id should always be
0. The previous code is incorrect although yielding the correct result.

Fix by removing "IMX7D" from the switch case branch.

Fixes: 2d8ed461dbc9 ("PCI: imx6: Add support for i.MX8MQ")
Link: https://lore.kernel.org/r/20241126075702.4099164-5-hongxing.zhu@nxp.com
Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
[Because this switch case does more than just controller_id
 logic, move the "IMX7D" case label instead of removing it entirely.]
Signed-off-by: Ryan Matthews <ryanmatthews@fastmail.com>
---
 drivers/pci/controller/dwc/pci-imx6.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index 20c8f2cba453..cedfbd425863 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1281,10 +1281,10 @@ static int imx6_pcie_probe(struct platform_device *pdev)
 	switch (imx6_pcie->drvdata->variant) {
 	case IMX8MQ:
 	case IMX8MQ_EP:
-	case IMX7D:
 		if (dbi_base->start == IMX8MQ_PCIE2_BASE_ADDR)
 			imx6_pcie->controller_id = 1;
-
+		fallthrough;
+	case IMX7D:
 		imx6_pcie->pciephy_reset = devm_reset_control_get_exclusive(dev,
 									    "pciephy");
 		if (IS_ERR(imx6_pcie->pciephy_reset)) {
-- 
2.47.2

