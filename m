Received: from mail.cock.li (unknown [37.120.193.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13ED350D46
	for <linux-newbie@vger.kernel.org>; Thu,  5 Mar 2026 22:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=37.120.193.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772749681; cv=none; b=QadB4BVncyoJCmqUvZHvsY/URNd5kyRkywt9U6uWlAlvSj5rR7eGxL5eEcHVfEQkibfOs9LulR4YwKvLD1uWbF9SkcMbrKxvad4BP23ENRgrepElNxm+bdmGO0HcBVrnLTeVjSZ5F8u/NafqSujm7G+cUwo0qJQ+57a1bqPduAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772749681; c=relaxed/simple;
	bh=kjHb0yeId3VTBr6oowJKDwO1Kc5LIqeIOZWpI4rU28Y=;
	h=Message-ID:Subject:From:To:Date:Content-Type:MIME-Version; b=AT2gNI4nBtiwDNzwBkQRop1GQzFvlYx4jXJtDYcU3LyOeiM+JnyAeG/0NAOilGfysJj2MbyASm1vVQ4a8TGf0orGQrjFI8OfczVOceh+ooC2UK6qEFzsRO86uGFDhisMFMXfnbR4Smh78OW0QDUMLRkt+TlhPTJ9+8g6e7oj580=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=airmail.cc; spf=pass smtp.mailfrom=airmail.cc; dkim=pass (2048-bit key) header.d=airmail.cc header.i=@airmail.cc header.b=xst0Zutm; arc=none smtp.client-ip=37.120.193.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=airmail.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airmail.cc
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=airmail.cc header.i=@airmail.cc header.b="xst0Zutm"
Message-ID: <e5d0132beac2a927218ba207e62f825dd8f6adb4.camel@airmail.cc>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=airmail.cc; s=mail;
	t=1772709721; bh=kjHb0yeId3VTBr6oowJKDwO1Kc5LIqeIOZWpI4rU28Y=;
	h=Subject:From:To:Date:From;
	b=xst0Zutm9G4nhIC50JYhGjYzWHjgYmbVp0DLjUAh9GVGm/ltFEt5PQHBTR+6nwPHg
	 ogkTyR4uzkW4vscLqxDGPjeddU1OV89u+T7q80la1CT1WxAORZlTTyY6c8oAhbIRTc
	 mOJUiQ/GASEwTq7x2r7BhdKspVL/TPvaPh9u0xwQ0Hluw8i1uRl5RPtywyJBkh0Qun
	 yPsgwKghzLydNu4mrZwdjnsrGo7GIXOKy/azTKXumPdfJ8P+yM9j3H1Z1izKMqATMZ
	 GT6K04fd0FCKCiqa1UHp+beINarV5X83fRtx6ziyLbW531Uf0FB/8bynLFKG0bGoBG
	 qXPCwMtJ98DtQ==
Subject: [TESTING]
From: Hans Anda <hansa@airmail.cc>
To: linux-newbie@vger.kernel.org
Date: Thu, 05 Mar 2026 12:21:59 +0100
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
User-Agent: Evolution 3.52.3-0ubuntu1.1 
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

just testing if this works
