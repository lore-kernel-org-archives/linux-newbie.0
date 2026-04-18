Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3063A2E8897
	for <linux-newbie@vger.kernel.org>; Sat, 18 Apr 2026 11:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776512658; cv=none; b=CreCUppM89TmASDTjmKpR0almt0kDqFdh8MX9VTpQaVZnuEAWeIfazB9RekR97k9rDIjpYiiWQLFVvYUaMzI4iYD0B5l9fw8gRLUhylBGj/yeYokoU6F+Bn4LVgX+WSo5eET8Z5TxUCSbHgU4aWFogBSRXDVQopnMhnfDONVtoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776512658; c=relaxed/simple;
	bh=DTtC8NxB4D5X346ZQ8nuFBJ4c5G4OQ30co4kBHhXhtM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p62GkzRWZWYauW8swcHgVG0yx7utaz1339AMQpZATf9OuR9C8FIAX0edMJi6XSiNoQfr+cOkJy0d+bVbmMDatc0UtJGioelERj1UchMzpXCZCOwBXrPao4sCgwiLQ70kbR8I3wNYl/iJn7Wh1ruQN74j7P4L8NmWmL6s2oZBHAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IcPX994F; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IcPX994F"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-488b8efed61so15444675e9.1
        for <linux-newbie@vger.kernel.org>; Sat, 18 Apr 2026 04:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776512656; x=1777117456; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iIJ+Ah9Hw1cuV39d17Fs4Sjoe/KtvVS8yFzsHhldbSk=;
        b=IcPX994FEW7v0sSeBEriLLSQ3RnWnfy640OhJr7qzVhLbZQU2MQUsU4vuUBwV2DSaP
         Xzd5dr5w1+jqfMGHOyxtwFbrKLUvtf4lyu6u+hrR9u426M1mA+Hu4ZGUK71lA6SuHqnH
         KFhoCbQi3Zyy+zsvS48Oo3h/TVrKRoiprPwKltSVQYbFsz2AbK1ZxFzOxrG33AfZkSmk
         dpzMtTqtrGrvG7m0KcSuuxnoEVIYeefEjloyg0DXybA02LLHD80e5VTkDnqIMrXb6Ipx
         dhMXQW3I5UI72b1p7UcADCOH8D3ArvFQ8zHpsSR22+r1+vxNN8QSUJ7MrOkRtJW/D85C
         arSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776512656; x=1777117456;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iIJ+Ah9Hw1cuV39d17Fs4Sjoe/KtvVS8yFzsHhldbSk=;
        b=Nehv4q0O3M2AIkWTnNetS9k/Dbhz7l4aVEkTKG0vZKNgOpZeol5DIv+4mOywRm3GSV
         2VUwwhD6TmjO7+dHG1yBHDXUaOhSMeMjXWUnWNQsagGIFWBkjwr5Nrk5eY/ph5aL2ZfU
         iLaKQjQsqTUKLdQMojD7AspSgTUkAU+XuNYHHOwJc4BqboGsoWFzjj0SQZUKZaG8D+lK
         i6FNUFT7Zo8i7nnffIivimIuRjG4qA+3rZ5DmhQ2zLH9HO0EHELaRd2KzjEct5c8/Q93
         XuNsEdY3UihH3DDqyGgJcmO1y48S9F/X3hxHvfrysuCoE1TdkllkxP62bOk3g8bs0xrA
         1m2w==
X-Forwarded-Encrypted: i=1; AFNElJ8PJul8LnWoYWcLDFpTmgtcNx/5cV7ZOMutnLMxgMLM9rksqTyC8LeY/DsYsVj7UrltrkrChWuAUMiTvOg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf06UiwsQvK5AseOWfOFEMW9Dtp3kxDdZRDqTMjZDUf8U2gAPV
	SBCwlaX8Iyosy6DsHwV5kWJYYljDikBCUbDCzWm6b7GGflcK+hMfDuwY
