Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731C018990E
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727471002; cv=none; b=CUFMBoqvTH/2/7BS6g85obIuYRC3fhphnq9kSwB2XCofW0D4EOk/weaAD2rpdDpDFUHvREK1lv9ix9A7J6yLBZ1zgZAzHJ7Ef0NO9Vf8GBM/9I8s/YrrtDcTte1O7WZF44PI8Umem0kaLwNRuIBqOlPWGY1C+DGuY7PMQv7j8Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727471002; c=relaxed/simple;
	bh=kcAwUjQax1wTPoRjgy3zZ4yH17RGB3jgcsjz0P5tws8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dsDBSXwc38e3Dv3vl+0vSYI4jSo3WLvlqk9tDbUg4rCM7MbLXBSvXuWpCkGUvAg2z9IKmEwNorNQ44Xyv19feq44/0y0NoPaRDOLLyicHykQdunitdxKn4EWLigYIy6qYp9RmolCqubgJXevT7rJMDtvYsp/f00oJZm0xiRYNBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=E+vQxzYM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="E+vQxzYM"
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48RFdjov026337
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:03:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:list-id:message-id:mime-version:references:subject:to; s=
	qcppdkim1; bh=kcAwUjQax1wTPoRjgy3zZ4yH17RGB3jgcsjz0P5tws8=; b=E+
	vQxzYMbUvknKQfHH/4bQJwQYG1orcFFS94Cmw5vb1quTFReZrJajJQ2t3qYnHAJT
	iObCsm4SXQPmzvbqIPeOduYwju2dGMTbBMGh2Zs+KktvaI+oNshdl4R5LwRuT/02
	QrGZqrejDh1tu71VfFC0w6FGRdDLKeRmChsOLg+AZaWqGKUSyQEEvWakOn+5wGRg
	Ae7zqFNXyFG0EQWh2u6AU408A631HqAsHBZ90FUJ2kI/zYp4UZRQseffpeqPg4f5
	JXvOuCoaqIvo2omRMMGETUhdAqGiEbZYlRbiVNnffUg7IG+DqAzSv9QjPVOCFQU6
	aCh0fT7va+zMGqEqGjSA==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41snfhcame-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:03:18 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48RL3FsD009564
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:03:15 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 41sq7msyd0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:03:15 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48RL3ELc009559
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:03:14 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-wasimn-hyd.qualcomm.com [10.147.246.180])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 48RL3ExZ009558
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Sep 2024 21:03:14 +0000
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 3944840)
	id B4027583; Sat, 28 Sep 2024 02:33:13 +0530 (+0530)
From: Wasim Nazir <quic_wasimn@quicinc.com>
To: quic_wasimn@quicinc.com
Cc: linux-newbie@vger.kernel.org
Subject: [PATCH] DNM: Testing few things
Date: Sat, 28 Sep 2024 02:32:49 +0530
Message-ID: <20240927205940.4164876-1-quic_wasimn@quicinc.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240927205940.4164876-1-quic_wasimn@quicinc.com>
References: <20240927205940.4164876-1-quic_wasimn@quicinc.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: RHTOonLOEfWjjmNtBrJzHycDVBEbufj8
X-Proofpoint-GUID: RHTOonLOEfWjjmNtBrJzHycDVBEbufj8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=47 clxscore=1015 adultscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 mlxscore=47
 suspectscore=0 impostorscore=0 spamscore=47 phishscore=0 mlxlogscore=6
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409270154
Message-ID: <20240927210249.v4_nfTUNOA6Wr7xYkgkG7YRMaDL24vQGerzMgZxKamg@z>

Check this.

Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
---
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
> Comment on line1
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


