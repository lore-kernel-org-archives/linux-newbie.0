Received: from m16.mail.126.com (m16.mail.126.com [117.135.210.7])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1EE41CA89
	for <linux-newbie@vger.kernel.org>; Mon, 18 Mar 2024 06:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710744630; cv=none; b=DGAJt9tPYIwg279TOePxWJtjkYWg8LR7q6FmfI3uXLxRxhd4Ntydw2RwlY5uI6OkiTxc5icW9inAEBFgaPuWvhhDlAIB9oINGIVn41HKrGBvrivhvtsOAkx/6SO/ALs9rhI45qRJ70FaijtSn6AJ8ju6M+JFDevMIFzX99M+Zwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710744630; c=relaxed/simple;
	bh=OMnqBmVzQ8bngFXxXyuKKpualbmKXwriPxo6VCCEZv4=;
	h=Content-Type:From:Mime-Version:Date:Subject:Message-Id:To; b=jXhqfBGZa5ipWL+WHpJZdZqwCz75hbC6HalvuXA6/wS68uR7YM96DvINu6DXunHP5EdkEZQ9v64tF+FdZCsZlImSIdHTgNaFB7ty1zax+8BvRIFoJbwxbeSaJuwOTp/tpuDXUwd9TZSk6MWdG8nYQY6u87cevFeOEJsyN0osvQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com; spf=pass smtp.mailfrom=126.com; dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b=cJEwifou; arc=none smtp.client-ip=117.135.210.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=126.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b="cJEwifou"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Content-Type:From:Mime-Version:Date:Subject:
	Message-Id; bh=OMnqBmVzQ8bngFXxXyuKKpualbmKXwriPxo6VCCEZv4=; b=c
	JEwifouUHYfJFZRjwXhKtmmUaJ+mtQTRxbDeMwA+Lq5+NnIhcp7OMH5tG2rfblDS
	4VONiADYgLwIvtJF7sVIxV9m/lfC34D4nIQVxwzy+yS/hp22nP27xEKpmI+1ZRil
	SzWVaClJfBL5c4YPZT2aqH/4pTQ5n/deTK6VM5SNG8=
Received: from smtpclient.apple (unknown [113.84.160.214])
	by gzga-smtp-mta-g0-4 (Coremail) with SMTP id _____wD3X44i5PdlLQ2cAA--.14920S2;
	Mon, 18 Mar 2024 14:50:11 +0800 (CST)
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
From: Meiyong Yu <meiyong.yu@126.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (1.0)
Date: Mon, 18 Mar 2024 14:50:00 +0800
Subject: test
Message-Id: <BB883473-ED9B-4CC3-892C-655BFF42202A@126.com>
To: linux-newbie@vger.kernel.org
X-Mailer: iPhone Mail (21E219)
X-CM-TRANSID:_____wD3X44i5PdlLQ2cAA--.14920S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUxwvtDUUUU
X-CM-SenderInfo: 5phl501qjo53a6rslhhfrp/1tbijgalhmVLZsH1nwAAsI

txt mail

