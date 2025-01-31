Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0742512B71
	for <linux-newbie@vger.kernel.org>; Fri, 31 Jan 2025 01:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738287359; cv=none; b=OBiAxHDcFdBevCCsDgtarNC+fi3el7B6t9ayAHGvzbMKwKbW6CW5wdPMf6sjM55EaW8P1RZKqWsEL+YCjhCu4R9UUmcnaLDnqRKY2btG1mYFppCCzuZWL/6nNqM6zUpcmT/gi8lR+W08pbBZlqymp3Dzg6UPx9SzXYg0e7aXGdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738287359; c=relaxed/simple;
	bh=WwMUBiQ+bSCzT235OMuCN43sMSmdd1YVJnt8JEjGN3o=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=F4cNghMx/AZMv1n0cfgfYOW/oczAadgJXp97K5Y8I3FFw3bVefOhSDJsiyby24CilbYVF5J6WGxCNTyHnZShZS7cHs230YtckE/WhfFKxZMSwvNPiYCGo1PjMl4npDCT/TUiLtfSJ0rqYOuyE7WpaXSo/0z2e8gMcufUCULcNMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c/BzY31+; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c/BzY31+"
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3862d6d5765so858925f8f.3
        for <linux-newbie@vger.kernel.org>; Thu, 30 Jan 2025 17:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738287356; x=1738892156; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q4VLvLg7d8oypA0SMOTRoVnSaNrMVgKTNzahQHxL44o=;
        b=c/BzY31+DJj/+SL0kNOtCND52w2x/S11bwMVssWnECnxn7AKACbDth6ntiq0utg1qd
         9DrmyPBeI+3xud3yUqaANXV+z5ZHnJaFl5PHgLSlZfG+jYqbCyAr+lmsG/wPHj9poe2s
         47F1uYo7HIvNvz1DXSZ3+OQODs/h9CbyUJiXCwLT/TSYHWym7U8oO+rFqYRSdThSPZLb
         09V6dS2O21Dw9cJ8TCLk8z22pAPcRrT24lN5MxcizenrJulM2Nc+q2u3DKIV5RmpadLY
         DYp8hZ8ZT3R7OVYF+tg+m9CkX9fHbpN1VbyGe3GWH5Y8uWjjAW4nPVG9s9EJI1O57qfW
         YRfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738287356; x=1738892156;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q4VLvLg7d8oypA0SMOTRoVnSaNrMVgKTNzahQHxL44o=;
        b=T9iDGaEYdtQMOY8BfsY6dL2o779DzrYggs+VDMvLElW7cwlkb3oxhGHpSV3cOzYdcx
         o+Q9F+fJuqv2iW2amfUA+qRkHXOzPDEOfM+XGVhsmRi25V9p3wJOJOoR3aMFxFIj+hD+
         1oHblM2OY4v4xzbiK5fxOy8U5s7yzA2Rabw9OwYlbPGojyusjxAx0O+N3d4BByoCqfZX
         ZG7HwOhUNt1pi2JtXoeXNvi/NBe9dUEUX0VxEeq/1YTzFB7m5GPTgtu+W+dnNbulB9uQ
         q2nrp1gzV34gBsYj1AOg47gNzNBL47SVHWwsh0Cc+ca6hOamX5rTZtAo4YFKPYSgpGm9
         SSBw==
X-Gm-Message-State: AOJu0YyF3+r7XJAGmbHANe8OXRLdEIB0M/3JE0HnAy/OmV9IWEOC5wY0
	iXATRK+jF+YeZh4s2S2I2atktyqqIAWotKUsSBnRqHK+i8+Fjr6k/1IGxwwDCtM=
X-Gm-Gg: ASbGncubT/CoPZ5E3M7waHgM+1iPKJdIOm8HVW3RamEIu/LuDfe3uwJnA+uhJ/sv3hi
	pLs8CDkvx+JeG2m6XBQkKglSy7Rs4zZLYhjRXe/l7VULM6WA7xeTQJboDEGOrqHs0XNhTAsbMwD
	pNbkhNK3U3G6dOvJINr4JfiRaYeK5CM7FgXvsBA2aWl/6aUT8y+bXClR/UF5Z5simqBNg38Gim8
	bfHsY+XBo5VX60jJHlrgrUV5/hEKwrqWxpC0jH/iliTtCp8ashwucPjFdHsgSjoGDyBdRb4HrhS
	2CwluiFsFC4MvphSH0KMQKMJzfgayb+MVD+W+/F0siglrKW72iLRV9rpuyh9bA==
