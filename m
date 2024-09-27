Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C251C1744
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 20:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727470791; cv=none; b=po15VVE+Te/gQMQy64DafeOaeHFxDTZe6IplsFqjQbF+22FvcwNqzQ9tD2rBwsvnmyiaYbjNCAPAjL5WcXjZ492WINCUB2BN39VlFqDer42eOlZ1iiPpBnUCbXDEVBByzyckvORUr0VdnwoAxU+qjGA592APoge5ZDpyxmKHlJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727470791; c=relaxed/simple;
	bh=q0xBo9Rgb9bL2CD4WHg9JgC4gn7Rm5tSmyLm8Cm6/Ow=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RydJVCnHTqv8IGOQ6IG4IS0Ek8dRlRjoWXJSK07HDwH7rpqG3ix0pPue7CsgIKi34RISYaUL/ar5D6SOmXzrHZvUo++tVqR74fmU7kuirJWu3EYWTk6c8MgoreGBNVaJ8JpGOZIY6oahYlEye1LpKyw7z6dVqVRFo+r8whfQMnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=eh7Bd1lU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="eh7Bd1lU"
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48RFvf0E001908
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 20:59:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=q0xBo9Rgb9bL2CD4WHg9JgC4gn7Rm5tSmyL
	m8Cm6/Ow=; b=eh7Bd1lUlWI3jLKzalcz8c6DEBC+en+sanNxZ1Mb69X2/BdIYU/
	+sIfYg/+HSE5M88cH4aBFpQEpUsCwOshHBhfv7P/lzOxRAH3Ec3/iYZjPYdCST+H
	tAfKPgtPJGGhWyxB8OscUb/vosseTRAGpme7pStwRcReHgAIqJE/n/zpPo1oflhp
	j2jv7Oqt9ghYJtukbwB2blqQbRYV213VrSdOQQl6uEM/hhkce+P7CTb1D7Ywptu2
	r+oYFkxLiT+NTd5hI5Yq9TikXifRqOYGtkH2oN/C4+W+THi2XVogidCGmRuKq4Y2
	xNoYK4qKv55bpc9uM+0p96ZBkSHuvMVqr/w==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41skgnmkvt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 20:59:48 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48RKxibX006716
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 20:59:44 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 41sq7msxpm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 20:59:44 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48RKxhHb006711
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 20:59:43 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-wasimn-hyd.qualcomm.com [10.147.246.180])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 48RKxh6u006694
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Sep 2024 20:59:43 +0000
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 3944840)
	id 7C00E583; Sat, 28 Sep 2024 02:29:42 +0530 (+0530)
From: Wasim Nazir <quic_wasimn@quicinc.com>
To: quic_wasimn@quicinc.com
Cc: linux-newbie@vger.kernel.org
Subject: [PATCH] DNM: Testing few things
Date: Sat, 28 Sep 2024 02:29:40 +0530
Message-ID: <20240927205940.4164876-1-quic_wasimn@quicinc.com>
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
X-Proofpoint-ORIG-GUID: hKhE_fZj-Frr_5CKxmYSUQX22f_zaO01
X-Proofpoint-GUID: hKhE_fZj-Frr_5CKxmYSUQX22f_zaO01
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 bulkscore=0
 mlxlogscore=577 adultscore=0 suspectscore=0 phishscore=0 impostorscore=0
 spamscore=0 mlxscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409270153

Check this.

Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>

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
+
+Line3
+
+
+End
--
2.46.1

