Received: from mail-24418.protonmail.ch (mail-24418.protonmail.ch [109.224.244.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E2714A60F
	for <linux-newbie@vger.kernel.org>; Fri, 11 Jul 2025 05:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752211635; cv=none; b=RR8gCeujeVTi0Xe3pZQ5o8jxq1RM8eXjc6+CL1nJoWRbvMFxfUWB3LA4ULcVJa9mlaE2GbesTEBWztJ1xCVKXGyy6HhgpOEZ5HjpDFBcnXr4pNIoF2Y+fhKZf51gjxE6Ph65W8mz9dCpr8H3pRd8GtFFV4YfF4MN9C0QWJhbIEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752211635; c=relaxed/simple;
	bh=YiCty0SpOczrU1xiEzmBZ0JWc5jqZ8hbXUHjMmlsCEg=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TPa+RHP1+M3fW27TAc8BzPWVZyX34ZBhVQcGbtgy/2cYVGSzvlieCHsPatJajyXQTe5YimdUlGtTA/RHMwfzQt4xLYcggh523O0PceWgfqX4RJfZvV7wfUCN0qUXoEhPFTF03Uz87PO7T0Zd9i4zXZVrmWbRS1BskSloKo2o1kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=RVh7UkB+; arc=none smtp.client-ip=109.224.244.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="RVh7UkB+"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1752211625; x=1752470825;
	bh=YiCty0SpOczrU1xiEzmBZ0JWc5jqZ8hbXUHjMmlsCEg=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=RVh7UkB+YbC+6c6wBvA21Jyv6guooAfnuGGa8AgbNXCM+T1Z16O0+GK5kuWQ4tUB2
	 TF36Wn/1zv8SqErh9i5oNcRRp4hQE6iogekLlNBMYrdwrrWTgn4U++f656oFlXGPz1
	 zvH2KkAI6OuVYyX+7UZD8WRlFbwh/5G+l5bNppzqcHefb6RniJlooYg9949JBDxo7z
	 6TooQuHBTIRVrHZJkvBRGZY+tafFocOXw26Nadzyr31QL7skMwl9o43SZJJZyItKSb
	 AAcSdM/Q/dzfO/jZSlFxFBSoO+y8De/jjO6TpvStnb2PJLlknkNm69JQYz+WKpGWX2
	 D22csV+K6xv5w==
Date: Fri, 11 Jul 2025 05:27:00 +0000
To: linux-newbie@vger.kernel.org
From: Georges Kanaan <giokanaan@protonmail.com>
Subject: Unsubscribe
Message-ID: <2E7A59E0-6100-487D-8966-4E1B479F1668@protonmail.com>
In-Reply-To: <aHCVPqH9DVYUOSSA@home>
References: <aHAmupSx4yKNpQUw@home> <0198dc5a-9f33-4ae2-87c5-1242216c6620@app.fastmail.com> <dbb5531f-eb48-445e-b1b9-0d51481973d4@app.fastmail.com> <aHCVPqH9DVYUOSSA@home>
Feedback-ID: 26919654:user:proton
X-Pm-Message-ID: 82ccbdddc01e17073d8168613c7b26046746a257
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=09Unsubscribe

