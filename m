Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0D62E5B2A
	for <linux-newbie@vger.kernel.org>; Sun, 12 Apr 2026 11:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775993217; cv=pass; b=QZfyIN25nvU+dZd9+foqHEH+BUvt1Z7QnxTUeRT6uZ+07mK3fueuHAXXEtBovdqN3DU2k2ttWW+vb19jxEe2jFcFqqqZZ7jXyecsvAPs+LoASwl+znC+zg+fBkDUgh9XQTTe+AS/jD3H0TW4/vvDo6RZvsYbJzCAboslAS+nYAs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775993217; c=relaxed/simple;
	bh=o/HB6ue65OtxvrjYsvBKJVSOgMbCtMcw5qxbx/kM4Fw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QoQgScHRCzdfOHwwODUiSsgfRZeSMoiXn1uoDoxiZLkDX07zlY6FyRPtPBCVTH4iWQLpJcUdGGjQpFT9ed+t8r1U0BrR84fzuRckEzIE/ZNxt28nvRqh32Tp2xQz2T4p87S93FIw76Yz0SJPmMca5BMKWlNBvD3JZb1ak7/2img=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ejPZO845; arc=pass smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ejPZO845"
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-43cf5ad500fso2973673f8f.0
        for <linux-newbie@vger.kernel.org>; Sun, 12 Apr 2026 04:26:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775993214; cv=none;
        d=google.com; s=arc-20240605;
        b=gvV8G6whEFn0qPHOwjU3L+iPGhcWFgwzX97QgYmeijpJn4gIxMoZVB8VNKMoLvjpJE
         IdV10P0fQis390/UIVu3C6nhGx5WES2ZbP/6+l9xmzTtpKzytOtr1Pg6MyMAf9HfqEck
         P5fU5EzOZfOUlfT/3F+CUMWCMrdT/rC4Mv8nFrwPi/MxwzgIFhLvi0LQTw4SfsBBv+gg
         qoYLNb6zMPPbdxqoCzpXoYKqO/W9z5aFKTqxLWrh6AUMgJkgjTXQj4/TrZ3FGpKoQD93
         Jug0wccY4MCuKptNacwkgJrI3med9s2x2c1gF9jJw4xGrxiRpdczBpJofAYTmZ5qYbOl
         7LpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=unuD+ljOxp/gtAL/cbpUxBhMrhhiSqd5K4qai7CSNzc=;
        fh=VNkYDaGGj9wEej64B8OD1rbdAJnmVS50H6XN2rIV6OI=;
        b=Uv+8i815yYC/UDlBFuzAXaF7ATfoMeS85aFegwjMYKsfqq8W8jUnarZCtGMyGx0ua+
         jdhwK1t6gEx3+6aWhJ6SEQkV36BqkVgg2Nk8OyKev+fYunKu2UJKJVudjANGjf3ZNJnQ
         X6nmTGXeuOfFVzxzkT8o7RxD8NSzEM51NqEECdppkfgjO/UmceeoYWICYHx0FcywbqqT
         eb4mkOW9RWx39gdXAHTWmTWsOc+IQ17biqofrzHPWJbq83/ft3FaBT7Y7zJb9TvJuMRD
         hVrN6pxm6k/Frwbd7HjgwmpNKRBIUN6+SqF+CnY1Zc6GNpK3wWNAx0iNdK0AAhceDpgn
         Xj0Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775993214; x=1776598014; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=unuD+ljOxp/gtAL/cbpUxBhMrhhiSqd5K4qai7CSNzc=;
        b=ejPZO845GTh+n1WppxYUCBQElbt41LaUkfFhtP2nE+zFp2ZLgT3j4F+fB9Frupwvt+
         TvuNpLiCWy8YI81XC1Qct3fSxxhMRdJkmE0SuK4ih60rCvdfo1p1xBG98BdM9fpDkaFa
         3ti8RcCj8aEdvYVOUiMfJQ1+GkLsOaxCg47fqyU0nQWVIHdlW+WUBETE0DP2/j8ELdGt
         MFh4esEX2Q4yasCE3FEAnGW4/yb7arut25pqjMnaLHFI9poUnpPnfomDSvdPlWPCMjA0
         Pqd1RrwXYZDmiAw0sJeIEaOa+PdDmz7bgBkaDs80wFZ/0HCILwvfu+SaCVDwacUeODMF
         cMWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775993214; x=1776598014;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=unuD+ljOxp/gtAL/cbpUxBhMrhhiSqd5K4qai7CSNzc=;
        b=lBJojmLwCVUmGzmfV4ZuXXddim8XYN+X9hHq08HIc4NyWnvsf8Jx6QcPSGk20euglk
         yeDKcaf1JFXvuUOrA27eNnrvsDj1MDAsEXWtgC32Pt1zcvv3aLbFZR7IHlHc2qzUGCfe
         x0Ab6HIBQRjgiJQnGkO2qw6QAYHlEp1esprGh6NsSD5ovQss6OSs+G3iBasvTt7L2SN1
         WAHwAvgtDcgOSWKoM0Lhgk5dIMKStI+wSH/7UKmq8gJ24At0TKMISTZ1r8XzKBslpE8h
         llHBicWDaUEVpm7dGtqUq8oLxCA+H2W9Xl4riFxBuCzvYQQdTQWKaYydMPEo/lND0tVd
         1p2Q==
