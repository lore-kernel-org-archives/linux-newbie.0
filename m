Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7896323A9
	for <linux-newbie@vger.kernel.org>; Fri, 31 Jan 2025 01:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738287089; cv=none; b=KkTBC2FGxjyFVJJazlow6deVzAo/M4OwiTbF4kn9MhkkUMM9TbK2jokpAyoK0q/g6zMMjpprYPF+9bxPoPnpqH5TRqLSYUHiyyYB/kl388B6NacD3A4iwhoDgib8a0KiOzeKftJb37VFjf6RZlSV6qm8vbP316lXrUIrH9V6p8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738287089; c=relaxed/simple;
	bh=iWGVUiJEkF6MjZSueX2y9ccuNJLbInvCf8TOM8XP4Mc=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=Xsj0IGLtM15ksm1TJrn6zAQmL8RwSMm2IadafMhiVh10Dltr2XIadvxZtHJLxj6uo2cq7ZsSxAwuZy7Ika5ov5Rrg4N7DCw6QIpYNc+I3lB8KvFMnPiU0VH4OCpfcgszQTjvCbbOtiucNAkwhSL22qvbVcu7ffvtAhbjLCxh6GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fmo08sj7; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fmo08sj7"
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43675b1155bso16670795e9.2
        for <linux-newbie@vger.kernel.org>; Thu, 30 Jan 2025 17:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738287085; x=1738891885; darn=vger.kernel.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xqvyy9t8RSSzqWQlht0DAO/ukrahQCZhZ9lxmjqVMcY=;
        b=fmo08sj7Xn/6IPJuvMHLvU6XiLeHolKhje4NXTHb2YlqXPylTIIiJP/dI7lTP553uq
         WDrqv5gjb7EHL8t9g/SH86k4F/yLGoWWsNy7e25+cfhE2mCJ7+oVbIK64FioaWWVRYSv
         falW0knBOQy0uImTS5tPmLChCUwhZAOd0C5meQafMCYXyMpeWu1EF/fQmiL6TePDnPNn
         2PxjvoPI/GQpoBvpRfKeJv5KMHVmIDP/WwgDr1tdjWUY99zipQX1tG3rOaAl5+CR2vLF
         uCDn2cX/85PhBIMHEThfersdJsz3SHDccumQ88Z1aqSF1S8cvjGJiSU8WlUfWoay3VWN
         hKwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738287085; x=1738891885;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Xqvyy9t8RSSzqWQlht0DAO/ukrahQCZhZ9lxmjqVMcY=;
        b=mC3NqKPXNFd0BPUGLmbcVLEtnG0+I9UkV59z5sFwPmXPAEgJcieYVzeHUAwhncsAvX
         Xazq1xPCv63EGaVy1k0ASk6RSbcT+4rYLgWEVdAB0Q9d7utoocIeeMydPclKdE+raRNA
         zj18SJyX8Thyux1N1kYg/kJ98k5GAkErw3ycAMs8OJgr/D8KYvixXonZeEOY6rsmfWK7
         /1Ea6LsZbAzlA8wcbUimYSbDjaLhi5lLuryI8mOpjUZ0xiN4IDQA6BHNr+z8wOPB8mc/
         2fXoa96wd/AO10iC7xmm0iv3QNlo/3tw80uU1gZylDiiHmW6HuXnc+55Otnjq3L0rQno
         DNmQ==
X-Gm-Message-State: AOJu0YzgfLKAHs5SdeUE2V4l7Du8sHGc41aS68kBtcLvrbIYfsLiFBm+
	P/kq9E7ogTFH4X8R0zOSBIWeCwjd8IsRDmtgTB0uMnkAka5nCUHGI6tw44UgKoI=
