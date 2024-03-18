Received: from mr85p00im-ztdg06011901.me.com (mr85p00im-ztdg06011901.me.com [17.58.23.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E172CAB
	for <linux-newbie@vger.kernel.org>; Mon, 18 Mar 2024 00:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.23.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710723033; cv=none; b=NCneGsSadcRVhKy/GhvjFMLy3kzn7gbDXEF87bvcBoGA5Y1kGidFk+3rfcaGivd96Mgf0pDS2mWDI+MiBY0Lo6vhSTVFPoUUmW0RJF0Zdho9j3x4FXkPQK8t4Jyy+jIoD9WmMcVXXWA5qlVWE2ioZYkdMsRwv9R67uc9UD9EQyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710723033; c=relaxed/simple;
	bh=LuiIxTJ++VNUJHdrPgeSe2PtBiqefrcsA3raJqUq0qQ=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=cubik/+nMDoxiWMEt4XPKPKneY92LSMeANEBFS2o+ig7MJj9aIYLJkg4qJloH8tAuKIsxvYBNqUSa7V+/dDZ1PhLQOBXXKRrT2bR0cO7AR/vXD/NGB+OAipNxQZ0Z0WyIsSzwh45Hs5Ur+hzJWJm2N08oRmzBSxmewuMze1KEGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=g8ekmT0M; arc=none smtp.client-ip=17.58.23.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="g8ekmT0M"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1710723031;
	bh=LuiIxTJ++VNUJHdrPgeSe2PtBiqefrcsA3raJqUq0qQ=;
	h=Content-Type:Mime-Version:Subject:From:Date:Message-Id:To;
	b=g8ekmT0MMINWAPH43xyvWObU7NVc8Vt2ojTC2N3rnguShTpE+PauQgoqNnPq1YkDO
	 c7Pug6Uys1zdq5YmLvWqUWm32hIjyA7UK9SVDJ614wNreN58JCorJf9iikj09Gvq3e
	 UzAUpLOe2YphIaGbjInWROTmhjK1ZthBo6pOHctSzHKoHNOD62gFxNtXz6fPYR0njq
	 iyE54CvnnDzXM7Qw/XngK8XSkztg+3k03CNkLt7DGCQk0T4USDAbPVBgNYpGK57Kk6
	 D5IjqXWwd+xstAk7uvutsNXXWz63mA4EAPNZYOpLWKZpNqKLdJKm2YtVp9Hx7U+Zn9
	 Qw29Gk+aQc7DQ==
Received: from smtpclient.apple (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-ztdg06011901.me.com (Postfix) with ESMTPSA id E138A1349DF7;
	Mon, 18 Mar 2024 00:50:30 +0000 (UTC)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: Re: [Linux Newbie] I can't catch up with Linux Kernel releases
From: Jonathan Martin <workspace.public@icloud.com>
In-Reply-To: <H0q1TqL1vn5O2AE6wnfjosvchWG48BrZEmGmE2nurw02T6IhxxLvUPyrYcLx4s2-SW0s8OW9NssUlnheB2NJ59Zhqvg8mI64e5meafWDnyI=@protonmail.com>
Date: Sun, 17 Mar 2024 17:50:09 -0700
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>,
 "ceo@teo-en-ming-corp.com" <ceo@teo-en-ming-corp.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <F8194F6B-44C5-47A5-907C-2D8063112D94@icloud.com>
References: <H0q1TqL1vn5O2AE6wnfjosvchWG48BrZEmGmE2nurw02T6IhxxLvUPyrYcLx4s2-SW0s8OW9NssUlnheB2NJ59Zhqvg8mI64e5meafWDnyI=@protonmail.com>
To: Turritopsis Dohrnii Teo En Ming <teo.en.ming@protonmail.com>
X-Mailer: Apple Mail (2.3774.500.171.1.1)
X-Proofpoint-ORIG-GUID: egKm2vUARVsP7rECF8afW5mXQzMo1CPS
X-Proofpoint-GUID: egKm2vUARVsP7rECF8afW5mXQzMo1CPS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-17_12,2024-03-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 malwarescore=0 clxscore=1011 phishscore=0 bulkscore=0 spamscore=0
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2403180004

Hello;

The release cadence does not require an owner to always have the highest =
degree of the kernel. If the system in use is well specified against an =
older kernel and the expressions against it will break on a newer =
kernel, then an LTS release is typically called for during development =
and specification.


~A9=
