Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7B870814
	for <linux-newbie@vger.kernel.org>; Fri, 11 Jul 2025 03:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752203633; cv=none; b=AhddNrDG1Et2eas3xerdr8RQMaNsTYu/AxQg607wXsrPXgD/IkT2eV05pCnOKEBtaUZOaqV4L7Xho27h+AXSNxFmOUkKNRMzxBxPssYSHslG0kBpijn6VsvkJYaE361PukzborTnm2YIZemd6s67FaHngTdqrVnwBebyqkpaYUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752203633; c=relaxed/simple;
	bh=VWP+BZxcTBK4dg0IN0LgP/UknI/LmJrI820tCyMlLCY=;
	h=MIME-Version:Date:From:To:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=TDJlox3mE0nzOV5vYgqZhwT6kf+wULnD1sMpq5qgrRObHw8xRB0ICFKHDoV25gOt9NuzFb09Ii1OSBcKwPAOjJruUKYg8st+1AHHI7ZYORivSIbyMk2cR8zztJ8zaQcHb8N6kOmgV73UO+biNfw6mCMPwIAf/PFwK3Dfe5++6UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com; spf=pass smtp.mailfrom=fastmail.com; dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b=Q2bD826b; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=OmrsfIQw; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fastmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fastmail.com header.i=@fastmail.com header.b="Q2bD826b";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="OmrsfIQw"
Received: from phl-compute-06.internal (phl-compute-06.phl.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id DA0AE1D00136;
	Thu, 10 Jul 2025 23:13:50 -0400 (EDT)
Received: from phl-imap-03 ([10.202.2.93])
  by phl-compute-06.internal (MEProxy); Thu, 10 Jul 2025 23:13:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1752203630;
	 x=1752290030; bh=VWP+BZxcTBK4dg0IN0LgP/UknI/LmJrI820tCyMlLCY=; b=
	Q2bD826bt/D0qRViEp4GuWIvKgSPc/nwF71kyctX/35UZnoi0yUq8k+SAOmcczaM
	1U1nH8Eq7bG4Rf6CuJJwA4XoeDFn+b1c0jkc8cAJmTG26QT25tF9Ae9wzHrhM8xV
	4OzBjq4qmoJMMgNOa+x7A/zR1xuOFiXvgVVrfCqi2rkmNoLNxFBcFmsFGi74jl9j
	uOcAJlaM7JUQ/CMKxe93XVqjDaEIktNWufP9/Z6B+qk0a2KjpQOv4iFysG0BYSiX
	0/vmPzsrovMk3K6tlwfciV0Tzg7jm+9F1EE6GAKz+EV67vzpBjbww4V/l7EbEZBC
	rTaH+d4lupgRApsd8r1mag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1752203630; x=1752290030; bh=V
	WP+BZxcTBK4dg0IN0LgP/UknI/LmJrI820tCyMlLCY=; b=OmrsfIQwmcehaMjrG
	zqVo648wmaqQ6877HitQTFAQTGNY6TC8eDDuVXJRCmreFbg81KATqOpxpf352cWX
	y3H9F2t9XaRRMPxW8YH22rrwvFxO2mHFrdUBYeT3y/WB6jr/VpKOx/93MYgM3I7j
	baZDT8UtOeGGLdoQ0RNoz9f0tvywfo3ZKs51qPOes8ZasGM4j/AMFCM9/pW3G2aZ
	opRtXNwrROLURPq3r5j42HGgQD/wZCSV7tgdNqHS3NKLYScrDpo5t5LrScPgIAW+
	0aN1QuHMXH7FfQAU81F5Ieh3jbHYwIsn147UVGd6s86J0j3b9Qj5ZaButa7X+63P
	kDD2g==
X-ME-Sender: <xms:boFwaN6ZzOUDzoMDVE-yI4u0h91JXLlSAiSPrTTP8oWuxIqvZc1zug>
    <xme:boFwaK4T-U59Xwrl3lWwiLBv0M5gdUzSYA7wbyUYU6U78umZ-aIgAF0KsdQah4YYN
    ppBUmlMu5WvZ5mR49o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdegvddvudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefoggffhffvkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedftfihrghnucfo
    rghtthhhvgifshdfuceorhihrghnmhgrthhthhgvfihssehfrghsthhmrghilhdrtghomh
    eqnecuggftrfgrthhtvghrnhepfeetieejueeftdehleeihfffffevjeekueelhfdvjeeu
    ueevudffheevleetheeunecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrhigrnhhmrghtthhh
    vgifshesfhgrshhtmhgrihhlrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepsh
    hmthhpohhuthdprhgtphhtthhopegsvghnjhgrmhhinhdrkhhivghflhesrhgrughonhhm
    rghilhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhnvgifsghivgesvhhgvghrrdhkvg
    hrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:boFwaJ8yLJbUfGO3Uo8DuU1E-utTJ9yqEOxCbncMW3SiCWvn9axC8w>
    <xmx:boFwaGrlphyrfCbjYzFpJq1EkAtubxXguek6waSYMzwNwPc0TzCDPQ>
    <xmx:boFwaI_VfCwLc0bqSAPlf8PzFGdS_HR-hZ8IxDo8f1cDqB4_dTvitg>
    <xmx:boFwaKUabtb_yg3Tr6F3gZsR1mJP1IodwJ0zDxlwizHHQDjLRv9ebQ>
    <xmx:boFwaNMQZ9rL3o_JqULWCAXNwZF-ECV14VjDd0irh75x5u5aZ465k4R3>
Feedback-ID: i179149b7:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 7DCE118E0069; Thu, 10 Jul 2025 23:13:50 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: T1b64360518536257
Date: Thu, 10 Jul 2025 23:13:30 -0400
From: "Ryan Matthews" <ryanmatthews@fastmail.com>
To: "Benjamin Kiefl" <benjamin.kiefl@radonmail.net>,
 linux-newbie@vger.kernel.org
Message-Id: <dbb5531f-eb48-445e-b1b9-0d51481973d4@app.fastmail.com>
In-Reply-To: <0198dc5a-9f33-4ae2-87c5-1242216c6620@app.fastmail.com>
References: <aHAmupSx4yKNpQUw@home>
 <0198dc5a-9f33-4ae2-87c5-1242216c6620@app.fastmail.com>
Subject: Re: "Abuse" of this ML for mail-setup-test
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

On Thu, Jul 10, 2025, at 16:46, Benjamin Kiefl wrote:
> If there's any better way to do such a test (for potential future
> use or setup fine-tuning) I'd also appreciate a recommendation.

Actually, I suggest to experiment and practice with mutt (or any mail
client) by sending emails back and forth to yourself between two email
accounts. Use it to send mail to a friend. etc

When using git send-email, use the --dry-run and --suppress-cc=all options
to make sure you got everything right before actually sending anything.

Then you can practice sending patches to yourself still without bothering
mailing list or other authors.

One day when you're ready to send a message or a patch to a public mailing
list, you can do a similar test by first sending it here (but not CCing
everyone else). Look at lore.kernel.org and see if it worked like you
expected. Make sure it's formatted correctly in plain text, etc. Final
step, send to the real list with all the real CCs and everything.

That way you're not making unnecessary test noises for everyone else.

Hope that helps.

 -- Ryan
