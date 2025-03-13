Received: from srv-email.breitkopf.com.br (srv-email.breitkopf.com.br [187.85.164.118])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BD6250EC
	for <linux-newbie@vger.kernel.org>; Thu, 13 Mar 2025 04:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=187.85.164.118
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741841266; cv=none; b=I40maGhE0qX39L3CkdV61dXSyZSxpXjGl23ACDilnQWGhiZ145UXeVvET8Wm+GkIhv5A4Td1Eh/uD9HQ/roHqvIYM7t84V/eo1w+sGi8dxIg5q0nx0Hi+jRL7/AQL9vNPT6s6thcMDDzqOvaFd4Gq65qSMAGnAMtCNnKghAXx/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741841266; c=relaxed/simple;
	bh=/NSPlKajnIrEXgkaCDsSIgOv+/AHRVJKPtcya0trJfM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=QW6zvPUdtNbIRsXRKOvIKuDgzBrmJy3UQjZ7biZjL+TBv02JDLKfi2V8pKUYOtHcKNUzF70pNQ3qZw1QQcd/ny8G1CFsInPLLJ86YsTT0VDbq6PE0A+aCLedbTyTs4AX+noh7aGwKxZwH7CyBTswg3RbsSohtL2ACFsTM91incg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=audicenterflorianopolis.com.br; spf=pass smtp.mailfrom=audicenterflorianopolis.com.br; dkim=pass (2048-bit key) header.d=audicenterflorianopolis.com.br header.i=@audicenterflorianopolis.com.br header.b=kVxKaBF5; arc=none smtp.client-ip=187.85.164.118
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=audicenterflorianopolis.com.br
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=audicenterflorianopolis.com.br
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=audicenterflorianopolis.com.br header.i=@audicenterflorianopolis.com.br header.b="kVxKaBF5"
Received: from srv-email.breitkopf.com.br (localhost [127.0.0.1])
	by srv-email.breitkopf.com.br (Postfix) with ESMTPS id 0ECD166C89DB
	for <linux-newbie@vger.kernel.org>; Thu, 13 Mar 2025 01:08:43 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
	by srv-email.breitkopf.com.br (Postfix) with ESMTP id 6E16467FCD93
	for <linux-newbie@vger.kernel.org>; Thu, 13 Mar 2025 00:57:23 -0300 (-03)
DKIM-Filter: OpenDKIM Filter v2.10.3 srv-email.breitkopf.com.br 6E16467FCD93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=audicenterflorianopolis.com.br;
	s=1AB656B8-D351-11EF-B446-5C9AB0823972; t=1741838243;
	bh=/NSPlKajnIrEXgkaCDsSIgOv+/AHRVJKPtcya0trJfM=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=kVxKaBF56g2zyr70g1MTPN/EBT2CgsRA1h8QnWpMZ3g5VwPNBIZakWk00KTICq2V9
	 zODliWZIVaIdfWbetJHpQLXvBBlNyjW8tHUPwUn+yCTxnw22QlRcWOa5ToWehmP4eW
	 RZ33a2mGcyoJhtJ/PPUqmYKZNrUWPxOZhBMPS9d0TBoeNntqt4zg7X8prz25F5ehZW
	 eIEuKmNTxZxWNh5EgeVxFqeKY+MMgyhwBXU8Lv0CeD50NsgVoCo/iltimfOGNiYl1l
	 Du6p299lEDEmc+GNI2E9IejdO0FcG3mIm/Dmmz8rM6vLlFmz4V4xatg2/lZ/804zrV
	 zCp87RSgcSduw==
Received: from srv-email.breitkopf.com.br ([127.0.0.1])
 by localhost (srv-email.breitkopf.com.br [127.0.0.1]) (amavis, port 10026)
 with ESMTP id 7TCREcMd3NOY for <linux-newbie@vger.kernel.org>;
 Thu, 13 Mar 2025 00:57:23 -0300 (-03)
Received: from ec2-65-0-80-245.ap-south-1.compute.amazonaws.com (ec2-65-0-80-245.ap-south-1.compute.amazonaws.com [65.0.80.245])
	by srv-email.breitkopf.com.br (Postfix) with ESMTPA id 424AE68163D2
	for <linux-newbie@vger.kernel.org>; Thu, 13 Mar 2025 00:57:21 -0300 (-03)
Reply-To: kazi@consultants-hq
From: "T.Vanderwerff" <suporte@audicenterflorianopolis.com.br>
To: linux-newbie@vger.kernel.org
Subject: Business request...
Date: 13 Mar 2025 03:57:21 +0000
Message-ID: <20250313035721.141AD6C7D8DE55E5@audicenterflorianopolis.com.br>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

I want you to kindly acknowledge this email so that we can key in=20
on a very crucial business matter. You can leave your direct=20
phone or WhattsApp number here for a prompt communication.=20
Thanks
T.Vanderwerff