X-Gm-Message-State: AOJu0YznFuPwQlkSyd0O2M/UMMMRfIutQVqap//s8Th8LlBpwH6dICFb
	A46Hy61HCY4jZeZlvAwyIGPV8PBppi0HFgdGBQWRZlLiqaJyhA7qeetVD9/OKZ78i8i6zR+rbQT
	tLqYBcwEn6fiiNAm/lyx9wLtR6jb1v4Q=
X-Gm-Gg: AeBDiesJIEU2hzFHt250t3RdsY37EgSjZMN+a5NlL5v5qx0TKU/PvBJndW7fmVSEHoe
	S3RDUmYblAPaVQiJ7+u9OVSfpU13XX0d4YIecHT3K8NuCtySZhIUzMq8BhR0TpohzxjExoRD8Xe
	ZdDQ4pOklgNbv1tKj/To1Sa6cM5sQ8QezPC+IhUjSrtuX/RbQ+hbjMTR5P4cc95gSoglHrLMNk4
	DtsY0ACsyhxFrJUMpTffnVB8XysOkQr8SqOhqLXPPWVsgxmsASnr6nPH/55E2fO8rRhvKBWvdYM
	EeacmrdO
X-Received: by 2002:a05:6000:24c3:b0:43d:77a8:3bb6 with SMTP id
 ffacd0b85a97d-43d77a83df5mr636423f8f.47.1775993214168; Sun, 12 Apr 2026
 04:26:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1775973405.git.jw910731@gmail.com> <aa6e50c518a1873551235553c49db0428e336314.1775973405.git.jw910731@gmail.com>
In-Reply-To: <aa6e50c518a1873551235553c49db0428e336314.1775973405.git.jw910731@gmail.com>
From: Nick Huang <sef1548@gmail.com>
Date: Sun, 12 Apr 2026 19:26:42 +0800
X-Gm-Features: AQROBzB-C4MD9jmoopA3cSDcLF1JGyDlMSrfPdlxGKG8Jp58VMDHeuOA8ifFNMo
Message-ID: <CABZAGRGdadoeq+0a6j62-yEdVAPPtCm0XH6CPtxzwhkFukZXLw@mail.gmail.com>
Subject: Re: [PATCH] [TEST 1/1] [WIP] Try compile linux on macOS with the help
 of nix
To: jw910731@gmail.com
Cc: linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<jw910731@gmail.com> =E6=96=BC 2026=E5=B9=B44=E6=9C=8812=E6=97=A5=E9=80=B1=
=E6=97=A5 =E4=B8=8B=E5=8D=882:13=E5=AF=AB=E9=81=93=EF=BC=9A


