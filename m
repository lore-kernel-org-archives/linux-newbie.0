From: Joe Damato <ice799@gmail.com>
Subject: [PATCH 05/12] x86: Refactor pack_gate for gate_desc
Date: Fri, 24 Oct 2008 20:15:25 -0700
Message-ID: <a4c806abcf7a46c78aaff4e338fdbc1a06a56c88.1224903712.git.ice799@gmail.com>
References: <>
 <1224904532-9586-1-git-send-email-ice799@gmail.com>
 <52f8491fb5d55c0171840b01638ea6db0a98f3be.1224903712.git.ice799@gmail.com>
 <03269a2e8f455b431612a32e8cce048e98c75b27.1224903712.git.ice799@gmail.com>
 <4810cc08c12cd78612b53f9b52d7ba93a9b03fd0.1224903712.git.ice799@gmail.com>
 <a9cabc5cabdb5a10631e2a6dc330c54826f2b210.1224903712.git.ice799@gmail.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:from:to:cc:subject
         :date:message-id:x-mailer:in-reply-to:references:in-reply-to
         :references;
        bh=Eb60xuSL9nQkuFfPG4cLlkRtWOoaVPkbLZFAW4YZpiE=;
        b=bZnRSa9NG/R1xrCSk2eS1QHzS0rXmV5zK/ObEnCtwzlcEC6CQUpt6mJGvI50EYH+dk
         NdnKVNQEsLi3q8oQWhYuHGIpNhWop3SIUxdUrbQDBYW6fp3FYh3p1LXKo6iFVbXjgCha
         XqEWNB9U0MXbB2m1cvoUwSkSG0iAZ2WMMjXHI=
In-Reply-To: <a9cabc5cabdb5a10631e2a6dc330c54826f2b210.1224903712.git.ice799@gmail.com>
In-Reply-To: <52f8491fb5d55c0171840b01638ea6db0a98f3be.1224903712.git.ice799@gmail.com>
References: <52f8491fb5d55c0171840b01638ea6db0a98f3be.1224903712.git.ice799@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-x86_64@vger.kernel.org, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Joe Damato <ice799@gmail.com>

Rewrite pack_gate to use the newly add struct fields instead of bitmasks.

Signed-off-by: Joe Damato <ice799@gmail.com>
---
 include/asm-x86/desc.h |   11 ++++++++---
 1 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/include/asm-x86/desc.h b/include/asm-x86/desc.h
index f06adac..6b4f3e6 100644
--- a/include/asm-x86/desc.h
+++ b/include/asm-x86/desc.h
@@ -66,9 +66,14 @@ static inline void pack_gate(gate_desc *gate, unsigned char type,
 			     unsigned long base, unsigned dpl, unsigned flags,
 			     unsigned short seg)
 {
-	gate->a = (seg << 16) | (base & 0xffff);
-	gate->b = (base & 0xffff0000) |
-		  (((0x80 | type | (dpl << 5)) & 0xff) << 8);
+	gate->base0 = base & 0xffff;
+	gate->seg_sel = seg;
+	gate->reserved = 0;
+	gate->type = type;
+	gate->zero = 0;
+	gate->dpl = dpl;
+	gate->p = 1;
+	gate->base1 = (base >> 16) & 0xffff;
 }
 
 #endif
-- 
1.5.4.3

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
