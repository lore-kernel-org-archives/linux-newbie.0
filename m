Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BFC283FF5
	for <linux-newbie@vger.kernel.org>; Mon,  5 Jan 2026 16:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767630089; cv=none; b=KRQpqhwxPJ/9TA5QZOGQ+B0XvLNgHjJu+ej6pEACadii/a1UfeW1HXlCDNDUJPJnaSkJRSCRQ2ueP53KRdGtziPL03LPa8ANun8yPKRtQRO0/DEJg3h5L7Xps5Sq/uTJGzDSmyLsKqazcbrBuF9TGZCIN+oTCig0K2TlfHar1Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767630089; c=relaxed/simple;
	bh=n8RG8iIrTlPyFNPz1PE8cSgH64jRes2NmP727LmpvTA=;
	h=Mime-Version:Content-Type:Message-Id:Date:From:To:Subject; b=cEzUhxydLk6YZF9ZZjylzxI2nMTIqWEIoua0CxfsZN2c0RELiKN1+kO521vJMD22IIRT59V3vjFtr+j3WlXZ1Jmb1zzf1jMgmEI0z57xeMTU0+jSVrp+L95GPfaQpTk9WHf/hIep1cWJekehpAHnfcpU6L2JV3+Uwn1Oj3xNQ4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=j3ewgnOk; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="j3ewgnOk"
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 7789C264FB;
	Mon,  5 Jan 2026 17:21:24 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8M8ZDTDHQfdh; Mon,  5 Jan 2026 17:21:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1767630083; bh=n8RG8iIrTlPyFNPz1PE8cSgH64jRes2NmP727LmpvTA=;
	h=Date:From:To:Subject;
	b=j3ewgnOkgFLfaVxrjfn0+pnRoLisskVQNX/I6AJaL7ZxjUk7uuHMHnH70tgchX7Ck
	 5LiPdbtyo4WN4ZEPsKy4pOdW+oKbd8pLFloAlqPeVqUKmVpeuZu/RDDlmC0QFdjnZW
	 kYtqSHDoVs4PcHqq6ggEoHLkHxzL83Pg+S5t2V87Kwj5GmoaURF0EEX0l5xnRAS2vy
	 bkJqumOgV+uTKy9hZkk4u+KPHvBdULbc2byfB4Yz3xkVPscjcxxyAyV9jMc3dWZsrG
	 HHT5ptmSL2DxHKGNu7BNl4Ugt2ensHFf35o6FRxtj0gEkYEsbA+GSyCelzd1b2Z+5b
	 Fyrr5gBXB9p4Q==
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=Flowed
Content-Transfer-Encoding: quoted-printable
Message-Id: <260105.155812@disroot.org>
Date: Mon, 05 Jan 2026 15:58:12 +0000
From: Avid Seeker <avidseeker@disroot.org>
To: Newbie Mailing List <linux-newbie@vger.kernel.org>
Subject: Manual new login shell invocation

$ echo echo profile_read > ~/.profile
$ env -i dash -l

Expected: profile_read
Actual result: no output

Is this a bug in dash or am I missing something?

man env:
   -i, --ignore-environment
		  start with an empty environment

man dash:
 -l               Make  dash  act  as if it had been invoked as a
				  login shell.

Avid