>
> From: jw910731 <jw910731@gmail.com>
>
> Signed-off-by: jw910731 <jw910731@gmail.com>
Hi jw910731

The alias "jw910731" cannot be used for the Signed-off-by line because
it violates the Developer's Certificate of Origin (DCO).
According to the DCO, contributions must not be anonymous; the signer
must use their legal name to establish a clear chain of responsibility
and verify their right to submit the code under an open-source license.

--
Regards,
Nick Huang

> ---
>  flake.lock                       | 82 ++++++++++++++++++++++++++++++++
>  flake.nix                        | 43 +++++++++++++++++
>  scripts/Kconfig.include          |  2 +-
>  scripts/install.sh               |  2 +-
>  scripts/macos-include/byteswap.h |  4 ++
>  scripts/macos-include/elf.h      | 24 ++++++++++
>  scripts/macos-include/endian.h   |  8 ++++
>  scripts/mod/file2alias.c         |  3 ++
>  usr/gen_init_cpio.c              |  4 +-
>  9 files changed, 168 insertions(+), 4 deletions(-)
>  create mode 100644 flake.lock
>  create mode 100644 flake.nix
>  create mode 100644 scripts/macos-include/byteswap.h
>  create mode 100644 scripts/macos-include/elf.h
>  create mode 100644 scripts/macos-include/endian.h
>
> diff --git a/flake.lock b/flake.lock
> new file mode 100644
> index 000000000..e6c1f5f67
> --- /dev/null
> +++ b/flake.lock
> @@ -0,0 +1,82 @@
> +{
> +  "nodes": {
> +    "nixpkgs": {
> +      "locked": {
> +        "lastModified": 1772963539,
> +        "narHash": "sha256-9jVDGZnvCckTGdYT53d/EfznygLskyLQXYwJLKMPsZs=
=3D",
> +        "owner": "NixOS",
> +        "repo": "nixpkgs",
> +        "rev": "9dcb002ca1690658be4a04645215baea8b95f31d",
> +        "type": "github"
> +      },
> +      "original": {
> +        "owner": "NixOS",
> +        "ref": "nixos-unstable",
> +        "repo": "nixpkgs",
> +        "type": "github"
> +      }
> +    },
> +    "root": {
> +      "inputs": {
> +        "nixpkgs": "nixpkgs",
> +        "rust-overlay": "rust-overlay",
> +        "utils": "utils"
> +      }
> +    },
> +    "rust-overlay": {
> +      "inputs": {
> +        "nixpkgs": [
> +          "nixpkgs"
> +        ]
> +      },
> +      "locked": {
> +        "lastModified": 1773115373,
> +        "narHash": "sha256-bfK9FJFcQth6f3ydYggS5m0z2NRGF/PY6Y2XgZDJ6pg=
=3D",
> +        "owner": "oxalica",
> +        "repo": "rust-overlay",
> +        "rev": "1924b4672a2b8e4aee6e6652ec2e59a8d3c5648e",
> +        "type": "github"
> +      },
> +      "original": {
> +        "owner": "oxalica",
> +        "repo": "rust-overlay",
> +        "type": "github"
> +      }
> +    },
> +    "systems": {
> +      "locked": {
> +        "lastModified": 1681028828,
> +        "narHash": "sha256-Vy1rq5AaRuLzOxct8nz4T6wlgyUR7zLU309k9mBC768=
=3D",
> +        "owner": "nix-systems",
> +        "repo": "default",
> +        "rev": "da67096a3b9bf56a91d16901293e51ba5b49a27e",
> +        "type": "github"
> +      },
> +      "original": {
> +        "owner": "nix-systems",
> +        "repo": "default",
> +        "type": "github"
> +      }
> +    },
> +    "utils": {
> +      "inputs": {
> +        "systems": "systems"
> +      },
> +      "locked": {
> +        "lastModified": 1731533236,
> +        "narHash": "sha256-l0KFg5HjrsfsO/JpG+r7fRrqm12kzFHyUHqHCVpMMbI=
=3D",
> +        "owner": "numtide",
> +        "repo": "flake-utils",
> +        "rev": "11707dc2f618dd54ca8739b309ec4fc024de578b",
> +        "type": "github"
> +      },
> +      "original": {
> +        "owner": "numtide",
> +        "repo": "flake-utils",
> +        "type": "github"
> +      }
> +    }
> +  },
> +  "root": "root",
> +  "version": 7
> +}
> diff --git a/flake.nix b/flake.nix
> new file mode 100644
> index 000000000..b2199f6eb
> --- /dev/null
> +++ b/flake.nix
> @@ -0,0 +1,43 @@
> +{
> +  inputs =3D {
> +    nixpkgs.url =3D "github:NixOS/nixpkgs/nixos-unstable";
> +    utils.url =3D "github:numtide/flake-utils";
> +    rust-overlay =3D {
> +      url =3D "github:oxalica/rust-overlay";
> +      inputs =3D {
> +        nixpkgs.follows =3D "nixpkgs";
> +      };
> +    };
> +  };
> +  outputs =3D { self, nixpkgs, utils, rust-overlay }: utils.lib.eachDefa=
ultSystem (system:
> +    let
> +      overlays =3D [ (import rust-overlay) ];
> +      pkgs =3D import nixpkgs {
> +        inherit system overlays;
> +      };
> +      pkgsCross =3D pkgs.pkgsCross.aarch64-multiplatform;
> +    in
> +    {
> +      devShell =3D pkgsCross.mkShell {
> +        nativeBuildInputs =3D with pkgsCross; [
> +          gnumake
> +          ncurses
> +          flex
> +          bison
> +          lld
> +          rustc
> +          rust-bindgen
> +          rustfmt
> +          clippy
> +          pahole
> +        ];
> +        buildInputs =3D [];
> +        HOSTCC=3D"${pkgs.lib.getBin pkgs.clang}/bin/clang";
> +        HOSTLD=3D"${pkgs.lib.getBin pkgs.lld}/bin/lld";
> +        HOSTCFLAGS=3D"-I${pkgs.lib.getLib pkgs.libelf}/include -Iscripts=
/macos-include";
> +        NIX_CFLAGS_COMPILE=3D"-march=3Darmv8-a+crypto";
> +        RUST_LIB_SRC =3D "${pkgsCross.rust.packages.stable.rustPlatform.=
rustLibSrc}";
> +      };
> +    }
> +  );
> +}
> \ No newline at end of file
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index 33193ca6e..c3f38006c 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -54,7 +54,7 @@ as-version :=3D $(shell,set -- $(as-info) && echo $2)
>
>  # Get the linker name, version, and error out if it is not supported.
>  ld-info :=3D $(shell,$(srctree)/scripts/ld-version.sh $(LD))
> -$(error-if,$(success,test -z "$(ld-info)"),Sorry$(comma) this linker is =
not supported.)
> +$(error-if,$(success,test -z "$(ld-info)"),Sorry$(comma) this linker $(L=
D) is not supported.)
>  ld-name :=3D $(shell,set -- $(ld-info) && echo $1)
>  ld-version :=3D $(shell,set -- $(ld-info) && echo $2)
>
> diff --git a/scripts/install.sh b/scripts/install.sh

