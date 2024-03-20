Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AA43FB9E
	for <linux-newbie@vger.kernel.org>; Wed, 20 Mar 2024 11:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710933808; cv=none; b=kjO997EdOiJJusOPjbRSIqc163qIZzwpRSYwQ7L6uIjLynEK6HV98DusyMW/pBOO4YnmRWSZ+QNj+rcQu2/i7BzNR0Y0mjnaOw9/nCSCiD6oprCE+T4pHz1k2ispNd0NsNpF876HRBYHsGz42d5DKUjmPew8O98MfXdIV/Fulcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710933808; c=relaxed/simple;
	bh=SYqJpRmAY9fEIFxxgWzBoe/Wtb634xcYCD1kXzFBig4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=AQtpN53LAbZgsdWvZqOJ54WvwkD5CyT0Kjd3feoYPyWYtkUici86PpDdYC9Di44ehZW3CLzMyDs2ygM/m03xkpfC4szVD/qhefVwpjgrG6TJ0blC2hQE0W++SP2Zlmp+aiXGDcenlMC+L1nxCgvvSnCccYVlIXv1GxBo2BE8H4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eu0k2qcd; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eu0k2qcd"
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-56b9e5ed074so2142534a12.3
        for <linux-newbie@vger.kernel.org>; Wed, 20 Mar 2024 04:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710933804; x=1711538604; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=95JT0Rj/e5tz4thIUZKYY8uJBgXDk3F9pzk4Sysa6uI=;
        b=eu0k2qcdKgCVeWGwL3qcxumgYiiGPiFz/JJx3fAe1Sx3VPPdSBuADQR9BWGq4vsGOv
         w9RBcoyhTscq+9FlDMdwtR4fyOWzdHh2IT5aLsc1D9VmbM0TQP59whxEJwP5sDzOhnsf
         s3kY25/TdFhMjCvnxmIhKPCb4B/OFgzZn+6sUYncCbxTn3fGlkUIM/7M0qDLX57OEzdC
         b1ym1fqs5VqnQu1/GaSmVMskfv98dPPu7O0TFXivTt2d55btZcKfPeLbx1nt4s/nnRaK
         IEcVB3kNRMwz3j+wQrQCTYhZNeW5u+CKlcHS3+WAMd2i4EhXAgBMPYGY4hXpFyFOOvNt
         6XMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710933804; x=1711538604;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=95JT0Rj/e5tz4thIUZKYY8uJBgXDk3F9pzk4Sysa6uI=;
        b=n7fm+Vk7L++gvfBlhTfqXdG1SV83OoqFpgb/U1xCK2+4SogIHKUs1wIn8B8Ys1kXvp
         JI/a/2LipzGr063mQIPTyqE+iZQ2HIEohuvW598qr/QkXe/kuWIcWhOiQgo+h3pmrEig
         ab+RnZHWLR4+9k5+QV9ScZuTV9b666KdrdrEBh4m5H+RYrNcnKdrQWOhh7yLNDO0bDOy
         aMoTyP0xLiJiulAUt8MFzCtPglyCGYbbVn++GIUWgtzpSn64Xv7FF+/Tlmb4odIKhgS+
         xofU6o9AhTIrSnBXNu0ImMKHyQWn6vfqMjp7kztAe7NuiE2gMsZ4xq1DfMam9rk6jLAA
         rZBg==
X-Forwarded-Encrypted: i=1; AJvYcCUTjs2NStJljPvobBmkaZWyMAkxQPxpC0RQexHIWGQbsMSAzM9NfAmdWawM6gn8tkcQemz6ztLI5B1uF16KLF/EHVPD4KrO7Uvq9a3S
X-Gm-Message-State: AOJu0Yy+ZnW3GqZ0QuupkxmKqBSYr8XY2MK1k3HMTgKNahWcP+k/rHB6
	hJF7V5w9PCVrB49fiOy+Fehg+cpuBmGb3vQKm8d5axqo9yhTMC1rhWIXCn3X
X-Google-Smtp-Source: AGHT+IEjbceiNkCWQo9bJ9HYDApJYOS5JCTCZqT3fLZeSNRq5LANz3nFq7RWLkL19diEAZPrubiTYQ==
X-Received: by 2002:a05:6402:5408:b0:568:3378:8fd4 with SMTP id ev8-20020a056402540800b0056833788fd4mr1152980edb.11.1710933804277;
        Wed, 20 Mar 2024 04:23:24 -0700 (PDT)
Received: from ?IPV6:2a00:801:2fb:fc2c:dc73:8514:31ad:3? ([2a00:801:2fb:fc2c:dc73:8514:31ad:3])
        by smtp.gmail.com with ESMTPSA id cq28-20020a056402221c00b00568addda0d1sm5823558edb.45.2024.03.20.04.23.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Mar 2024 04:23:23 -0700 (PDT)
Message-ID: <ed80c3c7-a9ae-47a9-9a60-c531496caec7@gmail.com>
Date: Wed, 20 Mar 2024 12:24:42 +0100
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Hello
Content-Language: sv-SE, en-US
To: Jonathan Martin <workspace.public@icloud.com>,
 linux-newbie@vger.kernel.org
References: <D9574CC8-5147-47D8-A287-520C67092133@icloud.com>
From: Mikael Carlsson <mikael.m.carlsson@gmail.com>
In-Reply-To: <D9574CC8-5147-47D8-A287-520C67092133@icloud.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2024-03-18 03:00, Jonathan Martin wrote:
> Hello All;
> 
> I don’t know who is here or who is listening and I assume this is a semi-public archive.
> 
> I’m not really much of a newbie but I have let my excitement turn me into an idiot often enough to think that I am.
> 
> It seems prudent to introduce myself here for the sake of anyone’s email filters since as I may recall Linus mentioning many years ago that he’d blocked several domains to cut out worthless clutter. I can’t actively discourage anyone from this in my case due to line 2.
> 
> I am not dedicated to any subject and my expertise is probably not relevant, but I am a fan of c2 wiki and I expect similar conversations, though iCloud can’t seem to handle the message volume of many lists that I try to subscribe.
> 
> ~~~~~~
> 
> Thanks for being here!
> 
> ~~~~~~

Hi Jonathan! There is always someone listening on the web ;). Regarding 
icloud and big volume of messages, i suggest using an NNTP client like 
Thunderbird email client for example. Instead of using regular email you 
use news server.

You can read more here
https://subspace.kernel.org/subscribing.html#subscribing-via-nntp
and here
https://brennan.io/2021/05/05/kernel-mailing-lists-thunderbird-nntp/

____

Mikael Luxwarp Carlsson
