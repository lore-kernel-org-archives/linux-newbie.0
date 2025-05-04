Received: from fhigh-b5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850F11DC994
	for <linux-newbie@vger.kernel.org>; Sun,  4 May 2025 18:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746381876; cv=none; b=R/V/dC+j0i6rL1n0DzcR0JFPwIdfRunnwAscoaPSXnOoAJZNHdEJYWR3rbEcfd2pufYOIDNFjMNX3cEGkmHO76aFPe+TgLwsHbB8GrzuE7Qh2Zz/5Q6SrPuzOFWozM9SE7JLu+yj2oxybJ+oxUgP8IxdSDrOfbnuFX8gd1nK0Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746381876; c=relaxed/simple;
	bh=/C5bJUymKx813MtjkWgl3uiNYlLR2C4f11J8PGhl+VI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZsBnmeX5LG6owk/Z62szq1cTenMFtbYPqWHEGQXkk1I4RZXc7P5WuB4kWzGkGdmiG8o06KgSxPXUUE5xF26xr6cGNAcdzMeMdOPIjfYjPyI9Af5PRAEwlgHVaxM6O3pLXkOjDU3eBcs7g18Yi09MUacNQKwuP5sP2NISpuEUFTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com; spf=pass smtp.mailfrom=fastmail.com; dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b=YDdeC3nJ; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=lRDZ+gl9; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="YDdeC3nJ";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="lRDZ+gl9"
Received: from phl-compute-11.internal (phl-compute-11.phl.internal [10.202.2.51])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 82A1625401FA;
	Sun,  4 May 2025 14:04:33 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-11.internal (MEProxy); Sun, 04 May 2025 14:04:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1746381873; x=
	1746468273; bh=cJ7KTcTvYGV7WGgAKqJMyoj82lC9hAxixmEHAzO8t2c=; b=Y
	DdeC3nJPW4OoO2Xd8acT1QyKW9DbJmGg+fXDVmeWRvzhlpOuH7Ix5r657/OUIo++
	rEZaJCee5P01lNxlaIYwowPhjkpmNbNhTW2oCcjRUUhQ3qDsqcZwZDeYbKf67ARn
	I9Kq9uLLHeoY7LA0pe2oYlgp2YbSn7SjkjWUgmL4k8lMfSbjpxwBD89HfhdJhf/+
	pfx2Wq4Mp/1SjtOWCP9IEQVGbCaiGfwEDdD/BH/CMf9MDl2jnIafrcVaiqL/O65P
	bsIBFImr52PP307iPQ3l/XKRTo7KGS8H2SGHmM9CQNXrg2hZeZwb37Vyd6FB2OHS
	B7PBOQW10iMofU3jM4SSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1746381873; x=1746468273; bh=c
	J7KTcTvYGV7WGgAKqJMyoj82lC9hAxixmEHAzO8t2c=; b=lRDZ+gl90syCU7n1A
	EhYFfVmtPHOtTAVch1wcLeNs9USTKGKgN4+Ku/nL3UrbNEQe8KHZfRb2tJtadM+6
	uEXSTbjk7VRyfeMl/9+dHtnvGshEbBQT4Sl0zBH4Za0KZmKAQd2H/d7GC2j5CJax
	1qpKiyoscGCVXPaZq9a0AAkcZCJjqhNhDznls7Ofe99CteQhpIoRDYOOKx7pshQE
	H9m49AZDdBI/3y4zfAZXYvcctTlN5MXR90fsFXMitDXxfBPKIGbZ7OTApqMM5TA+
	D5VEpsd1kLeX/hv90Cef7HubxAiav3ProtAEAOdT14n6dJyRv0c86GN7z3Ww3eIQ
	BjvbA==
X-ME-Sender: <xms:MawXaE9C9A9bAZGPCG1hxTwFI36im0hBUlgmCrcV08tOWAMWGl5pUA>
    <xme:MawXaMtRXSn38DXRNRhtPpc8vdPFIOh7IbdO03-FvAg1Zsou3QhVkR0Fl5JrTnXs6
    WNJ9WRHx55i9TIZsnw>
X-ME-Received: <xmr:MawXaKCNvNx3Q5vOxzn8gJlsbXAuXGGiTOrTa5HVITT114pHFgA0j1os0dIUjPMoAA0wM5wKABjfk_ARzP-ebHMC0i-zt3ZkONIA21NrvNaaXF7GVyFcw6LN1Tdnb38>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvjeekkeekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucgoteeftdduqddtud
    culdduhedmnecujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhho
    mheptfihrghnucforghtthhhvgifshcuoehrhigrnhhmrghtthhhvgifshesfhgrshhtmh
    grihhlrdgtohhmqeenucggtffrrghtthgvrhhnpefhuedugfehfeefjedugeeuveelvefg
    gffgffeugeefvdfhjefhleeiueekjedtueenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehrhigrnhhmrghtthhhvgifshesfhgrshhtmhgrihhl
    rdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopehrhigrnhhmrghtthhhvgifshesfhgrshhtmhgrihhlrdgtohhmpdhrtghpthhtohep
    lhhinhhugidqnhgvfigsihgvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:MawXaEd56ffJWnUNCTlbDdEhOaJs8kes-deUtFFSvcmZGL5nCIjLwA>
    <xmx:MawXaJMxFu05HsFDy-zlkhAGfIGxheTQZs1gDs3EE02RLKbehc7ZmQ>
    <xmx:MawXaOnJZ5ECoqVR-JvgPhN_ayaa3KteDjiehsItLLxxFqv1wHbbFQ>
    <xmx:MawXaLvfAcwxKE8x9ECJO9SkCkOmdWlqXXuAEX8FbImo8egU7lqylw>
    <xmx:MawXaA-wW2R2icflfs4nlvbzbkGb0mSs2ks3b35eJhtlRE8cQ_sWOGLL>
Feedback-ID: i179149b7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 May 2025 14:04:32 -0400 (EDT)
From: Ryan Matthews <ryanmatthews@fastmail.com>
To: Ryan Matthews <ryanmatthews@fastmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: [PATCH 6.6 1/2] Revert "PCI: imx6: Skip controller_id generation logic for i.MX7D"
Date: Sun,  4 May 2025 14:04:30 -0400
Message-ID: <20250504180431.15349-2-ryanmatthews@fastmail.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250504180431.15349-1-ryanmatthews@fastmail.com>
References: <20250504180431.15349-1-ryanmatthews@fastmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This reverts commit 2a12efc567a270a155e3b886258297abd79cdea0 which is
commit f068ffdd034c93f0c768acdc87d4d2d7023c1379 upstream.

This is a backport mistake.

Deleting "IMX7D" here skips more than just controller_id logic. It skips
reset assignments too, which causes:

 imx6q-pcie 33800000.pcie: PCIe PLL lock timeout

In my case, in addition to broken PCIe, kernel boot hangs entirely.

This isn't a problem upstream because before this, they moved the rest of
the code out of the switch case.

Signed-off-by: Ryan Matthews <ryanmatthews@fastmail.com>
---
 drivers/pci/controller/dwc/pci-imx6.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index 822a750b064b..20c8f2cba453 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1281,6 +1281,7 @@ static int imx6_pcie_probe(struct platform_device *pdev)
 	switch (imx6_pcie->drvdata->variant) {
 	case IMX8MQ:
 	case IMX8MQ_EP:
+	case IMX7D:
 		if (dbi_base->start == IMX8MQ_PCIE2_BASE_ADDR)
 			imx6_pcie->controller_id = 1;
 
-- 
2.47.2

