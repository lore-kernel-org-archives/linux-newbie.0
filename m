Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC78224F0
	for <linux-newbie@vger.kernel.org>; Wed, 18 Sep 2024 20:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726690984; cv=none; b=d08xWcKnNdKvTiDpz4Q4CS7CrZcmTVUmucjjXB5DI+E8b3IOISQowC69Jbpde1kuIGL/5udkcqB6J3IuJvBa7+X68asMhpDwpeNfCvKJ6sZiKBePUKo8m84/gZZUPkb7uqK3vTG+472rNoJe+xDabN2P0b0AgUZPXc6y4xjsMjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726690984; c=relaxed/simple;
	bh=4gvyJ3q9Jiv+zKGsmzofOR1qKPC8Pru2G3pgu6LH86M=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=q4RGYjiPZd2ZV++kEA/OMRWknh7OcfiDX6re6GOR2AZGckJfkJotUiF0If8mk4UziPLMdPOS1uCBo7wZiwdsiOgh6PQZ+JoVC0X7WJA16MJy3QfrPYlVYVC6lbwV1NzMVWDKnt/cHhF48bdCK3Zz92buBcM+HsTZaIZpIzVgecI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CO2mcJ2b; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CO2mcJ2b"
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-6ddca648c26so8803497b3.1
        for <linux-newbie@vger.kernel.org>; Wed, 18 Sep 2024 13:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726690981; x=1727295781; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/K55K6pic+y9YocqQGfeI4gmt8lhFpVFtJUUzSXWk54=;
        b=CO2mcJ2bIPszuOQQqqwPl08F+pQDqkWJPL3UcvnonyM4ViMbXKZvE+IXWx5PofcTwC
         8Z0ieeJuDrj4YKFXWHkGTtBwegq2dfc9jeqJCYIThsXz1CKYvrk8klaoUO9A1ieKETBZ
         8nz1RjdUZsnLbPCobi75QEzdOFwSABqQUnEnsIs6Y40Pw4yfciN6oXWjDbR1J9LVR63E
         OWay7SnCwEyxWCsEcI79MWMEHO0L6hCxFCH+wFjwoP/byp3Ytp9TXjvKR9/5Fcr3cA7+
         NPHQNnPTqSkdT56Z97rNLgMZQK423cHIBK0C3P8aIMiuRuJ0xLBzcC/Sv6wL9cAMKDFn
         ZpFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726690981; x=1727295781;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/K55K6pic+y9YocqQGfeI4gmt8lhFpVFtJUUzSXWk54=;
        b=apzlqT+joZpc6n2oNwMFT+kiEfdzEE3/g+Yobz/CJRG8d/DQxneCtVYF3eMQLQA65j
         ui74QTkP4eZ5lOOqzxwxeZlGEgJcMZ4n1gZN74l/QWc6oTcpQKsypy7HlURwJ+WPlVIv
         OTM+YLT9YzIwA0382J8cakZxQZzCb6G2bipcDPuAqgDl/OlzpRb3LyXQewyGOr+LQHyp
         PjIxvuS/kUl0h5RXCMcaoS/gQto2dIlixwsxDxUDfjzgHec/AfV2kbR1mAGvWUtdh64/
         66YuiNuDRu87UnMu1C4zrdDnTZyLq9wCtjUfOUWUJx3/7UMro+eGDKwKUocloHx3Uwgy
         s36Q==
X-Gm-Message-State: AOJu0YxIaOxAFfMvQkPqhWwlnzMp5eKdWOIWeTVmQXtw2jOsloG2QPN4
	y+a8Lpm/skKTeCXL8eee5OtTPFXN+qNgtLxRXaeEMEd7BhSnY4MLEd4sU8o4yMMmd4WV8RtuVbp
	CyxM398svx8KGNT5Ju98P10fckMGoiDjx
X-Google-Smtp-Source: AGHT+IFPvoc6SO62XiwUuCgCbO9SOiwKheHP/O7CgIoJQPskIKm8a8sB1Brw55Tnxz6jKmHtjFwYNByW7k9Mdro17zM=
X-Received: by 2002:a05:690c:6283:b0:64b:1eb2:3dd4 with SMTP id
 00721157ae682-6de097b0846mr8932617b3.8.1726690981476; Wed, 18 Sep 2024
 13:23:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Greg Dowd <dowdgreg@gmail.com>
Date: Wed, 18 Sep 2024 13:22:50 -0700
Message-ID: <CADVJWLVr7PwCXYZQDipbUjr5ngPmzTO5r5Aq4HsiKkPx6ak3fw@mail.gmail.com>
Subject: Question on timestamping
To: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hello all,
I had a question regarding kernel timestamping.  I see definitions for
SO_TIMESTAMPING_NEW in networking options to allow use of time
structures containing 64bit timestamps.  However, I don't see any way
for skbuff timestamps to pass around structures with 64 bits as the
skb_shared_hwstamps use a typedef ktime_t which stacks the seconds and
nanoseconds into a single 64bit value.
I am not sure who maintains this section of the code.  Any ideas?

thanks...Greg
