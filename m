Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2167219FC
	for <linux-newbie@vger.kernel.org>; Wed,  2 Jul 2025 10:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751453344; cv=none; b=lzaFhcBpXLhLQ13Sc+WSMg8E4NFmJ+78U6P+aDVbBRmQjyvSx2vgGxoc30sXih3niFnvrKE3RvrMd50Lb4cEBHzESEBktif5U68dXxWfZvESsEtaB+QCUU8kOUxb7SqFEdIdx/8As8PR5LU3s7rpndheR1QlkHUa/KBdiU3G7NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751453344; c=relaxed/simple;
	bh=18sfHVuOmX2dMEB7S51Hu1DqpsrKI84Ssec1YuuiotY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e/CMdd7a5Z06vRpc06lZvwpR7mmCMP3jU6gLnVtpGfxeqsJslg0IXRbNBylMVydkNxkuUtYIzX9VpR0tTszzdPYv8dT/bGAGSuE9ZvtZrB3fiWMGeBg2bSQ3LHGZoh1IbFUOLD+Dwp+yEQdGzsbITtn8/0u+rV2zXKUNweBURqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SfaoD6rT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SfaoD6rT"
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56257J04007345
	for <linux-newbie@vger.kernel.org>; Wed, 2 Jul 2025 10:49:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=T9QKC6CVwsL0o2/X7db09A6y
	RWyAuxapCL4b3AzRexs=; b=SfaoD6rTAL44ntj2U4AGsybU5FoKzx4xGVZHV77X
	3xGZO9exLheAvibpvo0/7TNhKqFFHCkPgUAuhpv+olwXx9wQc6hfFpJMa2DMJMUU
	jgsP2NGnrsudl0AHM/5cITNQ7BCl7b3C5c96UCSFW+snwHCB53Dq3+OUqC5EyxBG
	uK91C00xSBRAQjPWDW7EPuYVUSfDJLdaLRLL11+69sie6BvDmpJUTbOyUAl3rmAl
	B8g7BYHAzyotMh7ADewIeHp/5viKW5yIMhv8ULm+bTmMv7n5oM+F6U7V6j9tm5tE
	HkICGv/PmuQ1KENdrJHWzIXiUqV64WAaK/iuDWJ1qMYS2Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kn5jgp04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-newbie@vger.kernel.org>; Wed, 02 Jul 2025 10:49:01 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2354ba59eb6so73179565ad.1
        for <linux-newbie@vger.kernel.org>; Wed, 02 Jul 2025 03:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751453341; x=1752058141;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T9QKC6CVwsL0o2/X7db09A6yRWyAuxapCL4b3AzRexs=;
        b=s+1Ckp0BuLLlEH6gbzDSt3yo/l/bZTK7LwbDbTAGpljFikMXBd/FlkTLhpK/0IrQ3T
         h7o2vds+fU+G0Z2OGhqogKuviFU08191K7M0xRHKR5DWLrBi5dJR1bdF3AseL98MVRCh
         FCfSwMhl6IWSyb1Gj9grgZAKvsFkZrspp4tuuUhwmnGk91o1C4kC3Zh5t3sKDRwfuotf
         KNZNpNHIWZE0sPsMGmarLGthUIGTyo6xzxaRk0m1sAmQYy3+CX8g8WMMFNvJHy8AV2fT
         /92eX+Kaep97AA0klq5zs6/nlcSMPKL9fHDknpBWeBMpNNopGLez1IJ3zik9k3bfZvbp
         N0sQ==
X-Gm-Message-State: AOJu0YyLejp2kOP9Mu+xq8wINGgnh8LBqBiV9fy9PWfsiOY7uJzBYHYC
	oLDQ7j4kikivJCwK2MnBMmwnYY3loG78wcOyMdifsPOKhXJLD+QKKmCmMQv6kmGuJAmtk/THdoF
	3c/T7O4G5HGvqPAUSnPk3nusllUd9Hm2dgQFXzL1b2kkwh3Nf1wISoJw7c2zs6iFjPiCOl5OcEV
	nXJAyR
