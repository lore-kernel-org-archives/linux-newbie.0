Received: from mr85p00im-zteg06021901.me.com (mr85p00im-zteg06021901.me.com [17.58.23.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0FF84038
	for <linux-newbie@vger.kernel.org>; Thu, 21 Mar 2024 14:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.23.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711031300; cv=none; b=sUZwYx5P1uP/LWbh1yDMWwwDsEn+UFITHnJQeE4PXBHWu3XQ3ioNuqFFUXSh3jHl5po9f/fR1VLj6usaoG/7fPkjAWA+UoLd3I5oli1uMdHrTL/G3EHnNUVZPGcIbmQHqvCG4kIOLhYoK0tlbt89kXLogQ54Yrvv0es4w3g5akg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711031300; c=relaxed/simple;
	bh=kKC1uAejYfAmpY3D6RMUXUianuCJ0y9yGs6jlA9Kfew=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=InG/GTo0B7uwDVWJWevuhmgD7WjwiAm86t7D9rDyZmDFwspOLRyJIBEvmjxePgREneXk1t+kxcnpqqIUP5V0W2qPm5cRF3/7taKuT/RAYUetdfuQaZ0ZYgkmGR6BdHhwOvy/k4oAYCjtMjS9llsgl2SmQnYuS7HuiO77cEdpT5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=W642O/7n; arc=none smtp.client-ip=17.58.23.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="W642O/7n"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1711031298;
	bh=kKC1uAejYfAmpY3D6RMUXUianuCJ0y9yGs6jlA9Kfew=;
	h=Content-Type:Mime-Version:Subject:From:Date:Message-Id:To;
	b=W642O/7nfU8zwi/i2jL2k7/FL4cstSx/FFF9xwzMQTowDPAo+8RwHi1vH9ld1Mcrb
	 Ouj16rPT410M/gTNpzvntGfWuU3n78c3VBs6n84C0Yu8S+Tq3KojkCCoMOU367pxU+
	 VDkYlUSz1f7htxLC4RS3Ld9JHzsafjTCot1fu0xzbYBYjZYFD/2jlQonSlTAexbOZy
	 iXhR0anR1BT+5Ud5eQMF8ZszgQyaD1DtZpt33ofZJG2jgmV6yyAgtRM5nwmSF7sMfS
	 KxGurAoLAussKceOUQXfCqY7I5yiXgy65zYx32pm+3ZYlfSxV+n4e2b8KlH6xn0wfj
	 XrtHp+QAd2TmA==
Received: from smtpclient.apple (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-zteg06021901.me.com (Postfix) with ESMTPSA id 5182074027E;
	Thu, 21 Mar 2024 14:28:17 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: Re: Hello
From: Jonathan Martin <workspace.public@icloud.com>
In-Reply-To: <ed80c3c7-a9ae-47a9-9a60-c531496caec7@gmail.com>
Date: Thu, 21 Mar 2024 07:27:43 -0700
Cc: Martin Jonathan <workspace.public@icloud.com>,
 linux-newbie@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <D55AD66B-FC38-46BA-86A4-EE4FFD2F4B7C@icloud.com>
References: <D9574CC8-5147-47D8-A287-520C67092133@icloud.com>
 <ed80c3c7-a9ae-47a9-9a60-c531496caec7@gmail.com>
To: Mikael Carlsson <mikael.m.carlsson@gmail.com>
X-Mailer: Apple Mail (2.3774.500.171.1.1)
X-Proofpoint-ORIG-GUID: WEHsgNj0d_DhEziCS0M4VInHqCnxWiTV
X-Proofpoint-GUID: WEHsgNj0d_DhEziCS0M4VInHqCnxWiTV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-21_10,2024-03-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 mlxscore=0
 spamscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0 clxscore=1011
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2403210103

Mikael;

Thank you! I thought this would work but I had no idea where to find it. =
I could go for using a proxmox server instance at some point but I=E2=80=99=
m mostly hardware infra for now. All that config can feel like signing =
lead tablets in blood.

~Jonathan A9

> On Mar 20, 2024, at 4:24=E2=80=AFAM, Mikael Carlsson =
<mikael.m.carlsson@gmail.com> wrote:
>=20
> On 2024-03-18 03:00, Jonathan Martin wrote:
>> Hello All;
>> ~~~~~~
>> Thanks for being here!
>> ~~~~~~
>=20
> Hi Jonathan! There is always someone listening on the web ;). =
Regarding icloud and big volume of messages, i suggest using an NNTP =
client like Thunderbird email client for example. Instead of using =
regular email you use news server.
>=20
> You can read more here
> https://subspace.kernel.org/subscribing.html#subscribing-via-nntp
> and here
> https://brennan.io/2021/05/05/kernel-mailing-lists-thunderbird-nntp/
>=20
> ____
>=20
> Mikael Luxwarp Carlsson

