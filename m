Received: from mail.cock.li (unknown [37.120.193.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C0E3537FA
	for <linux-newbie@vger.kernel.org>; Thu,  5 Mar 2026 22:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=37.120.193.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772750882; cv=none; b=eakajgsngnByqMw0X+kRTxBsSiH4YJsA894umknJBpxpsvdJ7+vHn8974pdsfdnkmH4iNiYPr+h1ALP4Z7vKrlk6zw6n3i8opjtnUNx07S8mHxRZcEcmc14qadiGDDLfZo5qlZx4uC4/kMtlPxKIb9YnDMqF1XnFSEw4lEzP+J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772750882; c=relaxed/simple;
	bh=YIaOaX3S6nBi2PnNrBOhFmilnbhhcVWR355faBvR1sY=;
	h=Message-ID:Subject:From:To:Date:Content-Type:MIME-Version; b=JYYpLHiZmNS/fxambm7KXB9yA4s3TNXp/uCFHmT2vFb7NKH9HckgWB/PgigpNCyVNSJU5XsoBrLxAS73h1pAjSz/MkUGEX5+uiL7y0JM6lAoXo6z0afyoL18rB0q9z9QSjNwGJb2fCN/FLYhg8TFuCCTPH4L23oJQeRixCsVs3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=airmail.cc; spf=pass smtp.mailfrom=airmail.cc; dkim=pass (2048-bit key) header.d=airmail.cc header.i=@airmail.cc header.b=d1TXzE/E; arc=none smtp.client-ip=37.120.193.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=airmail.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airmail.cc
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=airmail.cc header.i=@airmail.cc header.b="d1TXzE/E"
Message-ID: <dde51af48b45c1896e381ac10727ba73b62a7d29.camel@airmail.cc>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=airmail.cc; s=mail;
	t=1772704191; bh=YIaOaX3S6nBi2PnNrBOhFmilnbhhcVWR355faBvR1sY=;
	h=Subject:From:To:Date:From;
	b=d1TXzE/EhRv3WJ0F/1x/T7MVwvV/2QefCiEuciX27m5CPTEt113kA3nuf3xe0aFvw
	 R5eukbq3rgi58YtXnbNJURjDvt64VlURIs1Asft6oXIe57I8MdaTTAovUVxjtG330X
	 atRzLibXEVyG4+Hhr0D1pFUwzj6UHetNNDApjP5FSktrcJXrjJgt9BZhxQs/ZtXwYF
	 G4UsQV7yXotKL9dee8rAejevdspnu9IFv7kimmF2moXeaB6bpMTdk0nRQvLN0m6Z6V
	 /Kwc5wXFikwzKJqpUKsC37xcA3paz4E3cB1kCFkNQDA9FS2KaISDGeKK76kF98sXMm
	 GHgXAfKixYHrg==
Subject: [TESTING]  just trying
From: Manuel <manuelebner@airmail.cc>
To: linux-newbie@vger.kernel.org
Date: Thu, 05 Mar 2026 10:49:50 +0100
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
User-Agent: Evolution 3.52.3-0ubuntu1.1 
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

I'm just trying if mailing to a list works now.


