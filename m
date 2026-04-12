Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45415212FAD
	for <linux-newbie@vger.kernel.org>; Sun, 12 Apr 2026 06:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775974395; cv=none; b=RbEKU19uKF6nn91nWt7QNOCqD6bLVaquYpPn3PG4k6uGuts8jwCkwmLZRdLlTWjz89XSQvd9OIOZVClfkRloauPDqqyfrQt8O8sh6Tnrctj0NqwZzuXKM0dw2SSnbYYxb2zDRCpR0X18Vbk2qFfrsJcpWTx8M0AYMqE8h9LEUhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775974395; c=relaxed/simple;
	bh=vxlEpVR6BccxYfReaowX3Tj7BXUCUjezEWP/eHwQQ58=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dvcWBkXol4X9maGms7OgQ20EUwCcF4+ITEmbo20yrekdh5+3Pdw3p7L9P2FpJdDuRRIHmvLyYLT77dzKJW0BKujd9BWe0Aaiw1MSmEZ74fqvDsO5fe84W/hRhqEjZArjqkj1YEcLVcJRh7yGr4GwpYcQ9hqNj17aHIoAliFon4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YxXIH9GE; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YxXIH9GE"
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8d560ede296so395665685a.0
        for <linux-newbie@vger.kernel.org>; Sat, 11 Apr 2026 23:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775974393; x=1776579193; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:feedback-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vj7DUnWS2GJAEvqjPEIkLXRX0D/Dkx+CS0EScE73R4c=;
        b=YxXIH9GEgxRByDotNv/phPmhZm/lLd0uBNBzrBczZKE+GqwIly+BolnN18P7aVgAUT
         ztktZM90bwaTicRXylzMlMa09rigsfzjJvlJSrAdJ+UuSWKvv1xJ7vzzmlVkPTurVCqv
         ACFYPwx8zZH54ZjlADLmyv2MiWMdJbYr6X9hsNmI+ahc7Qs5rb7F67hdgUdagHik0ZMg
         4fiE0ouBJ/FBudKyxeYFR9XOxqqYd9cPOjVx+6R1trezfelpRHiFZCRepMZRdzoRI2B6
         1LP+4PwJRc0n5HY7z4cRkoW23kgdFjNhpEEeIiMGKr+DTvzrYgBgy2C5pIb7+x03gOyM
         6Pwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775974393; x=1776579193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:feedback-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vj7DUnWS2GJAEvqjPEIkLXRX0D/Dkx+CS0EScE73R4c=;
        b=gj/mHldy3ITsdn/WIQ17aJT10ElAMdk0XCSFqT3yMfprAcvGg3L37plfqW4dn9cwRA
         dtyLzd3GobBNf+/3cARCCYmfQoFSHu64LNwbXbGlCKQDZf8/XZKPaJkXtxSSIKpflMbk
         kQj6O/5uc+xJdCtoBPgwX9r/fwJXt5OYjpkKGa43u+MFri+FOxes/sy6ZC11xENjOpPH
         XqDQBkKWU14OSzWjn2wWfYPAcb4LYD/7QoazyQRSlOcpXdF0tkl7wOJ4yetroO5qarO4
         ML7E0BvWF2IKbDQOEXtHrIu8fHxXIDenz65t77Urkr++7ROdkLm7HpDju0c6xVEQzZDP
         ZDBQ==
X-Gm-Message-State: AOJu0Yx7A1WcbapJam5Cx4jgEHfaKuLzlnx1+3FODgyaNNz9ue+aWRJJ
	UFj2khzgvDF0/WDjyquSJo3N2ZhqJNqJZEAw8i4Sw6KKOzWmjTbUX7vJ
X-Gm-Gg: AeBDiet2fKFIzaV3UxDFCs7oRpzYd4wVLnR1Q/UhnmJNFQgl51fouZ0Ctxn42jD2iGP
	6sJdPrOo0yX44jS6BFQZF2KC+PLmB6OYeE7rhNrY5Mvlg4tWR1XSsRUt++QHwpUX7bg3rcSk3JS
	YHoa3mtITA8sKvJBX/Y38maaAZbjBq+UY0xCq+IpxC1A62sayL9XeeKNzCGJxP5jQm/UbKfbhAa
	/gC/Q5ZYDsPvGnegHgqf0JrLKROgCar2O9QpnrHS/DQCIwwnne10pPpDLJz61k237VP9mNQ5hxI
	VHTM3jWoezWngv2HM0IafzhcuvpLfQ/Q8dlCW/mPSseNWu9c13IjMhiYdRACxckHQbtRhkLb+hk
	bJvBMSuRH4FCmsUfHtiREqL8aahry4NKP1AawnDBNasKeY61M+yB0nxDi6Hi6LfVPfk9CvXQ3tg
	IhPlWev05KsUNNIS0qC2QPw9vpybJpWhqLMrZ9yG90ktrHGQrqzCUgr/e8lOjvslNMNjjp/vcez
	u2SaeL2cPX8Jg==
