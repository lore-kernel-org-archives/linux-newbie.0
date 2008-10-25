From: Joe Damato <ice799@gmail.com>
Subject: [PATCH 01/12] x86: Cleanup x86 descriptors, remove a/b fields from structs
Date: Fri, 24 Oct 2008 20:15:21 -0700
Message-ID: <52f8491fb5d55c0171840b01638ea6db0a98f3be.1224903712.git.ice799@gmail.com>
References: <>
 <1224904532-9586-1-git-send-email-ice799@gmail.com>
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753489AbYJYDat@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:from:to:cc:subject
         :date:message-id:x-mailer:in-reply-to:references;
        bh=1VhsyFaLp7QeIVQob1X9uFMThBj9Ni8jwuh3EqWMM5I=;
        b=HAo7rhob5S7nEezveenbgHzGXrpDvHUd+iHKtZT86IL07Ica8jaYY420tLJn70LhSt
         tlqD2RxU4tM8LpVtltzKisLHE1m733RBoRtOk34lgHwpN1n3m+aSIBFnVOmeKjgN2GoI
         IALrXUrPJbPlmKo1f1TAcd8s2GGGVxastUr6A=
In-Reply-To: <1224904532-9586-1-git-send-email-ice799@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-x86_64@vger.kernel.org, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Joe Damato <ice799@gmail.com>

Split the single descriptor struct into an IDT struct and a struct for ldt/gdt/tss. This was done because the fields in IDTs are not the same or in the same order as ldt/gdt/tss descriptors. More meaningful field names were added and the a/b fields were removed.

Signed-off-by: Joe Damato <ice799@gmail.com>
---
 include/asm-x86/desc_defs.h |   32 +++++++++++++-------------------
 1 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/include/asm-x86/desc_defs.h b/include/asm-x86/desc_defs.h
index b881db6..68abda4 100644
--- a/include/asm-x86/desc_defs.h
+++ b/include/asm-x86/desc_defs.h
@@ -11,27 +11,21 @@
 
 #include <linux/types.h>
 
-/*
- * FIXME: Acessing the desc_struct through its fields is more elegant,
- * and should be the one valid thing to do. However, a lot of open code
- * still touches the a and b acessors, and doing this allow us to do it
- * incrementally. We keep the signature as a struct, rather than an union,
- * so we can get rid of it transparently in the future -- glommer
- */
+/* 8 byte idt gate descriptor */
+struct gate_struct {
+	u16 base0;
+	u16 seg_sel;
+	u8 reserved;
+	unsigned type: 4, zero: 1, dpl: 2, p: 1;
+	u16 base1;
+} __attribute__((packed));
+
 /* 8 byte segment descriptor */
 struct desc_struct {
-	union {
-		struct {
-			unsigned int a;
-			unsigned int b;
-		};
-		struct {
-			u16 limit0;
-			u16 base0;
-			unsigned base1: 8, type: 4, s: 1, dpl: 2, p: 1;
-			unsigned limit: 4, avl: 1, l: 1, d: 1, g: 1, base2: 8;
-		};
-	};
+	u16 limit0;
+	u16 base0;
+	unsigned base1: 8, type: 4, s: 1, dpl: 2, p: 1;
+	unsigned limit: 4, avl: 1, l: 1, d: 1, g: 1, base2: 8;
 } __attribute__((packed));
 
 enum {
-- 
1.5.4.3
