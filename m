Received: from mail-4317.protonmail.ch (mail-4317.protonmail.ch [185.70.43.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6124B1DDC2C
	for <linux-newbie@vger.kernel.org>; Thu, 10 Jul 2025 20:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752180433; cv=none; b=iSbMS+HTY2i/MiAI5YwbqUlGdFhEHuoOxphKCPGd41HZfKZaBeifybhF74BYsNXnS4thv4IdBgroe7kiIz/lWRG4G6bVbxuRvGPSAE3eN2+sXNGeM/t2EPeuyrewzW15qRQYvax5GRQozO1m8Sz4Lb8tfEyeE8xRHEXZcTNvykc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752180433; c=relaxed/simple;
	bh=x/EnnXAaC8RbVjLDjwM+UqA+0+MfeG6YNixaMFFVoF0=;
	h=Date:To:From:Subject:Message-ID:MIME-Version:Content-Type; b=Ev2oOpFIkYSYhmm70/9aog9MaSmjW8trFVHqSpIohdtugPmWzmWTAGfmnEbA1ufCkyJPFhxe2jckL9ifLm4DTSpg5xKINJGH9eEHFIIty4UN9x5tqqgQe6kO0gGzhEr2r4nRkpzsN8IuX1qz0eG2JV4lxqIYDz462Re6iuPA4II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=radonmail.net; spf=pass smtp.mailfrom=radonmail.net; dkim=pass (2048-bit key) header.d=radonmail.net header.i=@radonmail.net header.b=mVnbsxGq; arc=none smtp.client-ip=185.70.43.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=radonmail.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radonmail.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=radonmail.net header.i=@radonmail.net header.b="mVnbsxGq"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=radonmail.net;
	s=protonmail; t=1752180421; x=1752439621;
	bh=x/EnnXAaC8RbVjLDjwM+UqA+0+MfeG6YNixaMFFVoF0=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=mVnbsxGqGayBek4FRRjOEt2vo6knVUFBEL1Hk1hf+WnLom2R8CcSViWROoRX71d92
	 Yc9P3IYQfPmurptJ+8YnoJuL2CSgC9k7rroBqAJip2vMpnHlaDfQ4Je9O/wjIw+z9g
	 2hIaDIrSCtl5W24UkUSAKM6FVK5DxXDncHuqzlmYWM3wzppLHs/+VezQl1dj+eRrje
	 XLi3mYsckqSU6kp0XDSqjU+tlFkoYCwdy0U4lRl+yiKCEJszh9v4DBja6kCkApfYgN
	 s1L+n41MO8YfVDSb5o1omjyVMjwaUjUxNB961Xe3/yTEZHgmUoPL4JEvn2hT+f/IFf
	 4BYjCxK826L5w==
Date: Thu, 10 Jul 2025 20:46:57 +0000
To: linux-newbie@vger.kernel.org
From: Benjamin Kiefl <benjamin.kiefl@radonmail.net>
Subject: "Abuse" of this ML for mail-setup-test
Message-ID: <aHAmupSx4yKNpQUw@home>
Feedback-ID: 150237451:user:proton
X-Pm-Message-ID: 487f713d9a27191e731e14984eb195abdb61c731
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello, I hope this is not completely out of line.

As I've never used a mailing list before, nor mutt, nor can find a purpose =
lkml
"testing list" for such endeavors as mine, and have witnessed this list bei=
ng
low-frequency thus far, I hopefully may be exused for using this list to te=
st
out my new setup.

An answer of any length from someone appreciated (to further test mail
reception). If there's any better way to do such a test (for potential futu=
re
use or setup fine-tuning) I'd also appreciate a recommendation.

Cheers, looking forward to contributing to Linux,

Benjamin

