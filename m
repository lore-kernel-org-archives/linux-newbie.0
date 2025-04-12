Received: from out198-184.us.a.mail.aliyun.com (out198-184.us.a.mail.aliyun.com [47.90.198.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D3D2367A7
	for <linux-newbie@vger.kernel.org>; Sat, 12 Apr 2025 07:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=47.90.198.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744442356; cv=none; b=GpjHfvoSS1TnvfosFfVuNQHyloVZXhc7xKm/b2gNFnXWrh8cEygOgAQRRsndrAPKBqsITxCsaTjMH9Xthn+PfhllXxGPB9TmBxjzXKSytqj9SXwCLh995OzOQoittBe7k+e3rvMmaQ5EyRUnMKnmOK60SspcJm4Pm7ZPIMhveaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744442356; c=relaxed/simple;
	bh=mXWv503x+5i/GswVI8ZMltPwx/u3RBAbX9PmOsbCgz4=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=kqcUQEHzU/5kY2oZ1wCSWfiu7tMILNuPrbj+JlHuw2QBmd095i237w8MKUitdNx+0R/qVlv4spt6QoKnoCL1Gm+iw8FRcdvbONcYl20KSXD3USF09dzqRH6ihFtN4v9R90NkRUFRwDOTe6dOkwm/vvxaZgqHi8l3gkEz0Q1IwSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mikesolar.cn; spf=pass smtp.mailfrom=mikesolar.cn; arc=none smtp.client-ip=47.90.198.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mikesolar.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mikesolar.cn
Received: from OSCPR01MB14807.jpnprd01.prod.outlook.com(mailfrom:iam@mikesolar.cn fp:SMTPD_---.cKm6JQf_1744435053 cluster:ay29)
          by smtp.aliyun-inc.com;
          Sat, 12 Apr 2025 13:17:34 +0800
From: "iam@mikesolar.cn" <iam@mikesolar.cn>
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>
Subject: Want to know some details about how to contribute to the kernel.
Thread-Topic: Want to know some details about how to contribute to the kernel.
Thread-Index: AQHbq2hmYh5jaxAyK0y/ImR3lVNiBA==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Sat, 12 Apr 2025 05:17:32 +0000
Message-ID:
	<OSCPR01MB14807CD1AAAB8DDC70C3D7C55FDB12@OSCPR01MB14807.jpnprd01.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator:
X-MS-Exchange-Organization-RecordReviewCfmType: 0
msip_labels:
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

SGkgZXZlcm9uZSwKSSB3YW50IHRvIG1ha2Ugc29tZSBjb250cmlidXRpb24gdG8gdGhlIGxpbnV4
IGtlcm5lbC4gQnV0IEkgaGF2ZSBzb21lIGNvbmZ1c2lvbnM6Ci0gV2hpY2ggbWFpbCBsaXN0IHNo
b3VsZCBJIHNlbnQgdGhlIG1haWw/Ci0gV2hlcmUgdG8gZmluZCB0aGUgaXNzdWVzPyBTdWNoIGFz
LCAgd2hlcmUgdG8gZmluZCB0aGUgYnVncyBuZWVkIHRvIGJlIGZpeGVkPyBJdCBzZWVtcyB0aGUg
bWFpbCBsaXN0IGlzIGZpbGxlZCB3aXRoIHBhdGNoZXMsIG5vdCBpc3N1ZXMuIEkga25vdyBMaW51
eCBoYXZlIGEgQnVnemlsbGEsIGJ1dCB3aGljaCBidWcgbmVlZHMgdG8gYmUgZml4ZWQgYW5kIHdo
aWNoIGhhdmUgYWxyZWFkeSBmaXhlZD8gSXQgc2VlbXMgYSBsb3Qgb2YgYnVncycgc3RhdHVzIGFy
ZSAiTkVXIiwgc29tZSBvZiB3aGljaCB3ZXJlIHN1Ym1pdHRlZCBhIGZldyB5ZWFycyBhZ28uIApD
YW4gc29tZW9uZSB0ZWxsIG1lIHRoZSBhbnN3ZXI/IEkgYW0gdmVyeSBncmF0ZWZ1bCBmb3IgdGhh
dC4KTWlrZSBTb2xhcgo=