X-Google-Smtp-Source: AGHT+IEktN4jFF3iFQAK5WoR3RbiFqhSaLsQmAVIQG/niHTBaPMy+15MW2FdnUSETMDmJiVHIPx4Wg==
X-Received: by 2002:a05:6000:1865:b0:386:1cf9:b993 with SMTP id ffacd0b85a97d-38c51974311mr7680033f8f.26.1738287355544;
        Thu, 30 Jan 2025 17:35:55 -0800 (PST)
Received: from ?IPV6:2001:1670:18:24b6:4013:89ec:8349:134f? ([2001:1670:18:24b6:4013:89ec:8349:134f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c1cf831sm3463654f8f.90.2025.01.30.17.35.54
        for <linux-newbie@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2025 17:35:54 -0800 (PST)
Message-ID: <95fc9225-a496-46d6-82d7-241fec78ac99@gmail.com>
Date: Fri, 31 Jan 2025 05:35:53 +0400
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue with hash_for_each_possible() in Kernel Hashtable
 Implementation
From: Abdullah Al Sharji <asharji1828@gmail.com>
To: linux-newbie@vger.kernel.org
References: <5583de8f-dc9f-4555-b480-fbc05247554e@gmail.com>
Content-Language: en-US
In-Reply-To: <5583de8f-dc9f-4555-b480-fbc05247554e@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Im not very sure what the error is related to, I tried a whole number of 
things, such as changing the arguments and their types. However, I 
really don't know what why I keep getting this error. I'd appreciate any 
direction.

On 1/31/25 05:31, Abdullah Al Sharji wrote:
> I'm developing a Linux kernel feature that tracks per-process network 
> bandwidth usage using a hashtable (DEFINE_HASHTABLE()). My function 
> logs network activity per PID using the struct sock structure and 
> associates it with incoming and outgoing packet statistics.
>
> The macro hash_for_each_possible has an error: expression must have a 
> constant valueC/C++(28)
>
> "pointer type mismatch in container_of()"); ((typeof(*(entry)) 
> *)(__mptr -__builtin_offsetof(typeof(*(entry)), hlist))); }) 
> :((void*)0); }))
>
>
> #include<linux/net_bandwidth.h>
> DEFINE_HASHTABLE(pid_bw_table, 8);
> DEFINE_SPINLOCK(pid_bw_lock);
> voidpid_bw_entry(structsock*sk, u64rx, u64tx)
> {
> if(!sk->sk_socket||!sk->sk_socket->file)
> return;
> structpid_bw_entry*entry;
> pid_tsk_pid=sk->sk_socket->file->f_owner.pid;
> spin_lock(&pid_bw_lock);
> hash_for_each_possible(pid_bw_table, entry, hlist, sk_pid) {
> if(entry->pid==sk_pid) {
> entry->rx_bytes+=rx;
> entry->tx_bytes+=tx;
> spin_unlock(&pid_bw_lock);
> return;
> }
> }
> entry=kmalloc(sizeof(structpid_bw_entry), GFP_KERNEL);
> if(!entry) {
> spin_unlock(&pid_bw_lock);
> return;
> }
> entry->pid=sk_pid;
> strncpy(entry->comm, current->comm, sizeof(entry->comm));
> entry->rx_bytes=rx;
> entry->tx_bytes=tx;
> hash_add(pid_bw_table, &entry->hlist, (unsignedlong)sk_pid);
> spin_unlock(&pid_bw_lock);
> }
> This is my header file:
> #ifndef_LINUX_NET_BANDWIDTH_H
> #define_LINUX_NET_BANDWIDTH_H
> #include<linux/types.h>
> #include<linux/spinlock.h>
> #include<linux/hashtable.h>
> #include<linux/slab.h>
> #include<linux/file.h>
> #include<linux/skbuff.h>
> #include<net/sock.h>
> structpid_bw_entry{
> pid_tpid;
> charcomm[16];
> u64rx_bytes;
> u64tx_bytes;
> structhlist_nodehlist;
> };
> externstructhlist_headpid_bw_table[1<<8];
> externspinlock_tpid_bw_lock;
> voidpid_bw_entry(structsock*sk, u64rx, u64tx);
> #endif/* _LINUX_NET_BANDWIDTH_H */