X-Gm-Gg: ASbGncuxZFgjZNcC9DDU0MzgaLpJIfb5/Icf0O3kpISBp5WpYH8OzA0YLPpQ9QjB5Cn
	D2ZnTgzmdGNMCxh3fAuDJeFVCBTaOeDPRcpwpEakX3WvGnueMxuicMrqKUZNNWbJmp1XkROtS3C
	q5f6uE9bGKQnD665jVWkNScZrpihT9g9emuWOO7SKmWjRntqtx1Swyyc8qHVmWF6BRg3BpeZde1
	r7U58aF42WRZdCeKVqtscR28gsD/iOQ+vKEghkuJ9cyDrhRE9aibddKHGEbCiNICeeKUBHkmm8P
	kEDGNGCl5NQo9xd3itg/v/wnnPHqyVWTWADLiFIIlCP8C6JdzPqgR4RTng7GRw==
X-Google-Smtp-Source: AGHT+IGzic2nNZsJF1msHZCTMngfTUjEsNTPHY3FdZaiWAPzD1HupwxH4vzy7Zwy1Kv5kWamP91SMQ==
X-Received: by 2002:a05:600c:1f10:b0:435:192:63fb with SMTP id 5b1f17b1804b1-438dc3ae816mr76563775e9.3.1738287084588;
        Thu, 30 Jan 2025 17:31:24 -0800 (PST)
Received: from ?IPV6:2001:1670:18:24b6:4013:89ec:8349:134f? ([2001:1670:18:24b6:4013:89ec:8349:134f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c1cf571sm3310462f8f.82.2025.01.30.17.31.23
        for <linux-newbie@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2025 17:31:24 -0800 (PST)
Message-ID: <5583de8f-dc9f-4555-b480-fbc05247554e@gmail.com>
Date: Fri, 31 Jan 2025 05:31:22 +0400
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: linux-newbie@vger.kernel.org
Content-Language: en-US
From: Abdullah Al Sharji <asharji1828@gmail.com>
Subject: Issue with hash_for_each_possible() in Kernel Hashtable
 Implementation
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm developing a Linux kernel feature that tracks per-process network 
bandwidth usage using a hashtable (DEFINE_HASHTABLE()). My function logs 
network activity per PID using the struct sock structure and associates 
it with incoming and outgoing packet statistics.

The macro hash_for_each_possible has an error: expression must have a 
constant valueC/C++(28)

"pointer type mismatch in container_of()"); ((typeof(*(entry)) *)(__mptr 
-__builtin_offsetof(typeof(*(entry)), hlist))); }) :((void*)0); }))


#include<linux/net_bandwidth.h>
DEFINE_HASHTABLE(pid_bw_table, 8);
DEFINE_SPINLOCK(pid_bw_lock);
voidpid_bw_entry(structsock*sk, u64rx, u64tx)
{
if(!sk->sk_socket||!sk->sk_socket->file)
return;
structpid_bw_entry*entry;
pid_tsk_pid=sk->sk_socket->file->f_owner.pid;
spin_lock(&pid_bw_lock);
hash_for_each_possible(pid_bw_table, entry, hlist, sk_pid) {
if(entry->pid==sk_pid) {
entry->rx_bytes+=rx;
entry->tx_bytes+=tx;
spin_unlock(&pid_bw_lock);
return;
}
}
entry=kmalloc(sizeof(structpid_bw_entry), GFP_KERNEL);
if(!entry) {
spin_unlock(&pid_bw_lock);
return;
}
entry->pid=sk_pid;
strncpy(entry->comm, current->comm, sizeof(entry->comm));
entry->rx_bytes=rx;
entry->tx_bytes=tx;
hash_add(pid_bw_table, &entry->hlist, (unsignedlong)sk_pid);
spin_unlock(&pid_bw_lock);
}
This is my header file:
#ifndef_LINUX_NET_BANDWIDTH_H
#define_LINUX_NET_BANDWIDTH_H
#include<linux/types.h>
#include<linux/spinlock.h>
#include<linux/hashtable.h>
#include<linux/slab.h>
#include<linux/file.h>
#include<linux/skbuff.h>
#include<net/sock.h>
structpid_bw_entry{
pid_tpid;
charcomm[16];
u64rx_bytes;
u64tx_bytes;
structhlist_nodehlist;
};
externstructhlist_headpid_bw_table[1<<8];
externspinlock_tpid_bw_lock;
voidpid_bw_entry(structsock*sk, u64rx, u64tx);
#endif/* _LINUX_NET_BANDWIDTH_H */
