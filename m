From: Joe Damato <ice799@gmail.com>
Subject: [PATCH 1/2] x86: Add getter/setter static inlines for x86 descriptors
Date: Sun, 29 Mar 2009 14:21:41 -0700
Message-ID: <76c37743d20e5737eadc747cbdddbc2beb11f074.1238361501.git.ice799@gmail.com>
References: <cover.1238361501.git.ice799@gmail.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:from:to:cc:subject
         :date:message-id:x-mailer:in-reply-to:references:in-reply-to
         :references;
        bh=ltAFOupSzLn8d4E6fhun3/UQjFqrOwJgCAVAgb9SBE8=;
        b=GaEK7UIfq7MWQrud1L2F/BZjWjHyud0l3Cg66AGJo9m+AWQ0AzNgTXLsr7I1/dpmXB
         MTxRaaY4Qog4bd1zGIW24a9pra5EwJZhAaMCOMDO1T6gR8/6JxKezuj/+0ty9m2iOP4t
         3l2peI3klz53sE6LxbLNf8o/Sm60wL4uIrQEY=
In-Reply-To: <cover.1238361501.git.ice799@gmail.com>
In-Reply-To: <cover.1238361501.git.ice799@gmail.com>
References: <cover.1238361501.git.ice799@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-x86_64@vger.kernel.org, w@1wt.eu, mingo@elte.hu, hpa@zytor.com, jeremy@goop.org, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Joe Damato <ice799@gmail.com>

Static inline getters/setters have been provided to encourage consumers not to touch the internals of 32bit x86 descriptors directly.

Signed-off-by: Joe Damato <ice799@gmail.com>
---
 arch/x86/include/asm/desc.h |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)

diff --git a/arch/x86/include/asm/desc.h b/arch/x86/include/asm/desc.h
index dc27705..c62cf93 100644
--- a/arch/x86/include/asm/desc.h
+++ b/arch/x86/include/asm/desc.h
@@ -44,6 +44,26 @@ static inline struct desc_struct *get_cpu_gdt_table(unsigned int cpu)
 	return per_cpu(gdt_page, cpu).gdt;
 }
 
+static inline void desc_set_lo(struct desc_struct *d, unsigned int lo)
+{
+	d->a = lo;
+}
+
+static inline void desc_set_hi(struct desc_struct *d, unsigned int hi)
+{
+	d->b = hi;
+}
+
+static inline unsigned int desc_get_lo(const struct desc_struct *d)
+{
+	return d->a;
+}
+
+static inline unsigned int desc_get_hi(const struct desc_struct *d)
+{
+	return d->b;
+}
+
 #ifdef CONFIG_X86_64
 
 static inline void pack_gate(gate_desc *gate, unsigned type, unsigned long func,
-- 
1.6.2

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
