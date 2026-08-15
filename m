Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8731233955
	for <linux-newbie@vger.kernel.org>; Sat, 15 Aug 2026 15:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786809040; cv=none; b=SWmr/iOspOr1ESxhhdqjLQ6jczOOFkBoIX3tgJn24c0FHB+sJ2MmVQvymNTTTfLAUlqx7ycpMbj0TcVWqbADvzogb/PkaO/L2apY9xmHFh2XZ8Yc3pd6RwPr2TZI2TDnIic4QZF0S/LmuB5Tq6NLnrVN3vmjovmPtywSff39Lbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786809040; c=relaxed/simple;
	bh=mfIY2v5/D7HSPmTzqZ6MMyihT95sYp2nSy3IGBQaR3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kIsWgzNYP3xeJTZZVI8bGO8RfhIbwWELDptCL2Zzl3SEWKGpNBpzXeIJr5jS6Lcj23PYinwttcUpuKiWHN/fuTdtO9pMCG1mZZFRDi/T5mcNkLZDvpNnMjbwzs30nPNJPZHRxjpuuffSJwc5x2WZcrGmn1kNcuoZTH4Cns7Lu1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O4y/p14+; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O4y/p14+"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4953e04ef16so21557625e9.2
        for <linux-newbie@vger.kernel.org>; Sat, 15 Aug 2026 08:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786809037; x=1787413837; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KAI3Eox7KHEOcOwallFxxNHGa4PZKvmYbnhy/t5K/9I=;
        b=O4y/p14+IBVM+yBo6vDP5QeASjsUdRTEl5/c73HqTKNtZXzEO8jJ88OBz989XYWYXV
         Cb2PMmf2oWyUbi2bYb0c9FMlDr8N9aNkU9F3jG/6h+NqHA8e/vxZXLGLy3eApRl0I9YJ
         3b2ncednQh8vEShl1FFr3NEdPj/fhJzw9rlKRSUrRo08cgzU2AqtltLGlu7GdEh8Z4xT
         1Mot9INC5nXINJJrUT9q+I1rcnlmnSVMEe+TeRd2CNfbYyh0o5rvFzPOCfohN4lhEFBA
         wWETKUhd7aw/dKRSzl3aIfz1rUf/aen+TxLTLfg8yxeUM/blVU0sRgeLDisU+3qFQ6Ex
         EOAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786809037; x=1787413837;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KAI3Eox7KHEOcOwallFxxNHGa4PZKvmYbnhy/t5K/9I=;
        b=XJWc/69gCQKPoG1lwZDcGV2pE2+JDwW/E57OhEKJEYYNwmjV0mI0iOTqk2drrXy2BA
         cm1J0g0tIQki6kzphQWIGUpjBbke/rph6c8JHiPH7oM3G3xU/VRA2Mrl9k1mZGkCRjo/
         NvEq7s3gPE3FOw9+Hmh6kpZ5fiB5u7Vlv4eo2+6WPIoJly9J9dmxjdZeGoQPApkbnzNH
         PuZSbdBwo5/xW+EI5t0wJiGANMgFI5W34mF5I5BOrvGIPdMDSOpNPy8Lfu87AsMkmgEd
         gme7H7C/fpPCCfqdFg4iXoyb4nv89x4x5+6S1XByhDCUxywMn49769JSRlaE7q3xfT+h
         m4Mg==
X-Gm-Message-State: AOJu0YxtlIL2X+kpZO88KlwCuU1guRRJ3B+2SqbXqjbIQnvfAunKPQ2q
	CVsrAlf0PPTQPmQ5K/bsMRHn2dfV2GS9PiznIDXRF9DqCUVeNTPyM7QjKNHECl/YF2c=