X-Received: by 2002:a05:620a:2995:b0:8cf:d5f3:9a1a with SMTP id af79cd13be357-8ddcfca7aa9mr1353437085a.51.1775974393140;
        Sat, 11 Apr 2026 23:13:13 -0700 (PDT)
Received: from fauth-a1-smtp.messagingengine.com (fauth-a1-smtp.messagingengine.com. [103.168.172.200])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8e0a6cc0f87sm88810285a.11.2026.04.11.23.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 23:13:12 -0700 (PDT)
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfauth.phl.internal (Postfix) with ESMTP id B1E4BF4007A;
	Sun, 12 Apr 2026 02:13:12 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Sun, 12 Apr 2026 02:13:12 -0400
X-ME-Sender: <xms:-DfbaUaBqqEN1mK8glORts3RIGVCuaRsroivXwH7fW5EpnUnuB44ug>
    <xme:-DfbaW3mF5jlUqwnsOHkPzAQyXrl92WME6CKEQuwQtG2pq-rIarM-GH8waIeWNg_5
    xlvM4fgEnvDwzq94pq9F8uwblHPIaab-j0bls9I6QNKS7NGRcBsMtWA>
X-ME-Received: <xmr:-DfbacUSLWL6JDB5LxFuZo1A77KUt-_NXGTfy9kXBdwOgajJ9tiiUtB5_BDWscfdCUoMe-FhMXUwj5xiwC6lv5qifbLKFftOE1SbWWe8oNLs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdefgeehfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
    dttdenucfhrhhomhepjhifledutdejfedusehgmhgrihhlrdgtohhmnecuggftrfgrthht
    vghrnhepleeugfeigefhfeelvdehiefgjeeileekhfekgfeiheekieettefhffevveeuhe
    dunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepjhif
    ledutdejfeduodhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqddugedujeekfe
    eggeekqdeftdefudehjeehvddqjhifledutdejfedupeepghhmrghilhdrtghomhesfhgr
    shhtmhgrihhlrdhtfidpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpd
    hrtghpthhtoheplhhinhhugidqnhgvfigsihgvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
    pdhrtghpthhtohepshgvfhduheegkeesghhmrghilhdrtghomhdprhgtphhtthhopehjfi
    eluddtjeefudesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:-DfbaYV_dFhNh-N-20GhUbUZdx9DFyhYKdxAO3ORZCkxJo5a-G9FDw>
    <xmx:-DfbaTdFKaN1xSyCaginFJihugnIkOOiuspX_9UPulcrwCrzU6F3MQ>
    <xmx:-DfbaZVjBxg-Zkf-VUBJTcMU1Azw5uUkYx5h164gC0bugyGii_M_Kg>
    <xmx:-DfbaUdOzE-K-uoA9sMZDFnrfRzoQpn5E46Z0UQVfXII7VZkZeUPhQ>
    <xmx:-DfbadPe86YQbTzwBTiv1YYxitL9OcbJ6ZyoM66vafXuGMzZtt2EePvl>
Feedback-ID: i444149dd:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 12 Apr 2026 02:13:11 -0400 (EDT)
From: jw910731@gmail.com
To: linux-newbie@vger.kernel.org
Cc: sef1548@gmail.com,
	jw910731 <jw910731@gmail.com>
Subject: [PATCH] [TEST 1/1] [WIP] Try compile linux on macOS with the help of nix
Date: Sun, 12 Apr 2026 14:12:55 +0800
Message-ID: <aa6e50c518a1873551235553c49db0428e336314.1775973405.git.jw910731@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <cover.1775973405.git.jw910731@gmail.com>
References: <cover.1775973405.git.jw910731@gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: jw910731 <jw910731@gmail.com>

Signed-off-by: jw910731 <jw910731@gmail.com>
---
 flake.lock                       | 82 ++++++++++++++++++++++++++++++++
 flake.nix                        | 43 +++++++++++++++++
 scripts/Kconfig.include          |  2 +-
 scripts/install.sh               |  2 +-
 scripts/macos-include/byteswap.h |  4 ++
 scripts/macos-include/elf.h      | 24 ++++++++++
 scripts/macos-include/endian.h   |  8 ++++
 scripts/mod/file2alias.c         |  3 ++
 usr/gen_init_cpio.c              |  4 +-
 9 files changed, 168 insertions(+), 4 deletions(-)
 create mode 100644 flake.lock
 create mode 100644 flake.nix
 create mode 100644 scripts/macos-include/byteswap.h
 create mode 100644 scripts/macos-include/elf.h
 create mode 100644 scripts/macos-include/endian.h

