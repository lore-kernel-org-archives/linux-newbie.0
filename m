Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3291A2AD2C
	for <linux-newbie@vger.kernel.org>; Sat, 18 Apr 2026 10:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776508040; cv=none; b=DtfSFOjXdkdFvuUklLdsesmuFWA3fDWJBrMNtq1eEu0IEH68SZTbc8jDSbv8hWhpA/coTMI2kvrgLLJdkpipfO5sffSGyMLWkbctCltx1yq510i08wV7ApPvo6qN/TIKR5XSvAO3jzRuyOWnO0tIulEQNLc9u2SOdp/689IfNSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776508040; c=relaxed/simple;
	bh=lbvp+q6Ee1jXl/JddiYXx2sw6/NvDwxJUd93EGYKAco=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HiZ3NWv44Ta/aEhP3WNS6pKGW1tRXWjNbL63DrTji+fb4YFpoiR/7CcXHSqTZauYYEPTS6WSjadSsVFjwfouhLLvPiXvGqY9+W0w6FfnqcrLRPjvdXhJrat8w4D2Q+LHlWBLyVDi0/cXAolskr+V9Fq4ihZEfQsP+/A9skENX6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CYm7z1F9; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CYm7z1F9"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-488a88aeec9so22861075e9.2
        for <linux-newbie@vger.kernel.org>; Sat, 18 Apr 2026 03:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776508037; x=1777112837; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZBNI4EdgBnERH0JRaIrNWQCvhm/8BjKu3aOv53OQCzU=;
        b=CYm7z1F9u+ZagNqNK/L5Vu9N3AjMk8Fc0dX20u2kcfsno9rNYrVFHYQ+5tFraTxkI9
         C2VJ2v2NyxV7QGqBSN45+XLyjrt9KmEk7mJTxX9TuY0cHoK80JtwP4UmRFaNHRcBWuvv
         IcTb3SjqQ72NvNkdptr/ANbf0+s3P/YnTcilsHtSqeZgpLJlX4T25G1TzUbnxu6tvqzV
         qFRyMjGz6HKWMOTATsnw67AvQ6h4ZSvL1O9U52OlQEsU7KJw3XFs4xvakW2y3BiEGb2P
         tmPJ2fCtgd4YPfbTEHPtRYQ30rFQZAK+XxJRKvWxebMhekwPY7Y2+vZHhLHqYHz7e7Z3
         tjvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776508037; x=1777112837;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZBNI4EdgBnERH0JRaIrNWQCvhm/8BjKu3aOv53OQCzU=;
        b=n0W0Y+i7rTLUJF/XC097WoFh4Al8lbrR1ZJs3cty53UekPTEMdmWVxybVwQQiuuTGA
         vf0l4qAzFFbu76sa1JyiavC2hP2Liuu/uRI3C1/rpMLENsIrxqSrLcrS/iRzIRxiGBFH
         5Q0o3CPao0sDdwPBzjcFXIW5OGen9UBzmz+qRvljfAx+WTlgzhToimjgRpo8Hz2q1Ga1
         KLk43p099HBIr1vzxRhZNafCUqOV6qdO8eSskwoBhqlQOvBJCxsaCQO7vjhnI4AkddDK
         7qXNiupQtXfNQx0+FeOtkJ7ikgCZ1ooCTqNzUpNEPM/omnoVtnCbqP3U0lNWrGCnLgwa
         5FSg==
X-Forwarded-Encrypted: i=1; AFNElJ/+ikyqYAiT9FPgFu7G+XkLvuxQvfqpNJG6VPBjfDyxEqoyc8j7ctHjpoqWk1f9iUVN+UhGkhJewZ4gv9o=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw01fN4wUc7BBL4oWb+Gvv3zyjS/jOjPLqo+E3OwmyZTq7jGtT2
	lNu/OzDTBP/sJjFFLfEdD8zBBoFgwrqzNrsgFZekvGmGkRzfx4McZLlv
