Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA19414EC5E
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727471917; cv=none; b=nfwcQyYX8oQrzmfrxFRjDZY6KFAhtM8CgbQAE4TAqnDH3avvklkDreGFLjuVQ9CXXhufg278RaZZG1FVmsUKYRYe+OiHr8tFVNmZ6kBMuOBr6MeearfoxkSzzFZn+LnuDxEK3NylBRMFkQgYoWUNlSDAiH3UYhd4hEsdWQAgdWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727471917; c=relaxed/simple;
	bh=Dxyf2YhrHdJtfPJohXKI57T4EvDvl9rRkRo/ezLj+n0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=McJdWfulQ2VYrAoKbn1RDAo5xMMJG6IiHlFZgNY2NOrDfzjZ42Jyks+gvnhK/t/0q9mYgXv8NH7rSduh2Tl8lXZfewjdaDJCpnQWUxpnkkaMxvWwi58nzrQsi2/NQxfFMn7KyOthypxT/sWDVPfpXfhdqaLJsw/tEib37S0aUR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=gSoH/vBO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="gSoH/vBO"
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48RGUq0F000546
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:18:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Dxyf2YhrHdJ
	tfPJohXKI57T4EvDvl9rRkRo/ezLj+n0=; b=gSoH/vBONLdjtpJ65ENvFOUAGos
	/uxNrEHGWwP49V5JO/P+MPFg7YfpRc5de236fT0nGquLj4/N65GsUOk9JEzsnwHh
	s7kQ2K7TultrhTBSri63crL4rnTbzc9VS0HpqzOdmxi/ElMlf/w2IJrsNf/pYmms
	dWnSlasAVenHzHYUOL8sHgXQjFheueFbSCg0wQj2m8/pOKkjvM1i86Zm0HAtUQ1r
	uSx89Km2qWJG/H32WqVEEMrUOq1NpOJYhU3BupOtP64+1mlqF3qPNn4bodifA11e
	e0B5TbW+YIPpQVdYb75QPvY0CnVR1R9u3/lqx1yfXvI+j1Td1qG5HsngSMw==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41sqe9kx53-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:18:32 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48RLIS1Z024456
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:18:28 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 41sq7mt1p4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:18:28 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48RLIRgu024451
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:18:27 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-wasimn-hyd.qualcomm.com [10.147.246.180])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 48RLIRgR024450
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Sep 2024 21:18:27 +0000
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 3944840)
	id 8B783587; Sat, 28 Sep 2024 02:48:26 +0530 (+0530)
From: Wasim Nazir <quic_wasimn@quicinc.com>
To: quic_wasimn@quicinc.com
Cc: linux-newbie@vger.kernel.org
Subject: Re: [PATCH] DNM: Testing few things
Date: Sat, 28 Sep 2024 02:48:26 +0530
Message-ID: <20240927211826.4168793-1-quic_wasimn@quicinc.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240927205940.4164876-1-quic_wasimn@quicinc.com>
References: <20240927205940.4164876-1-quic_wasimn@quicinc.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: _lPXYD43YZyA8Nu2uuS31VoopkoWsLiK
X-Proofpoint-GUID: _lPXYD43YZyA8Nu2uuS31VoopkoWsLiK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=560 spamscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 phishscore=0 impostorscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409270156

diff --git a/Documentation/testing.txt b/Documentation/testing.txt
new file mode 100644
index 000000000000..7c3087596ba8
--- /dev/null
+++ b/Documentation/testing.txt
@@ -0,0 +1,12 @@
+Testing few things:
+
+Line1
+
+
+Line2
+
> Global comment on line2
+
+Line3
+
+
+End
--