X-Gm-Gg: AR+sD12JL2QbjJ2W4IdtjJLShdomhLZqSZZHPBvsPqk8C8PoPYkYwgC+NvT34WXkqDj
	MPkgVsdufNJj4VoYSKXTzM0UadGrFZwhX6laXyY8JNWaEvWenKSZGgsz1eQOqJzfNfzI7g+Jkb6
	/XkyjdegRdS7svhqTAV/CRYfRT1D1sSoU5pV0qbR9/ROzNP5XdPpxYUb2eNzGfh/IKgZ/fMlpab
	uJO7EjzaHwH2q3wgVqi/k/nHvFlb4K2anva7dmy+zrUQBZimptvB4X1nmnf+70FbeOweTVDYcol
	vhF8KalVuSdeFRceMBm6uaDlZMpCGzsIPXHbyDMxOCAoKpxIejxB4Rr6aWvZYdzR3WboFKBFlE1
	Jiiaw5OD4hYCs+rhMBcHZIJarE0yT3R1RuElS0NwcIuuGJNclImj2T5HlKjRHaJUbXxQ37Nrxe+
	l2uAagjZgT2jULh7YxTe+Pj8Htiz4FXE5PXgh63fsrdWJ5KbZHzeyrBpppBhp7Ujc3PspJ+e7Wl
	pNH59JOxHRFEOBuqqIIvw==
X-Received: by 2002:a05:600c:8b23:b0:499:8b47:ae74 with SMTP id 5b1f17b1804b1-4998b47aedamr124506195e9.16.1786809036746;
        Sat, 15 Aug 2026 08:50:36 -0700 (PDT)
Received: from localhost ([31.130.179.96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49988adfb67sm155976405e9.3.2026.08.15.08.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 08:50:36 -0700 (PDT)
Date: Sat, 15 Aug 2026 19:20:30 +0330
From: Ali Nasrolahi <a.nasrolahi01@gmail.com>
To: Foxie Flakey <foxieflakey@gmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: Re: [PATCH] userfaultfd: reset err when move_pages_ptes succeeded
Message-ID: <aoCJXlrOG3VvCGLt@zephyr>
References: <80b30bbd-dfa0-e8b9-0af3-e89116a464fe@gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <80b30bbd-dfa0-e8b9-0af3-e89116a464fe@gmail.com>

On 26/08/15 09:13PM, Foxie Flakey wrote:
> 
> There is an edge case when move_pages_ptes fails with EAGAIN and then outer
> loop attempt to retry and succeeded but "err" isn't reset. This leads to
> outer loop retry erroneously on same set of pages that was successfully
> moved. This is fixed by resetting "err" when move_pages_ptes succeeded.
> 
> Fixes: 50944692052b ("userfaultfd: opportunistic TLB-flush batching for present pages in MOVE")
> Signed-off-by: Foxie Flakey <foxieflakey@gmail.com>
> Assisted-by: ChatGPT:GPT-5.6-Luna
> ---
>  mm/userfaultfd.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/mm/userfaultfd.c b/mm/userfaultfd.c
> index c3adedaaf7d5..595e7e232f90 100644
> --- a/mm/userfaultfd.c
> +++ b/mm/userfaultfd.c
> @@ -2069,10 +2069,12 @@ static ssize_t move_pages(struct userfaultfd_ctx *ctx, unsigned long dst_start,
>  			ret = move_pages_ptes(mm, dst_pmd, src_pmd,
>  					      dst_vma, src_vma, dst_addr,
>  					      src_addr, src_end - src_addr, mode);
> -			if (ret < 0)
> +			if (ret < 0) {
>  				err = ret;
> -			else
> +			} else {
> +				err = 0;
>  				step_size = ret;
> +			}
>  		}
> 
>  		cond_resched();
> 
> base-commit: 62cc90241548d5570ee68e01aaba6506964e9811
> -- 
> 2.55.0
> 
> 

Hi,

Use `./scripts/get_maintainer.pl <file>` to figure out to which mailing
list you should send your patches. Also don't forget to CC the subsytem
and the file maintainer. I don't think this is the correct mailing list
for your patch :)

Cheers,
    Ali