This revision could include a more detailed explanation of why this
change was made.

> index 05d62ac51..b99183bb8 100755
> --- a/scripts/install.sh
> +++ b/scripts/install.sh
> @@ -6,7 +6,7 @@
>  # Adapted from code in arch/i386/boot/Makefile by H. Peter Anvin
>  # Common code factored out by Masahiro Yamada
>
> -set -e
> +set -xe
>
>  # Make sure the files actually exist
>  for file in "${KBUILD_IMAGE}" System.map
> diff --git a/scripts/macos-include/byteswap.h b/scripts/macos-include/byt=
eswap.h
> new file mode 100644
> index 000000000..fd97ed5e1
> --- /dev/null
> +++ b/scripts/macos-include/byteswap.h
> @@ -0,0 +1,4 @@
> +#pragma once
> +#define bswap_16 __builtin_bswap16
> +#define bswap_32 __builtin_bswap32
> +#define bswap_64 __builtin_bswap64
> diff --git a/scripts/macos-include/elf.h b/scripts/macos-include/elf.h
> new file mode 100644
> index 000000000..5d42ed858
> --- /dev/null
> +++ b/scripts/macos-include/elf.h
> @@ -0,0 +1,24 @@
> +#pragma once
> +#include <libelf/gelf.h>
> +
> +#define STT_SPARC_REGISTER 3
> +#define R_386_32 1
> +#define R_386_PC32 2
> +#define R_MIPS_HI16 5
> +#define R_MIPS_LO16 6
> +#define R_MIPS_26 4
> +#define R_MIPS_32 2
> +#define R_ARM_ABS32 2
> +#define R_ARM_REL32 3
> +#define R_ARM_PC24 1
> +#define R_ARM_CALL 28
> +#define R_ARM_JUMP24 29
> +#define R_ARM_THM_JUMP24 30
> +#define R_ARM_THM_PC22 10
> +#define R_ARM_MOVW_ABS_NC 43
> +#define R_ARM_MOVT_ABS 44
> +#define R_ARM_THM_MOVW_ABS_NC 47
> +#define R_ARM_THM_MOVT_ABS 48
> +#define R_ARM_THM_JUMP19 51
> +#define R_AARCH64_ABS64 257
> +#define R_AARCH64_PREL64 260
> diff --git a/scripts/macos-include/endian.h b/scripts/macos-include/endia=
n.h
> new file mode 100644
> index 000000000..6a27c4a0b
> --- /dev/null
> +++ b/scripts/macos-include/endian.h
> @@ -0,0 +1,8 @@
> +#pragma once
> +#include <machine/endian.h>
> +#include <libkern/OSByteOrder.h>
> +
> +#define le16toh(x) OSSwapLittleToHostInt16(x)
> +#define le32toh(x) OSSwapLittleToHostInt32(x)
> +#define le64toh(x) OSSwapLittleToHostInt64(x)
> +#define EM_AARCH64 183
> diff --git a/scripts/mod/file2alias.c b/scripts/mod/file2alias.c
> index 4e99393a3..98aee9a4d 100644
> --- a/scripts/mod/file2alias.c
> +++ b/scripts/mod/file2alias.c
> @@ -16,7 +16,10 @@
>  #include "list.h"
>  #include "xalloc.h"
>
> +#define _UUID_T
> +#define uuid_t int
>  #include "modpost.h"
> +#undef uuid_t
>  #include "devicetable-offsets.h"
>
>  /* We use the ELF typedefs for kernel_ulong_t but bite the bullet and
> diff --git a/usr/gen_init_cpio.c b/usr/gen_init_cpio.c
> index b7296edc6..809602912 100644
> --- a/usr/gen_init_cpio.c
> +++ b/usr/gen_init_cpio.c
> @@ -457,7 +457,7 @@ static int cpio_mkfile(const char *name, const char *=
location,
>                         goto error;
>
>                 if (size) {
> -                       this_read =3D copy_file_range(file, NULL, outfd, =
NULL, size, 0);
> +                       // this_read =3D copy_file_range(file, NULL, outf=
d, NULL, size, 0);
>                         if (this_read > 0) {
>                                 if (this_read > size)
>                                         goto error;
> @@ -674,7 +674,7 @@ int main (int argc, char *argv[])
>                         break;
>                 case 'o':
>                         outfd =3D open(optarg,
> -                                    O_WRONLY | O_CREAT | O_LARGEFILE | O=
_TRUNC,
> +                                    O_WRONLY | O_CREAT | O_TRUNC,
>                                      0600);
>                         if (outfd < 0) {
>                                 fprintf(stderr, "failed to open %s\n", op=
targ);
> --
> 2.51.2
>