X-Gm-Gg: AeBDiesBDg7pXXk91ZD5yx9dNy2JVpvq/5yrzmjQmVPeXg18D9Nlb9HWpAeh5eU5j6M
	OTbFsFXfkXVmSUZXqDbW1gTHmEXDGQ71uk5j1slvnzH+7Ev4gObQMMvpFSWn/BDzmX/dw9VPJTJ
	ThZy59CnTVGFweNEwcbZoHqlwGldPojUbvjtOaEAWtaVexKYCDcBbRwF+49+lnGyof/ywQvXbvj
	ecnPDjACnNbc2jZmKJh1fbKOjHl762xLoh43QM9VLCCzwAtyinqnBGNoddsO5RwZMBrObnWYNXk
	SFOPhwvjHfsROlLXY98fo320kcIsS2u4/x7NUFSl7+1JvCSum2w+2ToZr4AL1r2ZVw4Jpwc39/6
	ior1m4ckmwvuMIr4bDK1F/saB0LJKHIW2Sc8EUcssHsq1N4HCMzACrM4so+j3uhCoNUZ/XKxSMh
	VAD+MNwU4wB2qnAl1IlaouL/26YWmtQw==
X-Received: by 2002:a05:600c:c0d8:b0:485:fbd2:f72 with SMTP id 5b1f17b1804b1-488fb8838abmr61301985e9.1.1776512655419;
        Sat, 18 Apr 2026 04:44:15 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc1070bfsm120135555e9.7.2026.04.18.04.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Apr 2026 04:44:14 -0700 (PDT)
Date: Sat, 18 Apr 2026 14:44:11 +0300
From: Dan Carpenter <error27@gmail.com>
To: Manuel Ebner <manuelebner@mailbox.org>
Cc: kernel-janitors@vger.kernel.org, linux-kernel-mentees@lists.linux.dev,
	linux-newbie@vger.kernel.org
Subject: Re: [PATCH] Documentation: adopt new coding style of type-aware
 kmalloc-family
Message-ID: <aeNui4yhFtLnIvSI@stanley.mountain>
References: <20260418093101.130335-6-manuelebner@mailbox.org>
 <aeNcgSu8kVEyWbzY@stanley.mountain>
 <980be93ce680c831c37dbeeb070135b2fc8f4fb8.camel@mailbox.org>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <980be93ce680c831c37dbeeb070135b2fc8f4fb8.camel@mailbox.org>

On Sat, Apr 18, 2026 at 12:45:19PM +0200, Manuel Ebner wrote:
> On Sat, 2026-04-18 at 13:27 +0300, Dan Carpenter wrote:
> > On Sat, Apr 18, 2026 at 11:30:48AM +0200, Manuel Ebner wrote:
> > > Would a patch like this one make sense?
> > > I think i need help with the change log. Is there something to much or missing?
> > > 
> > > ptr = kmalloc(sizeof(*ptr), gfp);
> > >  -> ptr = kmalloc_obj(*ptr, gfp);
> > > 
> > >  This one is done. The ones below are not done yet.
> > > 
> > > ptr = kmalloc(sizeof(struct some_obj_name), gfp);
> > >  -> ptr = kmalloc_obj(*ptr, gfp);
> > > ptr = kzalloc(sizeof(*ptr), gfp);
> > >  > ptr = kzalloc_obj(*ptr, gfp);
> > > ptr = kmalloc_array(count, sizeof(*ptr), gfp);
> > >  -> ptr = kmalloc_objs(*ptr, count, gfp);
> > > ptr = kcalloc(count, sizeof(*ptr), gfp);
> > >  -> ptr = kzalloc_objs(*ptr, count, gfp);
> > > 
> > > change log:
> > > [PATCH] Documentation: adopt new coding style of type-aware kmalloc-family
> > > 
> > > Update the documentation to reflect new type-aware kmalloc-family as
> > > suggested in commit 2932ba8d9c99 ("slab: Introduce kmalloc_obj() and family")
> > > 
> > > ptr = kmalloc(sizeof(*ptr), gfp);
> > >  -> ptr = kmalloc_obj(*ptr, gfp);
> > > 
> > > Signed-off-by: Manuel Ebner <manuelebner@mailbox.org>
> > 
> > Yeah.  Fix up the commit message and that could probably be merged
> > through the documentation tree. 
> 
> how do i fix the commit message?
>  what's even the issue?

I just meant that you should remove the stuff like "Would a patch like
this one make sense?"...

regards,
dan carpenter

