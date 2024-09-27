Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD5C1C1AB7
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727471384; cv=none; b=nH3tTPSeZHJcZlRrQXZ5GZAa96WQY5raWVO0kNM5d5eMhV1V+nWcy9VLiJdLJ+623hs54+XtsdTlTuftSKhlublOwpuJND5IlsQrodnv/olE1MHEwie5+TVr2PiX3WxdqTRM5fdXdYNuhiXue2HsdDqpj1QM03RCKgOD6McagQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727471384; c=relaxed/simple;
	bh=K+WQPAPJTPIlvkL6zgXj3u07e7gq13GR4amdqj6q3nw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ikpLmxi5plPmTNKuskbpacI1iY7ucJ4guOkeZQuNAigyYQMwxwbi/iKG17C6J0i6NWJoEqdVwXyJknEdRY3MpXQkrMOW5TE1XP5uDFn0gfsw6Zi0H4LCmKVU9QhGQfWUIjfdicgdP6K9wmGI9pTERKw4GiwtLsQyhKOb+K72kKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=VUYqY3iO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="VUYqY3iO"
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48RFdjpJ026337
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:09:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=K+WQPAPJTPI
	lvkL6zgXj3u07e7gq13GR4amdqj6q3nw=; b=VUYqY3iO99MDN9C1xAx/LDtGSAS
	oKOgU0zGUt9O5ZwvfPtJaGgro9ogBEeA9ZGVghjTlid0nz0vL4xMr1hHiN84tY8R
	FmZAUfRvFMRTAI2TG9LBGnU+1UO3a+j29hUsILvmNUM/XIL3c4f3qM3qbaYSXTC1
	nlRiSBZERLnFmjRHTHzBkA3BTuKfEcycIoTfERvXVmTv6pJpaP0qmO6Wg3lJkX5Q
	+MxkarVfmzNPTd5lTtGlOIfQKVBfJFTjxNPAuPQg1lkTqrFjbZt2t0fn6Du0eS2M
	ENjayxRXXTSj51Wm27aoQ1uaEBUTJhoxgIvoJi5UVketTn3NT1jJ2Eok2QA==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41snfhcaym-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:09:41 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48RL9cTq017133
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:09:38 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 41sq7msc4s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:09:38 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48RL9chH017128
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 21:09:38 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-wasimn-hyd.qualcomm.com [10.147.246.180])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 48RL9bX5017112
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Sep 2024 21:09:38 +0000
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 3944840)
	id DA2BD583; Sat, 28 Sep 2024 02:39:36 +0530 (+0530)
From: Wasim Nazir <quic_wasimn@quicinc.com>
To: quic_wasimn@quicinc.com
Cc: linux-newbie@vger.kernel.org
Subject: Re: [PATCH] DNM: Testing few things
Date: Sat, 28 Sep 2024 02:39:36 +0530
Message-ID: <20240927210936.4167093-1-quic_wasimn@quicinc.com>
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
X-Proofpoint-ORIG-GUID: gU9Z-rW9Trl3kwdN4Fwww-8p_6hzMi0G
X-Proofpoint-GUID: gU9Z-rW9Trl3kwdN4Fwww-8p_6hzMi0G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 mlxscore=0
 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0 mlxlogscore=463
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409270154

> Global comment
