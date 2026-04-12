Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F5F37B02A
	for <linux-newbie@vger.kernel.org>; Sun, 12 Apr 2026 13:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775999667; cv=none; b=uMxEGKLTGEjMI88FKeL7kUqf7NQhVyFrHTluo9UtNzS+8rzFAFk6juDr5dJCDM/5oLAZo8R/ZA8FF2aokNp4wZomO4sZCy5viKeJyUYvyIUcXNBRvx//CcARrXQmyqiczrIfjbZh9ohXlxHT/ydrGJPmSivoIqYw6ucp5ZLdn68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775999667; c=relaxed/simple;
	bh=j1QM6C5/qdboHO8RjmvxsYyfwPn1275jnpsdh59qk0g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dlXgSPEdJ4aKSvBaZpLcPXK7P3RSvydSuu0WZkkIcNgDlb/cOAx3AWnJK6yUwmz6kBKODSpqOhsQP2oQzFdX5VonCytfO3c3wAjil8Jnpbw8mJzeLBbq19aUoW8i+vAkAjGm4ZaDPLtGvWkJSojRLU9lruynPJrNpnPtGDIi3LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W6k4XOI9; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W6k4XOI9"
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8d583bfc415so569293985a.2
        for <linux-newbie@vger.kernel.org>; Sun, 12 Apr 2026 06:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775999665; x=1776604465; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:feedback-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vUM1T8dy2g3cicIVPaaXWt3D4gWpPosgX0ORJJ5oUnU=;
        b=W6k4XOI9v8zHReVN7TIfx8a35gKtv5KoNhmbh6AghnQYsvGeHT/PHuQVF29UJgbOVM
         GIJzm+QleTeamIfmcvXlY7FJFY3uzqDbf90VrTQ069OKir5UohWgT5DKvgM1ph0WD2Dn
         3JBAZqeY8eCFiCEbT9R9vbaH1GPpjIuAmse/V9ZOPNKng7Z5dh+lBgN0GmdTKBJHe5o5
         Cv5YvIds8Y8HVFcdnqsHUxijv8851kWl7eZ/jqMFLQa06qs18uMTLLjMgz7BRPIg7NFQ
         KWWk3QLrCFa8mbaKj2lqUzJBJbJQNoGihW0nbHORWo0sZWMtjvBEPVkSkqu06JXIw5ht
         zLFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775999665; x=1776604465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:feedback-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vUM1T8dy2g3cicIVPaaXWt3D4gWpPosgX0ORJJ5oUnU=;
        b=oSRdQHnRxFwr8pZ3moE4kZU7RIvSr2bOLiApsaqz8zse/IeAoQ5n6CWw6yYgrTPnmu
         oazTh8Eg7RFAfi2kTjxCTBOy3jkakrRtGUdFQrv9Nl8bC+9gOG55ddTfXZXPPTstzDHh
         5qcsVAg4nVhyE0wxnsb4NmpJuZ5WGyZ058J95MBsgMKJ4Jr1p4TYqwtEj6CNZlQ4IUi5
         GpTICtqI5Gb1oRU0jf0qN0BkX6ZPu6mlwS2Ly6DwJAN+mFagbFDhtQD2MCn5A50Ionk3
         yqmInz5BTdT+61kred3OjHzQbcu4NhrNFMV8RfisurnTTlvyVoa/8rfCO2NFvjaoXf7G
         PwuA==
X-Gm-Message-State: AOJu0Yz5L9GjjoTEHxqmyoT0EnGdp4geLSjuPkvugsp5mlTOdKWbgKD9
	r1sMFdwa6JUCVs4qGKhyIWim1EfEd0j/tzyKtzytVFALKjriv8qEi4tn5TlDUg==
