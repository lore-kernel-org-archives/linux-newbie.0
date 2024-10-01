Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AA32F3E
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 07:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727766127; cv=none; b=ZWomQVClLcwPlReFlXUGcT691hf9R6jyz/Br/LT3QLcJhi8WtDPEfB/gSHqQi1bU766A9ptXwP9MjE1D4VUS6zsY6IOTrbYGWARYhXE9ihKEo/adqQC/NvT8kiLOaCyQilnRqZ8zBoor/SXcdA4yPdU+OPFo6PxhsMWPyXXOHdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727766127; c=relaxed/simple;
	bh=ArkMd2SZQNWTlYTaLDlRWW3CSkbAk//lHxlk3NLOT/w=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tIzhXUAVi93R0CUmf2ATuXelvpStZaDZwPQBsym2Kd14Nc15Si7K1io2oiWqzgGMi+X6kHoExjfjWmeEO0k/bvg1TEhPkwl6+5CwXf69ciAloq+5MaCgXcDxHRS6zvpwFjCMLPqjCECd5+x9ZyKVorp4aV32He5W4eMEpC1spyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=YQ27eV20; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="YQ27eV20"
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4910dqca002704
	for <linux-newbie@vger.kernel.org>; Tue, 1 Oct 2024 07:02:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/mjfuEit5RbsK4RCtR70Jkoo
	DkXJV5I2wfOFL10BuF8=; b=YQ27eV20fcVvnezOD1CzLRwCARye0q4qv8xxs7kW
	VxcgE0rVYL4KFTvpfOI+1xfVIu3YlU77GYsO654H5g2lwmUavlTsm2Y8tXL+yKXF
	ahyoQt4IJPi7WsK0OQgAOXxfikzn94HbEccndX9GVRPCoeDQvCukUx444Wx2ZCg7
	eCLeuXNzYSDriBB1TJLC7IV7hqRHlN+SMd1Fw6+nEhmGA8rKCxHP3VzQDfIt8giZ
	8cvWHsKP9PRqUi2aXlCCE/1FyFSSy7VSkQi88iXN3h3yzuwc/kv9gcD8R77u5a5w
	S7zs/L8g06XLmtMsDEVDIqLQD+UYVTWhj/gFectq3desmw==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41x7ge7fj7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Tue, 01 Oct 2024 07:02:04 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 491724Lr008312
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Tue, 1 Oct 2024 07:02:04 GMT
Received: from hu-wasimn-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 1 Oct 2024 00:02:03 -0700
Date: Tue, 1 Oct 2024 12:31:53 +0530
From: Wasim Nazir <quic_wasimn@quicinc.com>
To: <linux-newbie@vger.kernel.org>
Subject: Re: [PATCH] DNM: Testing few things
Message-ID: <ZvueYYDoi2Js5mKL@hu-wasimn-hyd.qualcomm.com>
References: <20240927205940.4164876-1-quic_wasimn@quicinc.com>
 <20240927205940.4164876-1-quic_wasimn@quicinc.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240927205940.4164876-1-quic_wasimn@quicinc.com>
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: RFmetE64Sgpb2WNIrQhaIccM-NZbO8Gb
X-Proofpoint-GUID: RFmetE64Sgpb2WNIrQhaIccM-NZbO8Gb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 bulkscore=0 mlxlogscore=595 lowpriorityscore=0 spamscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2410010046

On Sat, Sep 28, 2024 at 02:32:49AM +0530, Wasim Nazir wrote:
> Check this.
> 
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> ---
> diff --git a/Documentation/testing.txt b/Documentation/testing.txt
> new file mode 100644
> index 000000000000..7c3087596ba8
> --- /dev/null
> +++ b/Documentation/testing.txt
> @@ -0,0 +1,12 @@
> +Testing few things:
> +
> +Line1
> +
> > Comment on line1
Next comment on line1
> +
> +Line2
Comment on line1
> +
> +
> +Line3
> +
> +
> +End
> --
> 2.46.1
> 
