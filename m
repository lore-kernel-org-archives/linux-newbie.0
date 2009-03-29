From: Joe Damato <ice799@gmail.com>
Subject: [PATCH 0/2] x86: Remove direct access to internal x86 descriptor fields
Date: Sun, 29 Mar 2009 14:21:40 -0700
Message-ID: <cover.1238361501.git.ice799@gmail.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:from:to:cc:subject
         :date:message-id:x-mailer;
        bh=CiTTCPDi2nOyo188ZeSW2h55QVWUl5s24lbH0beetr4=;
        b=lKQ+gIlaB2EFUZVSXignUBMCU3ac3MwztGGVlPtfoeEnFNL85wmo953KDg7cGIJpKP
         218/eO69sprwUW2qoSJSvPaVx4yjHHmjJAamV2p+FPZuddqu5ktHVd8Cc5aRAi0Xe0Qa
         SVqIL8kZTy0bnnk842emfPoVtoAp+hET2sXJU=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-x86_64@vger.kernel.org, w@1wt.eu, mingo@elte.hu, hpa@zytor.com, jeremy@goop.org, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Joe Damato <ice799@gmail.com>

Hi -

This patch set aims to remove the direct access to the 'a' and 'b' fields of 32-bit x86 descriptors. Static inline getters/setters are provided.

This is a resumbmit of a patch set I submitted several months ago[1]. My last patch set was a bit large, so I've tried to take a smaller bite this time and slowly build the cleanup effort over a series of patch sets.

Any and all comments, suggestions, and questions are welcome.

Thanks,
Joe Damato

[1] http://lkml.org/lkml/2008/10/24/459

---

Joe Damato (2):
  x86: Add getter/setter static inlines for x86 descriptors
  x86: Replace direct access to descriptor fields with getter/setters

 arch/x86/include/asm/desc.h           |   32 ++++++++++++++++++++++++++------
 arch/x86/include/asm/xen/hypercall.h  |    5 +++--
 arch/x86/kernel/tls.c                 |    6 ++++--
 arch/x86/kernel/vmi_32.c              |    3 ++-
 arch/x86/lguest/boot.c                |    2 +-
 arch/x86/math-emu/fpu_system.h        |   20 ++++++++++----------
 drivers/lguest/interrupts_and_traps.c |   25 +++++++++++++------------
 drivers/lguest/segments.c             |   20 ++++++++++++--------
 drivers/pnp/pnpbios/bioscalls.c       |    4 ++--
 9 files changed, 73 insertions(+), 44 deletions(-)

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