X-Gm-Gg: AeBDietpt0efg7qacuoW7kYmVPddecwnPfYlQ46XQxhdHsVRFbZ6s8FAQtJqbfR/sZX
	z43pUtDhKHUIA6//gpr3g0tlsXYZ3w83HPLO3ufbq2RKJ0fBTM+4Lo/avMTKELbL6iymCZ8lf53
	dkSHxF0iKDF8rJ1HurH4aj5nL+XJXU4U0935LT0n+hPq1FxrOomULtoIXfmukEHJZCsdkMiD5u5
	N6xwI+d1GUGl6aVpGqVBxr00Smf/nA8vGAv92n7eQTgHvGBP9Rl5QTteqXs3UXwtsteEZKWjIkZ
	tTV4ghJOs+djuJr7mOqr5F+LvDOACGkRl6zw10FumxX23p35NKuV5rPLqdw3pSATGFMGYpzNvLM
	G/7lz55KLGmMIgJHR/K4ipBg3/BxLH8SB54Yj5ZKIsQqh4hqniWbgcIUvUDddZ4NKfjaeUo59G/
	18K9Lx2qSie9FzmhL19u/YTiMz7i4XMiDwSpr2eghPm9DS3swpTrf3hpM1+FOADQAIzkWOtlgZ+
	i+0N1DEd/R4LDdDQlUFpF56
X-Received: by 2002:a05:620a:6914:b0:8cd:8938:f000 with SMTP id af79cd13be357-8ddce3cb18emr1526237585a.28.1775999665305;
        Sun, 12 Apr 2026 06:14:25 -0700 (PDT)
Received: from fauth-a1-smtp.messagingengine.com (fauth-a1-smtp.messagingengine.com. [103.168.172.200])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ddb8d6b859sm633428885a.22.2026.04.12.06.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Apr 2026 06:14:25 -0700 (PDT)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfauth.phl.internal (Postfix) with ESMTP id C53A4F4006F;
	Sun, 12 Apr 2026 09:14:24 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Sun, 12 Apr 2026 09:14:24 -0400
X-ME-Sender: <xms:sJrbaSHIwvDR3T22lwp1r5zCDJ4N6E-OkuoCQNaZZ93MRiS5OLBrGg>
    <xme:sJrbaazT-lDC_gBoyhMsSY447V5yrqG4gaAKuHGDkHMYs1nVs4bKZHnzjCKEN5Wu7
    0OgS8KfOS-5eRViHJT_Y1Zst6TP4AM-tqF_Wq5tbf2XZuklWgcYqj4>
X-ME-Received: <xmr:sJrbaZiwBlSbO9N0FeTuQGv37tq0aRbEUfY3dQW5UkRbTWtn3SNr7e-m_pyJbyJSumciffM0fbnLnaCDrXtAZD4e49u29TqGsxwDLg9D3b9i>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdefheeflecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:sJrbaVxEbE6cZLoxDSfmXS1BmUbLDVq5TtdgsPs7VaPQ23qkUZBefQ>
    <xmx:sJrbacI-teCq91H6T1CeRP8RMaeLFL3Gc7zy-OFFizO0xIs8HaBA6A>
    <xmx:sJrbacSF96TXwSbO5LVFHS4K9JAsrTqYpT8-poeeQECivAwFpkzcRQ>
    <xmx:sJrbaUoWFVYBOtR_rCumjloY4qa_vRHX1mcUqhE_3eD00VS7Or0C1Q>
    <xmx:sJrbaRq6Z7RJHa2hZ7SMi6hRgKr7PyW-1eBElmCxCT78D0F7zaMbrKlM>
Feedback-ID: i444149dd:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 12 Apr 2026 09:14:21 -0400 (EDT)
From: jw910731@gmail.com
To: linux-newbie@vger.kernel.org
Cc: sef1548@gmail.com,
	jw910731 <jw910731@gmail.com>
Subject: [TEST v2 1/1] [WIP] Try compile linux on macOS with the help of nix
Date: Sun, 12 Apr 2026 21:13:58 +0800
Message-ID: <aa6e50c518a1873551235553c49db0428e336314.1775999068.git.jw910731@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <cover.1775999068.git.jw910731@gmail.com>
References: <cover.1775999068.git.jw910731@gmail.com>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: jw910731 <jw910731@gmail.com>

Signed-off-by: Wen-Yuan Wu <jw910731@gmail.com>
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

