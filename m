Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 955DE28DEF5
	for <linux-newbie@vger.kernel.org>; Tue,  6 May 2025 05:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746509679; cv=none; b=Cp2J9RBFKKffQ+xNQWBeEGIKlY/YbHuYggCkSoacuahZTaiQRNDd1JDiFCgku2/9LY/gisWRTsYaOm+6/0tBcgmOCgA9kp9v+6Adn3zciyXp6qnCQ96i4+tcAOnGuxfLdS9+FVXvxIqPNLDK6y497TzmOgq4iLwhG6PjSal5eBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746509679; c=relaxed/simple;
	bh=p1gG8rHPrN+/mU98af/3Pg0YbEFbvPqAkQM0hWL0xdM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=puxEmiuiM8JwJaJ0wqi+uEeFshhd0dU6XFpxF14SyjDzxjFKPMZe5xhFHFm06ZfZ3tQPD7fWNW2TdrkPZGTO0Q5Nxa2ZUdk3jEjyWZnf192DlV7TiksRCexYGfXcl84LmOyqAR7UxKKJL873PgJ9HeYqkOjqj8RqZP2ZtX4KZdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com; spf=pass smtp.mailfrom=fastmail.com; dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b=vdHcsCyt; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=KD/Ua09t; arc=none smtp.client-ip=202.12.124.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="vdHcsCyt";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="KD/Ua09t"
Received: from phl-compute-02.internal (phl-compute-02.phl.internal [10.202.2.42])
	by mailfout.stl.internal (Postfix) with ESMTP id 7586B11401FF;
	Tue,  6 May 2025 01:34:36 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Tue, 06 May 2025 01:34:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1746509676;
	 x=1746596076; bh=Dv0q1x2W2lfSNWhecXTaGmoIYHt4riJVwOv/fSj1v1c=; b=
	vdHcsCytKd3Dly//7KJylFYPBMN6O33n4/c67macUXhRqADje5VCQCNyfBixtvZ4
	5JjjrZTgYO8+jn4ZQ9ADgnocmL7JYT2wHxioJHd4geMZONuAqDGzH689KEpcKfff
	BwKZpV4MY06yj/Kf65xYcktnGmIzh+77E0B38KREBbUs1ZsSkfk7VYUEFk84j8wq
	3iTMWb1VZ+/kF1rXWtscDWfwXzRHwvnhquWZpnZ85GQLcpqM3/GymX8E3hbjOcvV
	Tcu7alg6XClpg0HEBjUIHEm+V08ioIc5r5fcvCiuTCRHFXJGd15wcNPRTR/jsRlv
	Ky6gZQaUq1JDYqDB0Get8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746509676; x=
	1746596076; bh=Dv0q1x2W2lfSNWhecXTaGmoIYHt4riJVwOv/fSj1v1c=; b=K
	D/Ua09tGUzrV545BLOPIfAMxNE0kwX6T4Xm5EDIx+0Md1hU+g/kWjZ2dcd4owHfJ
	qSIz2Jvg7eSn5mnE6WLK6J7geog7xcvpKBWkzYbQ8p2ilV4ATlycQ+t696bPjuHw
	jOF2vNi9AMQGwxUSnKmRXUrOtJDKIA/i7Y3b6YY3/+n3MEzFcsUghSqNXGE2LILO
	mR2CIk/AZ61Ga1NF9o5XLt6Vs6LLGhJxH+rv8NEvNTI4iaeKJdbUn7QZCDp91DLE
	nJsCm9rjyMKRpYK63mGEmOwp6wwCAzeO/sBqN8xYUpntmFNDbhjLYaZinUy+UDQJ
	bphqbEVXJLYTwiKiLoeuw==
X-ME-Sender: <xms:bJ8ZaA5AMKvqxODc_pzMc0fWlAORIxM0ExVzD4e25lwIcOEXZgGx3w>
    <xme:bJ8ZaB729bXcc7uTt2ph_oyfV6SOsD48g6QhcH3mpqLhFRFBzqjtOYnuHfEppCeOC
    pSvQ8CULP_6k-FPmZs>
X-ME-Received: <xmr:bJ8ZaPcW4VP1RVVW-EXMMKUObU6Yg7Hl61V1q9Qfh08bHspZX6r5wQUU0-n43Rg1aVz6gaEVFH5m1gpX1NDv583pNieMjWspfEbk93cBuCRkxtm1e3wh8yJSEXdbbEs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvkeefudehucetufdoteggodetrf
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
X-ME-Proxy: <xmx:bJ8ZaFIdEJTdZO7IrswuXzfAfU7aK0E94TKrz-gIcX-MihMd2BfsuQ>
    <xmx:bJ8ZaELsD-Xfq56MvTieC_6hF7d6JTF5_2DlO6YcJmpeSqZWDrK5Uw>
    <xmx:bJ8ZaGyAyV_-XQkGsIyP3JAkbA0d6Ua8xIq6igmucSVvJHFcVFVGPw>
    <xmx:bJ8ZaIJHWlBaPKpev-g7c-XAD-L_cdN8-r-XnCtPx4t-FbSvettEtA>
    <xmx:bJ8ZaE55PO1XKWr4LHnXXf6r4YDG7ikqZrdOciD-M6KxQhdq9IInMYae>
Feedback-ID: i179149b7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 May 2025 01:34:35 -0400 (EDT)
From: Ryan Matthews <ryanmatthews@fastmail.com>
To: Ryan Matthews <ryanmatthews@fastmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: [PATCH 6.1 1/1] PCI: imx6: Skip controller_id generation logic for i.MX7D
Date: Tue,  6 May 2025 01:34:31 -0400
Message-ID: <20250506053431.4743-2-ryanmatthews@fastmail.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250506053431.4743-1-ryanmatthews@fastmail.com>
References: <5d4bc837-20a9-4ace-a033-ea55067c93a5@app.fastmail.com>
 <20250506053431.4743-1-ryanmatthews@fastmail.com>
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
 drivers/pci/controller/dwc/pci-imx6.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index a3acf144a40d..4f20094faee5 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1172,11 +1172,10 @@ static int imx6_pcie_probe(struct platform_device *pdev)
 		if (IS_ERR(imx6_pcie->pcie_aux))
 			return dev_err_probe(dev, PTR_ERR(imx6_pcie->pcie_aux),
 					     "pcie_aux clock source missing or invalid\n");
-		fallthrough;
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