X-Gm-Gg: ASbGncvqhnJ3BP3bjntyZ4SSeendKT+roU+Tj+rFro1pPRfYeU4uJSdE5Lz2yzLbHJL
	YpRs1aYu9F02HstLJt+BfibgFfbYKZlLN0MoYO40Nb8UdYjkVfKnRIeIos/I2Dn+WKo25YxKOkL
	NKaTJ5zgVsnCpWzsw4Pk5y+0wzLTrm3d2xBfBIsXPzwIY4tXDbDJHGp6FM5ylRAqQwLV4AF4SfD
	nYtzLRuoY93xbJzUM5lubCRxU5Ne23i2DsDFrfSrjRcECgXYWbp0kihKDPOgSMHf6LqgPVjc610
	gnTG4aNT1nMVA0jU5nvzGgwoDybhqb/0DphBoyoCDXtALrO/HEY=
X-Received: by 2002:a17:902:e946:b0:236:9402:a622 with SMTP id d9443c01a7336-23c6e54e2f9mr40471205ad.34.1751453341019;
        Wed, 02 Jul 2025 03:49:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUfrCAjhnbeXzb+/SSUfTtXvzElusaplvJb8NBNpE7XkNcHqj68XAlpL87DAGBF5CPci1puw==
X-Received: by 2002:a17:902:e946:b0:236:9402:a622 with SMTP id d9443c01a7336-23c6e54e2f9mr40470865ad.34.1751453340542;
        Wed, 02 Jul 2025 03:49:00 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb3bc495sm133676215ad.201.2025.07.02.03.48.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 03:49:00 -0700 (PDT)
Date: Wed, 2 Jul 2025 16:18:47 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: linux-newbie@vger.kernel.org
Subject: Re: [PATCH] DNM: Testing few things
Message-ID: <aGUOjxf/iiWDxyD5@hu-wasimn-hyd.qualcomm.com>
References: <20240927205940.4164876-1-quic_wasimn@quicinc.com>
 <20240927205940.4164876-1-quic_wasimn@quicinc.com>
 <ZvueYYDoi2Js5mKL@hu-wasimn-hyd.qualcomm.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZvueYYDoi2Js5mKL@hu-wasimn-hyd.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KtJN2XWN c=1 sm=1 tr=0 ts=68650e9e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=lPDNyY81mM48ZL28-rMA:9
 a=CjuIK1q_8ugA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: xGNPpfj0_MqAERLSwpED1MqpHiF02LQ-
X-Proofpoint-GUID: xGNPpfj0_MqAERLSwpED1MqpHiF02LQ-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDA4NyBTYWx0ZWRfX0uY3lJBTccV6
 AusLxjwxBV6tXzykAPQCr4Cyp1Dk0UwyRuYOKnfgmgoQcuDmR1ZYR0sfKwkbfEvniNkvaWBv6BP
 rKi8ddRpgki/OABkFzseyuRfP4M9NsYwGkxasPWRdlHY4po+VLna7NbXHavDDHDqJ1zm7f/n1Yt
 PD8Ch8IOr0OZTOxRQRLepVE+U6WT7gtznPQIJta7G8iUvTaO+A9NonUg46WUp55Nbdlz0TCFcxX
 vlndGgZE6jmA2Nx8X3apeO6z7QyVfjs2pd9WG2vNL4fa8mXl1WM8PpoxLudnq6N4BKrRJNVcEpS
 Qh2mLmoOF/m+/iOuxworqLfutwezMH2iOv+ICaGY3HNm9D+QMVcrUrGUsT9C7YB7tAbssiEiWlX
 znl3VQZBrMmia2mRI/58ngmAflExTAv6MBOarRMSxrbTM8UvRJqbwTzAahMGCa5/hFLjSZk5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 mlxscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 clxscore=1011 mlxlogscore=744 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507020087

On Tue, Oct 01, 2024 at 12:31:53PM +0530, Wasim Nazir wrote:
> On Sat, Sep 28, 2024 at 02:32:49AM +0530, Wasim Nazir wrote:
> > Check this.
> > 
> > Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> > ---
> > diff --git a/Documentation/testing.txt b/Documentation/testing.txt
> > new file mode 100644
> > index 000000000000..7c3087596ba8
> > --- /dev/null
> > +++ b/Documentation/testing.txt
> > @@ -0,0 +1,12 @@
> > +Testing few things:
> > +
> > +Line1
> > +
> > > Comment on line1
> Next comment on line1
> > +
> > +Line2
> Comment on line1
> > +
> > +

T

> > +Line3
> > +
> > +
> > +End
> > --
> > 2.46.1
> > 

-- 
Regards,
Wasim
