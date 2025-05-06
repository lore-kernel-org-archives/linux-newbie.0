Received: from fhigh-b3-smtp.messagingengine.com (fhigh-b3-smtp.messagingengine.com [202.12.124.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC1EA4B1E4A
	for <linux-newbie@vger.kernel.org>; Tue,  6 May 2025 05:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.154
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746509788; cv=none; b=gtWE0easeJkvX5W4tPbeMfSPu2Xt0gUtNZz1kueN14StyFFGoObmURYPgnaCZW2oBTvwRQaElolXaMiBqkoaKm6g91eaNCEZbwAnK6R1XEFHOXw53iWHSNognqilsRNR+wfmm1ZN01gJcgZwKG6lt85oF6Ll/bGhNUUtoXdWL54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746509788; c=relaxed/simple;
	bh=fp4lUsA+pstGdTDs5VOxfEa/6UMvFAlKi53gViyAyb4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=u09K7FiKnLobhW1HluBGYtoaksEm9XDyGqWmtdO9UuBAPLh2eDD5kbpR5Fp18ol0StTx+T+wqTye+JemJT0ANejiOiW8FT6dXkk4YqwgTCSgnVPPz7xP/ieHirTNJQsyI9ChVIcW5UKEqfLivCUZ7tqY4w5+w8zeuMssYDBB2Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com; spf=pass smtp.mailfrom=fastmail.com; dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b=SUEGcB7g; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=ghh26CiH; arc=none smtp.client-ip=202.12.124.154
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="SUEGcB7g";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="ghh26CiH"
Received: from phl-compute-03.internal (phl-compute-03.phl.internal [10.202.2.43])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 6EA8D25401C8;
	Tue,  6 May 2025 01:36:25 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Tue, 06 May 2025 01:36:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1746509785;
	 x=1746596185; bh=cAABQieMvvbzDKH8jDtPQ3e7m72yWXrqyZHBdMrLJCA=; b=
	SUEGcB7g+/uJELW9DqIxTFdVSSNMRxyxYdredh/Wq9ztAqHY1fJtmWVeUDZ8+IoF
	UVlAvD0W+mQ2qP1+tCRDp3hazKSQUzgE+gimIEM2znqXNI6+39B89nO9LA4yqwuB
	TG9LGaTJehPcnMe6XWJEoIH1d+I9/g7sAEsDUvTNQAQEzTJFufsJKk+FA1LLpfq7
	QesClm8fRCbRfJpFRUnqWMhZ/lfGw9atYZRBG0IK//zjA/Mpjlz8NhKtg2IyGvKc
	M++U7Tf8Z+Rw0VrAedq7X3aNpChDjjCDFYy76H5pLkvT7pyYZ8+D6xTXP62Q2+wg
	5TX1tr5z6NvkTSeC8DHHMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746509785; x=
	1746596185; bh=cAABQieMvvbzDKH8jDtPQ3e7m72yWXrqyZHBdMrLJCA=; b=g
	hh26CiHyaF5RE9EQtyc/vZpsVxJgb2jc4CqiGT5UIw2zMYSexq+2BpkdgmqaVN64
	SVsi1oLIjsDKkKMeDjv6BId0alIkJ6sFrsOmhDZiM/0QtxBBzOyAfImk5VhmJ3Rp
	lumdEFpj8dQOVKfm0+/sETVTGEuT7aeIPZjB26G5tVmi+M9wS62HDUvHvvDqy5AV
	vxzMLCzHV++7J9f8+YmGFF9hihxAzImnJ3WHpKYAek3lNeelaF69jFa8EzBWTD40
	3qPdq0LyIYgqzYl6hT3BShrmCRTz8Jcfy4mn+ohSqNdvn+KXDd0054Z9FC12Juy8
	QJM0Yp9EWrD6fpCHbjZFA==
X-ME-Sender: <xms:2Z8ZaEMRQ2g68giRBvQ7ZtNeFjbE4tRXrQjpWuAXrHOIFbVuFUBLqA>
    <xme:2Z8ZaK-nyvGSj_6vkhvaKT108c523tqVP2OQTyRe9fze-we8U6jvcQ6Q2x_QZ5xh2
    AlzXqB-WeeVaalCJCc>
X-ME-Received: <xmr:2Z8ZaLT3pFRZN332xse8k6uUDaLefe7uM2kxoWgxrsMtGHxSWH4r6zrtLS1Fx-o-u327X12KI9EjqxlEJa23elbjPiNhMXmyqwRllWtBf2AXqrg3c-D8pG0GaaAcyS4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvkeefudehucetufdoteggodetrf
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
X-ME-Proxy: <xmx:2Z8ZaMubnPd7QS3cr2_IEs9ZElvSIGNAAj4RmnvIkn27INX6JOIHgg>
    <xmx:2Z8ZaMd7Dgd9a7P6NTst0MmmIYJX8cb3pZCr3LDckAbEapnaqBsd7Q>
    <xmx:2Z8ZaA0aujIoYpSNob-8WGBlhEu7mEbxQ9R_7iBk_Qi53lMl8bGbuA>
    <xmx:2Z8ZaA9XPoniY0WIK1nkq4ERHaAxQyEUZzWd-AFpbN9ov96k1RPZ5g>
    <xmx:2Z8ZaAMJISwAY9Ce0swyeYJQKzW0ptVLoyYqIAwPLxueg2RHhuNR8yq_>
Feedback-ID: i179149b7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 May 2025 01:36:24 -0400 (EDT)
From: Ryan Matthews <ryanmatthews@fastmail.com>
To: Ryan Matthews <ryanmatthews@fastmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: [PATCH 5.4 0/1] PCI: imx6: Fix i.MX7D controller_id backport regression
Date: Tue,  6 May 2025 01:36:22 -0400
Message-ID: <20250506053623.4817-1-ryanmatthews@fastmail.com>
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

This patch applies to version 5.4.

On this version I build tested but didn't run test. I have practical access
to relevant hardware which runs 6.6 but not this.

 -- Ryan

Richard Zhu (1):
  PCI: imx6: Skip controller_id generation logic for i.MX7D

 drivers/pci/controller/dwc/pci-imx6.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)


base-commit: 2c8115e4757809ffd537ed9108da115026d3581f
-- 
2.47.2

