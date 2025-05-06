Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61224B1E63
	for <linux-newbie@vger.kernel.org>; Tue,  6 May 2025 05:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746509788; cv=none; b=WPZ8FpJWzWPWHI3r46GPuVajtQ5Tt/yHu5l5jAjOxnoMQ4lncp0GgT5tgqSeQuNCi6GDptTj/uIEV+n7y+33YI246C+8t/LQgCzpWCLlin+TIXrd7ckK5kSO2vplS+ij0EFsvwnLulkM2tbYewe68f35P+Jod8K3GNKBD8oPYMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746509788; c=relaxed/simple;
	bh=d0I5KRmaORUOIir0Bgzzoebklxsq3c6+LDEGa9FxNWA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cJFyp1rhbIdsi0jawUPvrx2J1E+Hf1hbMOOATCx0imMGfer7PyGeRbZ/UEtsliCvWIdB/WbdXmTIohw8yIywgIoK8B0gokNxkXCPXbGif3MaZbRmOU0TXnOvuWN67IybbCM/UBp9jgronZXdUfJHyrYVcd9peqa3CfxMGVuJMB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com; spf=pass smtp.mailfrom=fastmail.com; dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b=ikTL92J1; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=GlJd5HDW; arc=none smtp.client-ip=202.12.124.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="ikTL92J1";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="GlJd5HDW"
Received: from phl-compute-03.internal (phl-compute-03.phl.internal [10.202.2.43])
	by mailfout.stl.internal (Postfix) with ESMTP id 1B95411401F6;
	Tue,  6 May 2025 01:36:26 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Tue, 06 May 2025 01:36:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1746509785;
	 x=1746596185; bh=Fanrrjrhf5q3I2hQvI1PLFZkTUJuSGR3rIM+6zfely0=; b=
	ikTL92J1w1DRHjtCAIb3BKJ/BErmUA79koKUdseVmDG9tzCy6lmd8qi4EERgPvmW
	bZqYUB8zg+TgtNeGCHhUJ4VefdRvJjfjRIwtlg0bwCo/rBLy1NZW62c3Uw8KbipA
	BD9fAdorXfuzkkbsZX40J3OW+TL9mKZ/nGLnTZxpxjhTuc49mqogO9yMXR/1Sq6e
	6ptG0AKvTlW7SZ8T5zNhX8+CIwLjccXxhmBySnKqPPIii0HRjIN5qtsSW1zt5sAt
	3nYyyzkZPypjBWxGYYwSBst/qMOrObpVpA4FihFOr8+cK8Knzf6ms9z970X0kUR3
	Sg9HwKC6/r445LqSut+3yA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746509785; x=
	1746596185; bh=Fanrrjrhf5q3I2hQvI1PLFZkTUJuSGR3rIM+6zfely0=; b=G
	lJd5HDWCLZ6UVOSdjFORs1EeFacqoiZuTyWOrjl0sNTB4vxMOV95gX0Ep+x4HpJQ
	fcJzIs1EdXsjQH+sWSE66xHDukmNkFTNUHW1Hl7y58MWKBjzy8I/cc5tRAxogxa7
	f7DaDrctyqfdyfmbCUEhhvkv4BSKWApXengHQA/pu7iV/YQBMU7Uhfp9HNU4mE4k
	zCCZiTBkE7wnEXOwbOhHE9GnXboWbhWpnTvgnAFyHiXwXkPc13d/wayYeNPXuU6y
	8wmogCESMoi3j+255hbPj1Kxk+4OdXQc9+vORdg6o+jor9vu7KZn985OVcyJ5VWA
	P10YNNPok7W1RKoWHFDVw==
X-ME-Sender: <xms:2Z8ZaINFza2-YeNWL_XWJv9cRTjPkQJ_acRtEtqqCpFYcFj4IVzMag>
    <xme:2Z8ZaO9mlGOFfk0mfBc8ewElzL9TRntJz-VUSytmyz_u9tqynePDH9GvWej0Sj8GI
    qG2i9uIw-eRr7QhToo>
X-ME-Received: <xmr:2Z8ZaPTlXtiXUFw_8dkDVYqKLVrw2i_WnJ1JylVPUnbPKztCoRnGnqIchMvu5oFuixOb_AITY3BobIHuRoO1mPRE-tldC3mbnsKkE_XC-s70cGO9Tgex1EbWnkFPtsI>
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
X-ME-Proxy: <xmx:2Z8ZaAuN1Dyahw0lf7aXdujbeOcaEhsowzUROfGYw1wGHj7zjixYmw>
    <xmx:2Z8ZaAe0n6nTsKvMm4FLf5xeGN91BNKqW5Y4gS8E-_NGuveLrubTyw>
    <xmx:2Z8ZaE2NGD6b_3DsTy2baV8Gso_-PoBtI56YdivxQMYBsBCZx3jY4A>
    <xmx:2Z8ZaE_pAPtCVbQchljWVyfglQev8HGBZsZNxWnr0l-PZaqqW92dcw>
    <xmx:2Z8ZaENdGuIqrO9zsURY_07631BE9J8VFPLmOl0M74acl9i2-Eg-Uuc4>
Feedback-ID: i179149b7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 May 2025 01:36:25 -0400 (EDT)
From: Ryan Matthews <ryanmatthews@fastmail.com>
To: Ryan Matthews <ryanmatthews@fastmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: [PATCH 5.4 1/1] PCI: imx6: Skip controller_id generation logic for i.MX7D
Date: Tue,  6 May 2025 01:36:23 -0400
Message-ID: <20250506053623.4817-2-ryanmatthews@fastmail.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250506053623.4817-1-ryanmatthews@fastmail.com>
References: <5d4bc837-20a9-4ace-a033-ea55067c93a5@app.fastmail.com>
 <20250506053623.4817-1-ryanmatthews@fastmail.com>
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
index 30c259f63239..86cdd27cdd3b 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1112,11 +1112,10 @@ static int imx6_pcie_probe(struct platform_device *pdev)
 			dev_err(dev, "pcie_aux clock source missing or invalid\n");
 			return PTR_ERR(imx6_pcie->pcie_aux);
 		}
-		/* fall through */
-	case IMX7D:
 		if (dbi_base->start == IMX8MQ_PCIE2_BASE_ADDR)
 			imx6_pcie->controller_id = 1;
-
+		/* fall through */
+	case IMX7D:
 		imx6_pcie->pciephy_reset = devm_reset_control_get_exclusive(dev,
 									    "pciephy");
 		if (IS_ERR(imx6_pcie->pciephy_reset)) {
-- 
2.47.2

