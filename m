Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E4E81211
	for <linux-newbie@vger.kernel.org>; Mon,  6 May 2024 14:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715005104; cv=none; b=g1rjyhHXSqwSTUH6y42DbRK6COUuLcqEXjH6w6PKItyavwyOZOA3INF+NY8+SGOAkX2pm7AsypTuSiMfjK4F69j4Bu1W2fLpks/YucAVPZ1F7x7sN2wP2caiCXStQIg/tQnf5cd2Q3GsY2DyBvd32TN30HAMEC7pGDFEyumzygU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715005104; c=relaxed/simple;
	bh=Ed1tr8ujJxE27vZ/jzaLdFB2+ZWlJ1+f7kjbzc7vC5o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pNmPUlZtnbmc7396fwEYkfN0MVA0AN7OPb/t1YX2pZ6NivVsR8yQv6ym5NidihPEt+RR25anv+SavX1sz2Zo2sGjL06nBshfafbu+P/mMSqe+/HYEzN0eJ/5O1dPN8rX0acCDAzocBSel37H++07ZMyscnYgpTLe+AXk8xk3fqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=marliere.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=marliere.net header.i=@marliere.net header.b=BXyou2xi; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=marliere.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marliere.net header.i=@marliere.net header.b="BXyou2xi"
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1ee38966529so3687595ad.1
        for <linux-newbie@vger.kernel.org>; Mon, 06 May 2024 07:18:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715005102; x=1715609902;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CAMDGednlmXEhIPxtA8GRYXuC+x7G/PNkFh+M0Xe2GM=;
        b=Sd47o5lmrGOGX4r6lqXycgiol+6+D2SEV48+GKsJiNJ2c97FIfg47CqSEqKWRb+6uT
         q9PUIdFlXVkJaFLmke8aZeqzbeVYQNPaaJJoYzuZkycRlDMA5lZsiVuwTldz55Hrrl+f
         a5vtKmTrHymJ0VacCk2hYNQBSpwLfinUgWiOxQXx1aOp7DE689trscrdGtj/DxsK2OhC
         18tooeHCNWHE+Yrtq/9lCafC8PQe1lcOM+NJvf+/tAvnlpNssCgyLuxUzf6VXU9fwNJj
         hyLWTZa/54GDkdyPGE5T8lGUhjbRibbiQVpiKNdBHmJp7Wf4UqWf4onWoL0mkK2yQwMB
         B5jA==
X-Gm-Message-State: AOJu0Yw65/XeK1/rYy35hMUClUZ9phF0E4wH7Ixzc3y93tPOQ0OFv74N
	i1ULtXbqIppPx0x5rIKgYXlVfBQDu3IBk7uSOLh7CdezJMWNMOJN
X-Google-Smtp-Source: AGHT+IEoa2/o9TiwMlC4j6/BMEkW7XTQNBqFomkjuJTA3GU45Oh1N1QLOSzm4quKVxMjlJb/QkN37w==
X-Received: by 2002:a17:903:1d0:b0:1ed:3c6d:7392 with SMTP id e16-20020a17090301d000b001ed3c6d7392mr13243461plh.8.1715005102195;
        Mon, 06 May 2024 07:18:22 -0700 (PDT)
Received: from mail.marliere.net (marliere.net. [24.199.118.162])
        by smtp.gmail.com with ESMTPSA id x13-20020a170902ec8d00b001ecf6d3edb5sm8345289plg.241.2024.05.06.07.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 07:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=marliere.net; s=2024;
	t=1715005100; bh=Ed1tr8ujJxE27vZ/jzaLdFB2+ZWlJ1+f7kjbzc7vC5o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BXyou2xis4bjAiQS4SDzs4nPMEFcTJcoYXVH7ahXB9Enh7OR0SUTgRbomEe0+CoIf
	 kBjekEKs4poKFca63naWJk7xKq1fu9byBjpafrnHXybjc2Q+9M7QNva8yPza2h1/7T
	 5tN3eTsiVkxOygv0KK0U8XX3vjBvU+fbuMV4SDd2up3q2d4HRvgtg7xAAabOwFLdn6
	 ZlkdVkY8TYpvo12LdJW3myswJk2Zh/5Ee2nAOMVU/ECy+PMJsEjViEjDQfHulJSDfw
	 pUu4kmKMcUUnMv5eC3uxncew1L+zCXF9ZBvDp8oU24wsXLVjGdIo8iI7+1mBY9+uYY
	 +DXISrJupv/rg==
Date: Mon, 6 May 2024 11:18:15 -0300
From: "Ricardo B. Marliere" <ricardo@marliere.net>
To: Carson <crange76@gmail.com>
Cc: linux-newbie@vger.kernel.org
Subject: Re: What subsystem group handles hid devices?
Message-ID: <32da4e38-ca87-47b7-ad56-eb4d2e0e8ddf@marliere.net>
References: <4874429.OV4Wx5bFTl@mythra>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4874429.OV4Wx5bFTl@mythra>

Hi Carson,

On  1 May 16:55, Carson wrote:
> Hi, I'm looking to write a device driver for a gamecube controller adapter. 
> However there are 0 results when i search "hid" or "input" on the mailing 
> list. Thanks

Use this one: https://lore.kernel.org/linux-input/

> 
> http://vger.kernel.org/vger-lists.html

Also this: https://subspace.kernel.org/lists.linux.dev.html

Best regards,
-	Ricardo.



> 
> 
> 
