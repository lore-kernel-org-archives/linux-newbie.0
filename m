Received: from mail-24421.protonmail.ch (mail-24421.protonmail.ch [109.224.244.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D012110E
	for <linux-newbie@vger.kernel.org>; Fri, 11 Jul 2025 04:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752208724; cv=none; b=PqGjWdanJPhL3WXXpIL+Xlr7Y+nPFiLycjPShdm/5OmutNvbV2n592jXtHM9/yrY58sJhdlF7V0fw07c6QJZ+hNQONuPTYYuKFmwwfD6QWJmD5I3Uxvk5QXi9iUibxNifoKnMFgqPhP8GFXSlCR+f1KCcGViiAqX3OC4++gg8FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752208724; c=relaxed/simple;
	bh=vtYXsY+8rG7ChhkWChxhpnl6geAdmzEA+NhB3EXz4Es=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aZGhBtltyw+Po83WoRTSs/WraupHMLHJHBuWXFwX+iV3Ks8n2fBWo0X00GFiyetyE0nLt8GeE8Qf4FIOZEaldNNszqL1+yZ5unJwz6HjUMHn0Hx37SJWfsehU0lJnLAW+Q60rpb6ne9M+eXoQcgmaAR7TsUtH6smzGICxtzps1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=radonmail.net; spf=pass smtp.mailfrom=radonmail.net; dkim=pass (2048-bit key) header.d=radonmail.net header.i=@radonmail.net header.b=hOo1D6Vo; arc=none smtp.client-ip=109.224.244.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=radonmail.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radonmail.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=radonmail.net header.i=@radonmail.net header.b="hOo1D6Vo"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=radonmail.net;
	s=protonmail; t=1752208711; x=1752467911;
	bh=ZQIlbjEtP1LKGIUMC1MoA4zAwFwuhl+/Upbi7SSP9SA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=hOo1D6VoAwrrXVShIeul914y9zmZ/7jVZfLAmqbQkJgE4Hww/TXeE+j7Ck8DOhWC+
	 bThts1RdPFvTKwQ2fUisR4kFmwdysI9i1anvg9sfugHPN5Gr1S7cVMbPZqVp5sGk7q
	 8Yed8DUtv6IvMmV4+bkEcqBPxJudpKfuylQ/0qjq7kVdxOTIJwtxgnMhCF5D2huCfv
	 gPdSXB+tuEvG4ta8Z/m/GmX0S3pvGBZdjcs5E/ISUbWS/4gYJaH7x9LLHkO3AbIJC1
	 j5zyA0PYyBc/pfIVSjnHKx52QkfaB/hqxqwbZD1Dv+njI7mjEu1+kl3dxbseH363Hk
	 Y5CNAuCISY6CA==
Date: Fri, 11 Jul 2025 04:38:30 +0000
To: Ryan Matthews <ryanmatthews@fastmail.com>
From: Benjamin Kiefl <benjamin.kiefl@radonmail.net>
Cc: linux-newbie@vger.kernel.org
Subject: Re: "Abuse" of this ML for mail-setup-test
Message-ID: <aHCVPqH9DVYUOSSA@home>
In-Reply-To: <dbb5531f-eb48-445e-b1b9-0d51481973d4@app.fastmail.com>
References: <aHAmupSx4yKNpQUw@home> <0198dc5a-9f33-4ae2-87c5-1242216c6620@app.fastmail.com> <dbb5531f-eb48-445e-b1b9-0d51481973d4@app.fastmail.com>
Feedback-ID: 150237451:user:proton
X-Pm-Message-ID: 815b11cda613ff26fbe85770b4e3e0afe68c29bf
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 10, 2025 at 11:13:30PM -0400, Ryan Matthews wrote:
> On Thu, Jul 10, 2025, at 16:46, Benjamin Kiefl wrote:
> > If there's any better way to do such a test (for potential future
> > use or setup fine-tuning) I'd also appreciate a recommendation.
>=20
> Actually, I suggest to experiment and practice with mutt (or any mail
> client) by sending emails back and forth to yourself between two email
> accounts. Use it to send mail to a friend. etc

Did this before sending to here of course, more than once, during initial s=
etup
phase, but was unsure as to sending to a mailing list. But there simply see=
ms to
be far less "magic" to it than originally envisioned.

> When using git send-email, use the --dry-run and --suppress-cc=3Dall opti=
ons
> to make sure you got everything right before actually sending anything.
>=20
> Then you can practice sending patches to yourself still without bothering
> mailing list or other authors.

Nice, thanks, mirrors the advice I've read elsewhere, but good to read
confirmation. Thanks for the suggestion.

> One day when you're ready to send a message or a patch to a public mailin=
g
> list, you can do a similar test by first sending it here (but not CCing
> everyone else). Look at lore.kernel.org and see if it worked like you
> expected. Make sure it's formatted correctly in plain text, etc. Final
> step, send to the real list with all the real CCs and everything.
>=20
> That way you're not making unnecessary test noises for everyone else.
>=20
> Hope that helps.
>=20
>  -- Ryan

Yep, that helps, and thanks for responding.

-- Benjamin

