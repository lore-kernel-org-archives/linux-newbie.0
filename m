From: Felipe Dias <felipediassss@gmail.com>
Subject: ETH_P_ALL and tcp ports
Date: Sun, 2 Jun 2013 12:44:04 -0300
Message-ID: <CAJX4=r2hS2YsqktLHZsEzbMHGLjNDSgYvQPOmO288A5vw7udcQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=ZvI/DOVyAAkd5u5KV79k5oTIdkZPTIaODtr6p4AanBs=;
        b=dQxZpK810eq8WXyA9Vo5kJvNKpcUeXDuXATFC6Ahnzs57kRfkZYJq+94aLE5Cyp5Ax
         pE9TI8qLfWi6gfNjdCY/noZf1WqXcKwXsszgBToVpe9tg/HDKr7Kyh6XyJG9/hJZTFVz
         Pvau2G+IEGU5QbM8k/WNOYdzzLO5vXYqPa34rcEGCV2Ky4/ahfBn3yZ9t3hIUEIwvken
         FQQo96X92pF5Qjht5SSA1I4h/CISnsfeK1h8nex0Xug/MOupqK5RCB7hW2/0161gKtho
         88M41zD4XNEy/KIsFs2dQVCfhDqmsU3foLxn+cu+g+XXtoEl/VA8WfYV8Vf16jbe06Mo
         p5/A==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi, someone might try to tell me what I'm doing wrong, please?

I have a simple module and I registered one packet handler, in init function:
---
     pseudo_proto.type = htons(ETH_P_ALL);
     pseudo_proto.dev = NULL;
     pseudo_proto.func = packet_handler;
     dev_add_pack(&pseudo_proto);
---

My packet_handler, is a simple function just to print in dmesg info
about the packet, its check if protocol is TCP or UDP before.

The problem is with TCP headers. I'm trying to get tcp ports with:

ntohs(tcp_hdr(skb)->dest);

But always come strange ports numbers.

My question is: Are the TCP headers filled at this stage ?
Or I have to register another packet_handler with dev_add_pack() after
TCP code have done the heavy work?

Best regards,
Felipe
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