X-Gm-Gg: AeBDietw9ptcZk6n1IV2q4gGcSh9i+WmFXotUsfSTiqEsvsqcUDmgN7Su93Qnaac2R8
	sPTdXNrTzUkRO5IHYWTzAPY/Qh19CuzGiXqEP9VFhJTmud3GelGzCWTMMpGt7bO4Xf1CwIeqyQj
	46P9p/ytjpK8DbnjQMMUk6uRShj3YJZTOTeDU8SiKccliXIJ3qWBGQOExgBIu2pBVO9b/Z8WtQU
	gKy4sqFTvgle2fKkkd2SJ6HMdA6RSHQaCVajIxXzOMzwzDoBR6scLIZteTIJu8bMI7wlajxenrM
	6fn66H+jOyFwhUbMw1c6fBogk+JJIeV7oanxlRHVkBLVjrnJjuUDsqfqJQfrojCWb3Sckivu8Ze
	kwiDR21BpkLLFEdfHNSe018qzjCzmkhJ6dOVccnFO3uMXlEMH7iMMWVFURRyMnmTuHZ0fteHZEK
	GKEn0NBzeeSv39ixv40aIrh0qiMZSrUg==
X-Received: by 2002:a05:600c:6089:b0:488:e192:6fb5 with SMTP id 5b1f17b1804b1-488fb7887camr88648135e9.24.1776508037427;
        Sat, 18 Apr 2026 03:27:17 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4cb1682sm12499160f8f.1.2026.04.18.03.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Apr 2026 03:27:16 -0700 (PDT)
Date: Sat, 18 Apr 2026 13:27:13 +0300
From: Dan Carpenter <error27@gmail.com>
To: Manuel Ebner <manuelebner@mailbox.org>
Cc: kernel-janitors@vger.kernel.org, linux-kernel-mentees@lists.linux.dev,
	linux-newbie@vger.kernel.org
Subject: Re: [PATCH] Documentation: adopt new coding style of type-aware
 kmalloc-family
Message-ID: <aeNcgSu8kVEyWbzY@stanley.mountain>
References: <20260418093101.130335-6-manuelebner@mailbox.org>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260418093101.130335-6-manuelebner@mailbox.org>

On Sat, Apr 18, 2026 at 11:30:48AM +0200, Manuel Ebner wrote:
> Would a patch like this one make sense?
> I think i need help with the change log. Is there something to much or missing?
> 
> ptr = kmalloc(sizeof(*ptr), gfp);
>  -> ptr = kmalloc_obj(*ptr, gfp);
> 
>  This one is done. The ones below are not done yet.
> 
> ptr = kmalloc(sizeof(struct some_obj_name), gfp);
>  -> ptr = kmalloc_obj(*ptr, gfp);
> ptr = kzalloc(sizeof(*ptr), gfp);
>  > ptr = kzalloc_obj(*ptr, gfp);
> ptr = kmalloc_array(count, sizeof(*ptr), gfp);
>  -> ptr = kmalloc_objs(*ptr, count, gfp);
> ptr = kcalloc(count, sizeof(*ptr), gfp);
>  -> ptr = kzalloc_objs(*ptr, count, gfp);
> 
> change log:
> [PATCH] Documentation: adopt new coding style of type-aware kmalloc-family
> 
> Update the documentation to reflect new type-aware kmalloc-family as
> suggested in commit 2932ba8d9c99 ("slab: Introduce kmalloc_obj() and family")
> 
> ptr = kmalloc(sizeof(*ptr), gfp);
>  -> ptr = kmalloc_obj(*ptr, gfp);
> 
> Signed-off-by: Manuel Ebner <manuelebner@mailbox.org>

Yeah.  Fix up the commit message and that could probably be merged
through the documentation tree.  Probably no need to split it up
by subsystem, but you should CC the affected subsystems.

regards,
dan carpener

