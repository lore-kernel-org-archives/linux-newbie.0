Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D349208A9
	for <linux-newbie@vger.kernel.org>; Thu,  3 Oct 2024 07:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727939965; cv=none; b=CeBKClPrlUkRPc/gmZacbUA3IazxAhGaL/TbmkYfrcxqKtJzXogxQiIRCOYkPch+obTgtcv/54MIk/riLghbojqdBE6TyKdB1zYr6Qevi5k3z5PiiyrhSJoJXzLvIg31oBkPy9ndT5Uz1h35ofZwUQGFSl5uOJu96rjcLuVTG3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727939965; c=relaxed/simple;
	bh=2qAlCy/AxTLaGGwgQ+umbw+7qN/X10id7P3yzTP7QSo=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G62RneFJUMuilvo2//N1FoM7bA3eREGlDcuV8Cwp18cRFdwfXb8mKVMew930Bqkw/+eisPLtEVFITRyOqWTfCkttcMRY6fie9VvcVTPYsN/jTLe9mo1DmrD+fnb6reGao1KPcixyKHQJr/swM4co5RRXu6cbGItCAf/32vl5DjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=J3XGpZ2C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="J3XGpZ2C"
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4934WCA4028278
	for <linux-newbie@vger.kernel.org>; Thu, 3 Oct 2024 07:19:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KQLlvXYwns6on5VuMZVvXk5m
	kJFo/dYFSsKvqv+a/EA=; b=J3XGpZ2CD4ETPkZ8cm2m07BDvTJOq3K7i3W4+4+/
	+xIBCeiijq+Wh3xGdulj0Gq3Yg+TZt/hj79DcDBWsFcNSpGluaDX71sgHHpZQ1si
	H74zCfhA/bLuwsVYR1HDC0TXTif4HJZOPe0MQyd4WYngSNN2Y6PsQ69P85+MGw2A
	vPGyTI0rsGUVgZkd8pyQOLUlCpAeYZeMM5nYc1q6I2gzxDbQMQbq0B8zgfl39SS4
	6dGKW70/k/4ZCkx+wylgfIm+Oo5v60Tsgt5h2oGKv3zmB6ktHWCGV6pcscOZ67tW
	XafNoCV1MRRotZq2zm72gjM6ijoE+SB01fViMl+TiM/d6g==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41yprasyw2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Thu, 03 Oct 2024 07:19:20 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4937JIlL021146
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Thu, 3 Oct 2024 07:19:18 GMT
Received: from hu-wasimn-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 3 Oct 2024 00:19:16 -0700
Date: Thu, 3 Oct 2024 12:49:05 +0530
From: Wasim Nazir <quic_wasimn@quicinc.com>
To: <quic_wasimn@quicinc.com>
CC: <linux-newbie@vger.kernel.org>
Subject: Re: [PATCH] DNM: Testing2 few things again
Message-ID: <Zv5FaRerWXPSM5R6@hu-wasimn-hyd.qualcomm.com>
References: <20241003062218.3331404-1-quic_wasimn@quicinc.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241003062218.3331404-1-quic_wasimn@quicinc.com>
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 6fPlvEyCtWP8Rx6Uk_RFzBj3u_bHnPnK
X-Proofpoint-ORIG-GUID: 6fPlvEyCtWP8Rx6Uk_RFzBj3u_bHnPnK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 mlxscore=0 phishscore=0 impostorscore=0
 clxscore=1015 adultscore=0 mlxlogscore=589 bulkscore=0 priorityscore=1501
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2410030050

On Thu, Oct 03, 2024 at 11:52:18AM +0530, Wasim Nazir wrote:
> TestA, TestB, TestC.
> 
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> ---
> Anything here can be ignored
> 
>  Documentation/testing2.txt | 7 +++++++
>  1 file changed, 7 insertions(+)
>  create mode 100644 Documentation/testing2.txt
> 
> diff --git a/Documentation/testing2.txt b/Documentation/testing2.txt
> new file mode 100644
> index 000000000000..fd91f33a2814
> --- /dev/null
> +++ b/Documentation/testing2.txt
> @@ -0,0 +1,7 @@
> +Testing2 few things again:
> +
> +LineA
Comment in lineA
> +
> +LineB
> +
> +LineC
> --
> 2.46.1
> 
