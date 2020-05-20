From: Taeung Song <treeze.taeung@gmail.com>
Subject: Check for preemption only when returning from interrupt ?
Date: Wed, 20 May 2020 16:03:29 +0900
Message-ID: <55684262-1dab-503a-eb4a-f030b6fcc57e@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:cc:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=+1d30iaUYarJ7i40qLlZOOsct03fqsoXG+IjMhoBPTk=;
        b=ABLx9CFH0ip9DTBmXywDq/XPtr3JXLQZXUDW11WkMMsVMQdKwAKymDupiAxvt8OSkY
         cZZfAnZbw+Hl78u/j8bdunuOsOe2ElNn+pJ4f7Qk/i7PBnTV2r5+hr5dThcOp9dPZXGZ
         564eyn8MPM2CTXPwiYvIzzqmxBgxsSrudPSA7OfsdOa2we+gGCfwmvAkCJ1jbc/tC2ox
         Fyew8WwfkHG+gj+f175Bf8Qc0kXSjqBzV6Xh3NPYbN8a5OyrwRXdhySLy5r7iX8p1Swr
         ahzy23zNFPansPl0/Sv7Z6LJg/3GrVxDS8Wzr3mKkim7SuFhuo/rlObNydyQ8nqNIW+G
         HFDA==
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org
Cc: linux-x86_64@vger.kernel.org

Hi,

After reading arch/x86/entry/entry_64.S
I think preemption is checked
only when returning from interrupt (not exception like syscall)

Is is right ? (based on x86)

All scenario of checking for preemption in my opinion:
(1) check kernel preemption after interrupt
https://github.com/torvalds/linux/blob/master/arch/x86/entry/entry_64.S#L672

(2) check user preemption after interrupt
https://github.com/torvalds/linux/blob/master/arch/x86/entry/entry_64.S#L620
prepare_exit_to_usermode()
        -> exit_to_usermode_loop()
             -> if (cached_flags & _TIF_NEED_RESCHED)
                       schedule();

Thanks,
Taeung