diff --git a/flake.lock b/flake.lock
new file mode 100644
index 000000000..e6c1f5f67
--- /dev/null
+++ b/flake.lock
@@ -0,0 +1,82 @@
+{
+  "nodes": {
+    "nixpkgs": {
+      "locked": {
+        "lastModified": 1772963539,
+        "narHash": "sha256-9jVDGZnvCckTGdYT53d/EfznygLskyLQXYwJLKMPsZs=",
+        "owner": "NixOS",
+        "repo": "nixpkgs",
+        "rev": "9dcb002ca1690658be4a04645215baea8b95f31d",
+        "type": "github"
+      },
+      "original": {
+        "owner": "NixOS",
+        "ref": "nixos-unstable",
+        "repo": "nixpkgs",
+        "type": "github"
+      }
+    },
+    "root": {
+      "inputs": {
+        "nixpkgs": "nixpkgs",
+        "rust-overlay": "rust-overlay",
+        "utils": "utils"
+      }
+    },
+    "rust-overlay": {
+      "inputs": {
+        "nixpkgs": [
+          "nixpkgs"
+        ]
+      },
+      "locked": {
+        "lastModified": 1773115373,
+        "narHash": "sha256-bfK9FJFcQth6f3ydYggS5m0z2NRGF/PY6Y2XgZDJ6pg=",
+        "owner": "oxalica",
+        "repo": "rust-overlay",
+        "rev": "1924b4672a2b8e4aee6e6652ec2e59a8d3c5648e",
+        "type": "github"
+      },
+      "original": {
+        "owner": "oxalica",
+        "repo": "rust-overlay",
+        "type": "github"
+      }
+    },
+    "systems": {
+      "locked": {
+        "lastModified": 1681028828,
+        "narHash": "sha256-Vy1rq5AaRuLzOxct8nz4T6wlgyUR7zLU309k9mBC768=",
+        "owner": "nix-systems",
+        "repo": "default",
+        "rev": "da67096a3b9bf56a91d16901293e51ba5b49a27e",
+        "type": "github"
+      },
+      "original": {
+        "owner": "nix-systems",
+        "repo": "default",
+        "type": "github"
+      }
+    },
+    "utils": {
+      "inputs": {
+        "systems": "systems"
+      },
+      "locked": {
+        "lastModified": 1731533236,
+        "narHash": "sha256-l0KFg5HjrsfsO/JpG+r7fRrqm12kzFHyUHqHCVpMMbI=",
+        "owner": "numtide",
+        "repo": "flake-utils",
+        "rev": "11707dc2f618dd54ca8739b309ec4fc024de578b",
+        "type": "github"
+      },
+      "original": {
+        "owner": "numtide",
+        "repo": "flake-utils",
+        "type": "github"
+      }
+    }
+  },
+  "root": "root",
+  "version": 7
+}
diff --git a/flake.nix b/flake.nix
new file mode 100644
index 000000000..b2199f6eb
--- /dev/null
+++ b/flake.nix
@@ -0,0 +1,43 @@
+{
+  inputs = {
+    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
+    utils.url = "github:numtide/flake-utils";
+    rust-overlay = {
+      url = "github:oxalica/rust-overlay";
+      inputs = {
+        nixpkgs.follows = "nixpkgs";
+      };
+    };
+  };
+  outputs = { self, nixpkgs, utils, rust-overlay }: utils.lib.eachDefaultSystem (system:
+    let
+      overlays = [ (import rust-overlay) ];
+      pkgs = import nixpkgs {
+        inherit system overlays;
+      };
+      pkgsCross = pkgs.pkgsCross.aarch64-multiplatform;
+    in
+    {
+      devShell = pkgsCross.mkShell {
+        nativeBuildInputs = with pkgsCross; [
+          gnumake
+          ncurses
+          flex
+          bison
+          lld
+          rustc 
+          rust-bindgen
+          rustfmt
+          clippy
+          pahole
+        ];
+        buildInputs = [];
+        HOSTCC="${pkgs.lib.getBin pkgs.clang}/bin/clang";
+        HOSTLD="${pkgs.lib.getBin pkgs.lld}/bin/lld";
+        HOSTCFLAGS="-I${pkgs.lib.getLib pkgs.libelf}/include -Iscripts/macos-include";
+        NIX_CFLAGS_COMPILE="-march=armv8-a+crypto";
+        RUST_LIB_SRC = "${pkgsCross.rust.packages.stable.rustPlatform.rustLibSrc}";
+      };
+    }
+  );
+}
\ No newline at end of file
diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 33193ca6e..c3f38006c 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -54,7 +54,7 @@ as-version := $(shell,set -- $(as-info) && echo $2)
 
 # Get the linker name, version, and error out if it is not supported.
 ld-info := $(shell,$(srctree)/scripts/ld-version.sh $(LD))
