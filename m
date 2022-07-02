From: Alexander Grund <theflamefire89@gmail.com>
Subject: [GIT 4.9] Backport of LSM changes - Seeking advice
Date: Sat, 2 Jul 2022 13:16:29 +0200
Message-ID: <CAJr5db9KJzect=B9ouD-kDr3cfg043dD=V96MNcic6u860nfQg@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=T0CAmOMUrd2gEfPThWTX0dWj5YjgECpcKQyOYtCuv94=;
        b=lJKXPm0QeyiCTxEXbY6p5cMSuZobjt2PTy+v7teXS/yLGVuSFKRO5NT9tL5Os+mt6P
         yzZVag8N1VtCNJURwu60TruUV5zA0ZROpABBFXFIZAyvHYI8uYyLZ0hdAes4Gv6QClQT
         k9aA4OsK3R4HcMbdhfCK1pasftAbmZa/l7iEOCTar+cwneZTErpUkvDA86V9SbL5egU2
         1WY9PokdK9Bl2RZwlQDRQthS1jYCVwHJwQlZfaX7g9zqasoA0Nu+b4BclbyexwefuQ1a
         Db0ZriPotL/OLIiZMEkrBI4aNzzzZo1gW+KRwmWDHmbklWa7rCiy2957r3bEuWHffzzL
         /i6Q==
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I want to have some changes present in mainline and 4.14 integrated
into 4.9 from which it will go into CIP maintained 4.4 SLTS.
I'm not sure how e.g. the commit messages need to look like, for now I
basically just cherry-picked the changes keeping author and commit
message intact.

- Shall I add a line "commit <sha> upstream." to each commit?
- Would that go above or below the description or fully replace it?
- Shall I keep existing Signed-off-by, Acked-by,Cc etc. tags? Or which
should be removed?
- Shall I sign off each commit too even though I didn't really modify it?

Below is the message I'd send to the stable ML. I guess that is correct?

Thanks a lot!
Alexander Grund

The following changes since commit 4ffa4be5a14beeb008bd2b4fbc6812
22bfec90c7:

  Linux 4.9.320 (2022-06-25 11:45:20 +0200)

are available in the Git repository at:

  https://github.com/Flamefire/android_kernel_sony_msm8998.git
lsm_hooks_backport_4.9

for you to fetch changes up to e3369457fed5a330a2024a94dc30c781e0ea4f6f:

  LSM: Initialize security_hook_heads upon registration. (2022-07-02
12:53:47 +0200)

----------------------------------------------------------------
Andreas Gruenbacher (4):
      proc: Pass file mode to proc_pid_make_inode
      selinux: Minor cleanups
      selinux: Clean up initialization of isec->sclass
      selinux: Convert isec->lock into a spinlock

Casey Schaufler (1):
      LSM: Add /sys/kernel/security/lsm

James Morris (2):
      security: introduce CONFIG_SECURITY_WRITABLE_HOOKS
      security: mark LSM hooks as __ro_after_init

Ondrej Mosnacek (1):
      selinux: drop super_block backpointer from superblock_security_struct

Paul Moore (2):
      selinux: fix inode_doinit_with_dentry() LABEL_INVALID error handling
      lsm,selinux: pass flowi_common instead of flowi to the LSM hooks

Stephen Smalley (2):
      prlimit,security,selinux: add a security hook for prlimit
      security,selinux,smack: kill security_task_wait hook

Tetsuo Handa (1):
      LSM: Initialize security_hook_heads upon registration.

Tianyue Ren (1):
      selinux: fix error initialization in inode_doinit_with_dentry()

bauen1 (1):
      selinux: allow dontauditx and auditallowx rules to take effect
without allowx
