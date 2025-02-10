Received: from mail-10629.protonmail.ch (mail-10629.protonmail.ch [79.135.106.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DEF8F5B
	for <linux-newbie@vger.kernel.org>; Mon, 10 Feb 2025 06:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739168317; cv=none; b=PMj/kB91YVHTht1WUsBjFnx1C497+McoqwbObz8rc2yq520sSDKtX0KOm4FrmTHv9fusi9vTEUoTGz5OFmzAJ99m1Bigp7NDRTpmuI8bfd9Z6bEo1jW2ECszJJozILxqOKSjhYw7rDbOk6vq03gikFdnkto1KhqwyQOrjvEFp2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739168317; c=relaxed/simple;
	bh=nGDHMJYfkL4nju2+is+kww5uk6KkuyZpMB47n2TaaUU=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cXQOzSIe3DnAvsDBvA8pHd3qZ0OphUwAkWwuWm1Gwi6BekhHnIzvQOThfnxEnd8u/F3YsFT1GQh5qjzUjtjt04wklQbrZvwKsJedrlMUgrHfjIlZxTHD1ULkyCjw+NaOxqeq9zhRY6DXJflUSBhumAV116EEohq96TtO0OAIvqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=o9WOn02S; arc=none smtp.client-ip=79.135.106.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="o9WOn02S"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1739168313; x=1739427513;
	bh=nGDHMJYfkL4nju2+is+kww5uk6KkuyZpMB47n2TaaUU=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=o9WOn02SLzOKLUXZ8lWd7WxmZE8q6ByTDaqEDO4WMAU9grnN4GL6XIzbI8XCHrlbf
	 US7qg0mNq0/5jQGC6Km+sdtqwhavbbrQJ0VAxCeu1HJqGao0qw4FctuQr2fjQroHr1
	 WaZIOS3nVqWz7wLUk5QK/kqk2QUeGOSf+5HZHKDAVq2liHbfZYGHdvsWIoWfSk5Fi0
	 QqnNH0jzQTncOwBOMCtJE82WlY/xiPgh4ABju+sWy1gZc2a85YT3X2TpgumdHOCCV9
	 fbZ1zKJFOWnR6N76JzO3QCQ2WkmF08Kuc87LGBoGaHd8zSbrZW53/AgLkANyBqrmC3
	 A4HstDptHtDvg==
Date: Mon, 10 Feb 2025 06:18:29 +0000
To: linux-newbie@vger.kernel.org
From: Georges Kanaan <giokanaan@protonmail.com>
Subject: Unsubscribe
Message-ID: <CE6AA02D-AF4E-49F3-AEFF-9C9A264A0881@protonmail.com>
In-Reply-To: <CALZ+hkPB_Zh0WhFfnE62_Qy1=4UAn-DVhdWw6T8RnAUxr2e-Tw@mail.gmail.com>
References: <CALZ+hkPB_Zh0WhFfnE62_Qy1=4UAn-DVhdWw6T8RnAUxr2e-Tw@mail.gmail.com>
Feedback-ID: 26919654:user:proton
X-Pm-Message-ID: cb01267d54e24a4e10d6dc0119b0aeb79260fb4b
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Unsubscribe