-$(error-if,$(success,test -z "$(ld-info)"),Sorry$(comma) this linker is not supported.)
+$(error-if,$(success,test -z "$(ld-info)"),Sorry$(comma) this linker $(LD) is not supported.)
 ld-name := $(shell,set -- $(ld-info) && echo $1)
 ld-version := $(shell,set -- $(ld-info) && echo $2)
 
diff --git a/scripts/install.sh b/scripts/install.sh
index 05d62ac51..b99183bb8 100755
--- a/scripts/install.sh
+++ b/scripts/install.sh
@@ -6,7 +6,7 @@
 # Adapted from code in arch/i386/boot/Makefile by H. Peter Anvin
 # Common code factored out by Masahiro Yamada
 
-set -e
+set -xe
 
 # Make sure the files actually exist
 for file in "${KBUILD_IMAGE}" System.map
diff --git a/scripts/macos-include/byteswap.h b/scripts/macos-include/byteswap.h
new file mode 100644
index 000000000..fd97ed5e1
--- /dev/null
+++ b/scripts/macos-include/byteswap.h
@@ -0,0 +1,4 @@
+#pragma once
+#define bswap_16 __builtin_bswap16
+#define bswap_32 __builtin_bswap32
+#define bswap_64 __builtin_bswap64
diff --git a/scripts/macos-include/elf.h b/scripts/macos-include/elf.h
new file mode 100644
index 000000000..5d42ed858
--- /dev/null
+++ b/scripts/macos-include/elf.h
@@ -0,0 +1,24 @@
+#pragma once
+#include <libelf/gelf.h>
+
+#define STT_SPARC_REGISTER 3
+#define R_386_32 1
+#define R_386_PC32 2
+#define R_MIPS_HI16 5
+#define R_MIPS_LO16 6
+#define R_MIPS_26 4
+#define R_MIPS_32 2
+#define R_ARM_ABS32 2
+#define R_ARM_REL32 3
+#define R_ARM_PC24 1
+#define R_ARM_CALL 28
+#define R_ARM_JUMP24 29
+#define R_ARM_THM_JUMP24 30
+#define R_ARM_THM_PC22 10
+#define R_ARM_MOVW_ABS_NC 43
+#define R_ARM_MOVT_ABS 44
+#define R_ARM_THM_MOVW_ABS_NC 47
+#define R_ARM_THM_MOVT_ABS 48
+#define R_ARM_THM_JUMP19 51
+#define R_AARCH64_ABS64 257
+#define R_AARCH64_PREL64 260
diff --git a/scripts/macos-include/endian.h b/scripts/macos-include/endian.h
new file mode 100644
index 000000000..6a27c4a0b
--- /dev/null
+++ b/scripts/macos-include/endian.h
@@ -0,0 +1,8 @@
+#pragma once
+#include <machine/endian.h>
+#include <libkern/OSByteOrder.h>
+
+#define le16toh(x) OSSwapLittleToHostInt16(x)
+#define le32toh(x) OSSwapLittleToHostInt32(x)
+#define le64toh(x) OSSwapLittleToHostInt64(x)
+#define EM_AARCH64 183
diff --git a/scripts/mod/file2alias.c b/scripts/mod/file2alias.c
index 4e99393a3..98aee9a4d 100644
--- a/scripts/mod/file2alias.c
+++ b/scripts/mod/file2alias.c
@@ -16,7 +16,10 @@
 #include "list.h"
 #include "xalloc.h"
 
+#define _UUID_T
+#define uuid_t int
 #include "modpost.h"
+#undef uuid_t
 #include "devicetable-offsets.h"
 
 /* We use the ELF typedefs for kernel_ulong_t but bite the bullet and
diff --git a/usr/gen_init_cpio.c b/usr/gen_init_cpio.c
index b7296edc6..809602912 100644
--- a/usr/gen_init_cpio.c
+++ b/usr/gen_init_cpio.c
@@ -457,7 +457,7 @@ static int cpio_mkfile(const char *name, const char *location,
 			goto error;
 
 		if (size) {
-			this_read = copy_file_range(file, NULL, outfd, NULL, size, 0);
+			// this_read = copy_file_range(file, NULL, outfd, NULL, size, 0);
 			if (this_read > 0) {
 				if (this_read > size)
 					goto error;
@@ -674,7 +674,7 @@ int main (int argc, char *argv[])
 			break;
 		case 'o':
 			outfd = open(optarg,
-				     O_WRONLY | O_CREAT | O_LARGEFILE | O_TRUNC,
+				     O_WRONLY | O_CREAT | O_TRUNC,
 				     0600);
 			if (outfd < 0) {
 				fprintf(stderr, "failed to open %s\n", optarg);
-- 
2.51.2

