From: se iro <seiro22@mailfence.com>
Subject: rust lang leaked info and kernel mods
Date: Sat, 3 Apr 2021 17:30:20 +0200 (CEST)
Message-ID: <124906843.593398.1617463820743@ichabod.co-bxl>
Reply-To: se iro <seiro22@mailfence.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1617463824;
        s=20210208-e7xh; d=mailfence.com; i=seiro22@mailfence.com;
        h=Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Subject:Reply-To:From:To;
        l=693; bh=fiMF+hvCBTL1ItsND0rT6AKiiVpTzaZr4MHv+rDIPn4=;
        b=chLVjM6PZqpQYFt58KdtmaWXLlLwwtFMtL/nkFhD1zGEuj/IdOlgj9rJFXTfilht
        Z8yQpTh4mBHbCbv6yFzcBiGBY3D9RcNqV0ycVcJlzYuSdIc1bHvbNtJGxhuC7Fk8sx0
        yyyfliO9J5nQ93fUvPDMFkGlibcpF5CZTpOAVdXDb1bk+9Qd+CK5/9lCx+N16ksAWKv
        hoYtZ24UmV+hSCy0iI2uQMsKRttBu6/MjYCu2/REGJ0aiEEVyuMK+PqnCC4Vuxt96oP
        huxKcxmkplWcgha/j2i/JWxNWEZfA6QF0hufUuhQfWAIQKTT6JOaNeEzSvE6kZRsE+r
        p9sC7Q0T5g==
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

saw post on reddit and github issues where rust compiler adds username and systems paths/info to **release** mode compile bins. also its pkg mgr cargo does the same with registry paths. otherwise its extra strings bloating output that not needed and strip command doesnt work. also not working is compiler opts described

does this impact chat of rust kernel modules in linux?

ref links (maybe more too):

https://www.reddit.com/r/rust/comments/mfax64/remove_username_from_binary_for_privacy/
https://github.com/rust-lang/rust/issues/40374
https://github.com/rust-lang/rust/issues/40552
https://github.com/rust-lang/rust/issues/75263
https://github.com/rust-lang/cargo/issues/5505
