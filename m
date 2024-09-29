Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA7433F6
	for <linux-newbie@vger.kernel.org>; Sun, 29 Sep 2024 13:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727618062; cv=none; b=QEpU57OA2Y88yMIEx+P8Y+OlajvUt905YfEHB9oSxP5T5qZdPZa0xllMhJfbH7Ag4yKj9/vQvqPBaXehEvvGIZ8rjQNfqmQhQ087FV9ghYfMQt0LPrM7et+/8gytfDnwRTxw+r2XU6buRK3d+vw/YN8Yk7Oh2vjOir8KiwAZSSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727618062; c=relaxed/simple;
	bh=6+h+wypUehY1V331DOpHvlIkTxgwJPzkKFLbJ9Liv1M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=csgbzap9SVdsw9oanDwtYGOqwSi/IDpLM9Dx0y3C56ZmMoKSvU2jJbpB+/FhAAH6Hb1Pej+M5OjvwcwLvbI/EBhLnq0yiK2UMp8DRQlWaNlKhXupEpxw+91c9N/B+NDPWrWtX+rKODBPJKuS+2osXABwr9poNwYvx+otArFldJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ursm0/Re; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ursm0/Re"
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a8d3e662791so277660466b.1
        for <linux-newbie@vger.kernel.org>; Sun, 29 Sep 2024 06:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727618059; x=1728222859; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4uvWVmMOrRt0zn0L0vnlwFXHX9V6BceDS8dhHuSUCBk=;
        b=Ursm0/RepwU4PK6AxkNl2oB8q8NFZUfapqf23RktOYCRgRhemzbvYiKAhKacG7ooOQ
         x2jh/UPoGZgBmaPswr31Ec+oNkuz/DAm+VylxHExR23+1mzXOAF6jm46fZdEUT4bjCwH
         ujW0F2XFOTr09ZnS8LtU2Il4PxThhXUoGqqswuv007rc2A2ZKwKf83bKJHGZkUYVaO+a
         FxbCr/I34hV40p1l/mVGBYOeO3k7uYYUQgvWQFrrXS1osS5xe3por5HtzS3pMafdx+wY
         JkYbbE8sMKhS6Do1Bap9MZzMJshl8juA1zwJng77+PtBjRbcAtnl0uxU8izGV7XekvH9
         pwAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727618059; x=1728222859;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4uvWVmMOrRt0zn0L0vnlwFXHX9V6BceDS8dhHuSUCBk=;
        b=TgRXKfZDPZ70yNEdr1sDa+BJ4Eu+6Owv8v8lTNjIKZQEEAyi5zNFHD49E50b4ZXGGh
         XBZJ7+R8pBlLh13kdQBD5rquWZ3hxqz5HDaAhqIGym3DUrmdK25mU0T/AcElNyMeoEjC
         TEIUzsc4hgUIawjxKzmD7OMorPl92Tqb5XAdSZ/5vUAnsSH6NcU70wce87gaQdwIuRjy
         R0lNkMu4jJDzvte1JG1xksLD3H4cEVa/G917xT/pZHh3XvyK7jSK/Sp08N/CobxlxUZJ
         KhL53cwHQp3/VsUC2tPsAN8SUSQnKWZDkYG5ZuXrpArQ6RZemJRfTjguV7e96jaIQDH1
         f9kA==
X-Gm-Message-State: AOJu0Yx9WieHNM+CS+RTqL1+QhrOhWfRvrpEs4RZNlQJSVfyYIAPXhlT
	PYd//o+q+z/czen/+ZMgBHVQpEqj6BQR0IOltFhIlbxO2Q17leAeVIwmfuNO
X-Google-Smtp-Source: AGHT+IFiHQf++vxiVHB0VO8/Fq08v9MOz01ns1RfdQD2pDWkUPjHPNV/bvjbE9CMmPvtscHjvpDQ5Q==
X-Received: by 2002:a05:6402:34c4:b0:5c8:8d5e:14e1 with SMTP id 4fb4d7f45d1cf-5c88d5e1598mr6974716a12.15.1727618058888;
        Sun, 29 Sep 2024 06:54:18 -0700 (PDT)
Received: from gmail.com ([45.250.247.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c27c5c73sm378489966b.64.2024.09.29.06.54.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Sep 2024 06:54:18 -0700 (PDT)
Date: Sun, 29 Sep 2024 19:24:12 +0530
From: Brahmajit <brahmajit.xyz@gmail.com>
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: alina_yu@richtek.com
Subject: value overwrite in rtq2208-regulator.c: Overwriting previous write
 to desc->fixed_uV with value from init_data->constraints.min_uV
Message-ID: <dkg6c2stonolj2ffcvybyu3lztg74hpqdu3twfx2oyjutxyaes@jbwefoqlxrog>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Alina,

In rtq2208-regulator.c I came across this code segment

if (!ret) {
	if (fixed_uV != init_data->constraints.min_uV ||
		fixed_uV != init_data->constraints.max_uV)
		return -EINVAL;
	desc->n_voltages = 1;
	desc->fixed_uV = fixed_uV;
	desc->fixed_uV = init_data->constraints.min_uV;
	desc->ops = &rtq2208_regulator_ldo_fix_ops;
} else {
	desc->n_voltages = ARRAY_SIZE(rtq2208_ldo_volt_table);
	desc->volt_table = rtq2208_ldo_volt_table;
	desc->ops = &rtq2208_regulator_ldo_adj_ops;
}

As you can see we are setting the value of desc->fixed_uV twice. Is this
intentional? Because it looks from commit af1296d15d890 (regulator:
rtq2208: Add fixed LDO VOUT property and check that matches the
constraints) we only need desc->fixed_uV = fixed_uV. Isn't the second
assignment (desc->fixed_uV = init_data->constraints.min_uV) making the
previous one (desc->fixed_uV = fixed_uV) obsolete?

I might be wrong but it seems like it should be something like

--- a/drivers/regulator/rtq2208-regulator.c
+++ b/drivers/regulator/rtq2208-regulator.c
@@ -384,7 +384,6 @@ static int rtq2208_of_get_ldo_dvs_ability(struct device *dev)
 				return -EINVAL;
 			desc->n_voltages = 1;
 			desc->fixed_uV = fixed_uV;
-			desc->fixed_uV = init_data->constraints.min_uV;
 			desc->ops = &rtq2208_regulator_ldo_fix_ops;
 		} else {
 			desc->n_voltages = ARRAY_SIZE(rtq2208_ldo_volt_table);

What do you think? Please feel free to correct me if I'm wrong.

Note: This is my first time communicating on the mailing list, please
excuse if I broken any of the mailing list etiquette.

-- 
Regards,
listout
