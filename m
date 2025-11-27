Received: from smtp01.rackhost.hu (smtp01.rackhost.hu [91.227.138.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20193329C6D
	for <linux-newbie@vger.kernel.org>; Thu, 27 Nov 2025 10:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.227.138.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764240207; cv=none; b=dy9qdtnDsP5tqVcuHih7t/npcpyV5wpXZSn5iwzL+W9c6cfa7vap48i2GqsIEHW6ls48zRsPpKWhED+W1MytcHqUoDTNxuvjbDGh+48sPrWctroa/SZWQ6T9CrniHsmXTTy41QUmt2XgbmfbI5Do9WKBGauQ3rS1U4pNqYIA8lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764240207; c=relaxed/simple;
	bh=4728k1KcKl0fiJqa/MinGOY9fkHtTxm9dD9aYqvOM3s=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=gZjy/qjTmmVAZxvbjN63ujBxdZm/Sn89TXO0N5MdGnfcnMkJVC/9qSh71duazPznvnJ0WaWwCQAVqxj8qlL6JOhInaWWBy4pnkfOQpFNHzIRdWVKcfUTpNU/bZfRBe0zr3qHGdq6lFVHMZ+crWB8zPhSdqaJunl4yjYfcQe0kNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu; spf=pass smtp.mailfrom=nazs.hu; dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b=mEWofjAT; arc=none smtp.client-ip=91.227.138.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nazs.hu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nazs.hu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nazs.hu header.i=@nazs.hu header.b="mEWofjAT"
Received: from localhost (localhost [127.0.0.1])
	by smtp01.rackhost.hu (Postfix) with ESMTP id 7590F16441
	for <linux-newbie@vger.kernel.org>; Thu, 27 Nov 2025 11:43:22 +0100 (CET)
X-Virus-Scanned: Debian amavis at smtp01.rackhost.hu
Received: from smtp01.rackhost.hu ([127.0.0.1])
 by localhost (smtp01.rackhost.hu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id 4v5T0bTnn2Gj for <linux-newbie@vger.kernel.org>;
 Thu, 27 Nov 2025 11:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nazs.hu;
	s=smtp20251106; t=1764240202;
	bh=4728k1KcKl0fiJqa/MinGOY9fkHtTxm9dD9aYqvOM3s=;
	h=Date:To:From:Subject:From;
	b=mEWofjATU/eRn4Hrkt31BloW+HILKJOjgYCXp1SsPSmuGkaKyBPg9OF9t5+QZExF4
	 lauyxM7MK6JLZopYwARjxQfqVZDrpi8RhzBBPxXBx0sDyzJRmim8wcPdNUQh9MvIRG
	 OzcnGHjoZL6z3Fkm1m/rWOSWE9WokiFg7cwKgByI4X2SanHtB7wK6+42ySvmRJlL2y
	 LXRUmxw8LySQPblcAwyMZROB3kU6pReySSyLKiZwpgJooNsDpvB2gCWuKtyw0o4S55
	 VadbfSCy+1yrZ43eNc/OXZFazjhQUtRuG0H1dmmPqmhGTvMivvVL5OTtlubDa9Idf/
	 4+vT0okXRneKQ==
Received: from [10.10.10.88] (catv-80-98-148-72.catv.fixed.one.hu [80.98.148.72])
	by smtp01.rackhost.hu (Postfix) with ESMTPSA id 1646314A70
	for <linux-newbie@vger.kernel.org>; Thu, 27 Nov 2025 11:43:22 +0100 (CET)
Message-ID: <b3eb0040-1827-4217-85e3-df973989150f@nazs.hu>
Date: Thu, 27 Nov 2025 11:43:21 +0100
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: linux-newbie@vger.kernel.org
Content-Language: en-US
From: Abraham Zsombor Nagy <nagyabraham@nazs.hu>
Subject: Kbuilds and Makefiles in building the kernel
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

https://docs.kernel.org/kbuild/makefiles.html#the-kbuild-files states 
that when a directory contains a Kbuild file, the Makefile is skipped in 
that directory.

It feels to me that both files are in use e.g. under arch/x86/ directory.

I'm trying to see what files are the core of the kernel and what files 
can be configured for x86 by partially parsing the Makefiles and the 
Kbuild files. Would it be sufficient to parse them as:

if file == "Makefile" or file == "Kbuild":

 > parse(file)

or it should prefer the Kbuild file when present, or it is using some 
other logic?

Sincerely,

Abraham Nagy

