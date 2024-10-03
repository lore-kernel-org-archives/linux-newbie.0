Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961A82564
	for <linux-newbie@vger.kernel.org>; Thu,  3 Oct 2024 06:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727936583; cv=none; b=YfxAjSgCfVYpcECxLwHMG8TRd28bKnNtZ1aPT4i5QGunEC9oG/pAdta5alHVn5GTCaI8Fk3bSATK7rEDE6H0LQm93FbbaWsRXanfjDsOOa1N0vGIFyWMHVuU3fm+h7dZwoV0/ntzbrICLMtbEO51mWc5yZ5xqFUwjjF/TakuV1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727936583; c=relaxed/simple;
	bh=JMguh8kKMhaSoxb8E95RZhHqb4rG+KlpqaHjctUZlPs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AqU3tR8Pu/D6mAhCG12skApuurtKuLFDKrip63ieWBrQgHVDHdXpeEFWRNZUwCcnl4W59DCRi7sXv4K6uCC9NvMqfU/LqYY0u6C1NDSd5TVukeIQC7cCHVM/hkfUm27/xARK7a6+oOUjrN1ogxj5ivZ0zCLGE9HgPORWnAwEw1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=X1FYb4wI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="X1FYb4wI"
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4934WZjE000620
	for <linux-newbie@vger.kernel.org>; Thu, 3 Oct 2024 06:23:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=JMguh8kKMhaSoxb8E95RZhHqb4rG+KlpqaH
	jctUZlPs=; b=X1FYb4wIcNadnST31mueFeDYCCU6lScrk6/fHKqilxY2nAIQh89
	f1JLKWoTYMHCtRvgTgk/Szr0MWAAP15ZZA533UNqprSuh/0PvF4FmdYLtrzn+YFo
	QQ8PNn3D5AK3OUmoNnSjKqcG2XNBOkGBaAUeYPliQ1O/ef1yt1QaCZ+LjzT6Tszg
	0HAu1Ek5+Y66iT8TQV8M7wdjZjoAvjrV909iD2nl649WNRIvB3l7mAaVYrr7e9+u
	allIrugolM9QwZPFeThIk9+tuCoXaFDn/fIgSrSB79CunaL3u8JU1OmfqBekcE/4
	jEztWZmfiPsnTSj+wOaEv/Ne4v/gXe+LAGA==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41x8t6wp6t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Thu, 03 Oct 2024 06:23:00 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4936Mt3w005515
	for <linux-newbie@vger.kernel.org>; Thu, 3 Oct 2024 06:22:55 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 41xavmakx9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Thu, 03 Oct 2024 06:22:55 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4936MtO9005507
	for <linux-newbie@vger.kernel.org>; Thu, 3 Oct 2024 06:22:55 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-wasimn-hyd.qualcomm.com [10.147.246.180])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 4936Ms9A005506
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Oct 2024 06:22:55 +0000
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 3944840)
	id 365AE591; Thu,  3 Oct 2024 11:52:54 +0530 (+0530)
From: Wasim Nazir <quic_wasimn@quicinc.com>
To: quic_wasimn@quicinc.com
Cc: linux-newbie@vger.kernel.org
Subject: [PATCH] DNM: Testing2 few things again
Date: Thu,  3 Oct 2024 11:52:18 +0530
Message-ID: <20241003062218.3331404-1-quic_wasimn@quicinc.com>
X-Mailer: git-send-email 2.46.1
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
X-Proofpoint-GUID: Pc0r8UD2sY_hD6wEO2lPHS8ZQwT6Uxao
X-Proofpoint-ORIG-GUID: Pc0r8UD2sY_hD6wEO2lPHS8ZQwT6Uxao
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 mlxlogscore=672 bulkscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 spamscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2410030043

TestA, TestB, TestC.

Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
---
Anything here can be ignored

 Documentation/testing2.txt | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 Documentation/testing2.txt

diff --git a/Documentation/testing2.txt b/Documentation/testing2.txt
new file mode 100644
index 000000000000..fd91f33a2814
--- /dev/null
+++ b/Documentation/testing2.txt
@@ -0,0 +1,7 @@
+Testing2 few things again:
+
+LineA
+
+LineB
+
+LineC
--
2.46.1

