Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5B7F195980
	for <linux-newbie@vger.kernel.org>; Tue,  1 Oct 2024 06:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727763545; cv=none; b=Xuk2QgLrUcGJqbqbFnYstTkS0PxoVaaN92R1qRTE1DLb36hqxhn9U2VCP6eTs2kcWcPWX65J7pCPCLUMJljNEeNtnJnj07HfoMK7Ou6yQIdXIZQqdNjDsfIrZZly42Izb+bqyKHSjOxLRN5N9WSDI0wXellzYHgCtI+5uIj8RdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727763545; c=relaxed/simple;
	bh=hJHobSE/HbVEwimtpJKwcxKgD9gaAJ6cztbfHWRGMOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e4r4Qk7iZ4yObAjghp+tOYsqc0p51A5TPvNCzqwSrBJmE2t6JXwWjDPDGLf294h4IXTdNJxDkpWoj+/ZL+UyWLffX6Q1w2fOLCxGDU8Ns4EyiVBdhDizxISBmqZq2ZWVYsZIKHTI5ZoTQ+tDpKy5QdTDFmx0DMUn8r/ZzsAL65E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g5XFBhZ9; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g5XFBhZ9"
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a93a1cda54dso734841166b.2
        for <linux-newbie@vger.kernel.org>; Mon, 30 Sep 2024 23:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727763542; x=1728368342; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/ctoAmDk7LNkKFcl0YMXoPZhKLTE+VmlWlWPVTSw1CM=;
        b=g5XFBhZ92ZHy64hq7erBc4WKAwNuyIjvx//lOQr403a5cS7tlcnOE8pxx9XuFIjc6/
         +d+OdU3bQ5+SkzQ2yMkfHp6e5JRAQEf5Y/wcDPgC/9oump1gMdB1S4+z2tXZ+pqxK8AF
         OdxkLn1GMZ0SRVQoiPxXdfGCZpQkQnl42mGSsQYzn+F/qhEvyssHLztc3Vmd6n1XFQhb
         A2TJV5QIelxfgJtBn+gCvB6kynceLrD6vViLwxX7xVieatuhG1qxF0gjGWhj7NG2MHla
         gGCzdfsErnJSR8lllsdaegyZIILmsXY6mSpItmAI2rlIKWHKiPqtjfxYZNaRaGEYrGnc
         uaWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727763542; x=1728368342;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ctoAmDk7LNkKFcl0YMXoPZhKLTE+VmlWlWPVTSw1CM=;
        b=lRn86tqFkOPZwuM0V70u+fvOk1+/CLmHcy3fqJ2isfbf31Tah0tBv9njFM/US+g4Dj
         siH3kujWSaYB/pnFkSBKJRIuOYX6oi8qSghXW+1maUJXFhYHXwP2YAr/cw9haaq6dAdz
         XFX+ByhpGf2Q+hxHYJojr7jGL30JAyfUL/bfGgWxjyJF2A7XgAsTIMrregqpUTw+TZoz
         fvVwsL+qqJTfX2KjLFx/VEXdJuU/zMkD17UtX+uCPy3eqYIfC/3zI5cvOlFSrVOFSB/1
         XUWRbkaeSP0HUQ4lzeSC3qxNUq3N9T99paNwH/c/Tk5qvlJ303QrAqaBkecFgakYdCpg
         B0Hg==
X-Gm-Message-State: AOJu0YynBrBoMDrq4ZWPdKJ5E44hS3SRo0YRnUQiLyfHIQVu9rji/vRN
	MzetyfZZwZvFcpdniW8Zt97C4ckQdqq+EgUPIZ/eS6tKbKeZ9YU9iQEeEc3r
X-Google-Smtp-Source: AGHT+IFxSf8UOKk8iDzanO2lnZdw5RrgqQGSeut7Drki3gG8njCiwah7YtNEJjHA6ZoHXaKq12aiVA==
X-Received: by 2002:a17:907:7f88:b0:a91:1592:f5cf with SMTP id a640c23a62f3a-a93c4916df9mr1543883066b.15.1727763541655;
        Mon, 30 Sep 2024 23:19:01 -0700 (PDT)
Received: from gmail.com ([45.250.247.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93d4bd51f3sm515691266b.92.2024.09.30.23.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 23:19:01 -0700 (PDT)
Date: Tue, 1 Oct 2024 11:48:56 +0530
From: Brahmajit <brahmajit.xyz@gmail.com>
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: ville.syrjala@linux.intel.com
Subject: Re: Build failure with GCC 15 in
 drivers/gpu/drm/display/drm_dp_dual_mode_helper.c
Message-ID: <sstecaeritl7w2eu5swqmshi5vbvjpeaufwilqdg2jhtnsnpys@iggjwl7wmibo>
References: <6pg5msxdt2p3ycdamahhf2ojxtn3nnrilzlnqv7zwv6mfzx3gy@k24avbsop6yq>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <6pg5msxdt2p3ycdamahhf2ojxtn3nnrilzlnqv7zwv6mfzx3gy@k24avbsop6yq>

On 01.10.2024 11:45, Brahmajit wrote:
> While building the latest stable release with GCC 15 I'm getting an
> build error with (I'm guessing) the drm module. This is probably due to
> combination of GCC 15's introduction of a new warning
> -Wunterminated-string-initialization, -Werror and -Wextra
> 
> In the drivers/gpu/drm/display/drm_dp_dual_mode_helper.c file there is a
> code section on 163
> 
> static const char dp_dual_mode_hdmi_id[DP_DUAL_MODE_HDMI_ID_LEN] =
> 	"DP-HDMI ADAPTOR\x04";
> 
> Its from the is_hdmi_adaptor() function.
> I read a little about C strings and it seems like we are assigning more
> than 16 characters to the array dp_dual_mode_hdmi_id, and
> DP_DUAL_MODE_HDMI_ID_LEN is defined as 16.
> 
> I'm guessing this has something to do with how termination happens in
> char array vs char* and/or null termination

Some references I found:
- https://lore.kernel.org/linux-btrfs/5mnphkdvheudccjtiatrbjbkqtw54s2wkpeqevj3rqthdqlwyw@sjvn4wn52qki/
- https://gcc.gnu.org/bugzilla/show_bug.cgi?id=115185

-- 
Regards,
Brahmajit
